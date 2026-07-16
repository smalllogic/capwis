class GeocodeLoginLogJob < ApplicationJob
  queue_as :default

  def perform(login_log)
    return if login_log.ip_address.blank?
    return if login_log.ip_address == '127.0.0.1' || login_log.ip_address == '::1'

    begin
      require 'net/http'
      require 'json'
      
      url = URI("http://ip-api.com/json/#{login_log.ip_address}?fields=status,message,country,regionName,city")
      response = Net::HTTP.get(url)
      data = JSON.parse(response)

      if data['status'] == 'success'
        login_log.update_columns(
          country:  data['country'],
          province: data['regionName'],
          city:     data['city']
        )
      end
    rescue => e
      Rails.logger.error "IP Geocode Job Error for LoginLog #{login_log.id}: #{e.message}"
    end
  end
end
