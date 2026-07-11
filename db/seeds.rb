# This file should ensure the existence of records required to run the application
# in every environment in which it's expected to run.
#
# This is especially important for records that other records depend on,
# records that serve as defaults, or records that must always exist for
# the application to function properly.
#
# To run this file, execute:
#
#   bin/rails db:seed
#

puts "Seeding users..."
User.destroy_all

admin = User.create!(
  email: ENV['ADMIN_EMAIL'] || 'admin@example.com',
  password: ENV['ADMIN_PASSWORD'] || SecureRandom.random_bytes(24),
  password_confirmation: ENV['ADMIN_PASSWORD'] || SecureRandom.random_bytes(24),
  admin: true
)
puts "✓ Created admin user: #{admin.email}"
