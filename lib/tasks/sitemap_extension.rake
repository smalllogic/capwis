namespace :sitemap do
  desc "Refresh sitemap"
  task refresh: :environment do
    Rake::Task["sitemap:refresh:no_ping"].invoke
  end
end
