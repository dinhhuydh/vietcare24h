# Configure Spree Preferences
# 
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do: 
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  #config.site_name = "VietCare24h"
  config.default_locale = 'vn'
  config.logo = 'store/vietcare24h_logo.jpg'
  config.admin_interface_logo = 'admin/admin_logo.jpg'

  config.use_s3 = true
  config.s3_bucket = 'dh_vietcare24h'
  config.s3_access_key = ENV['S3_ACCESS_KEY']
  config.s3_secret = ENV['S3_SECRET'] 
end

Spree.user_class = "Spree::User"

class Product < Spree::Product
end

class Taxon < Spree::Taxon
end

Spree::Page.class_eval do
  translates :title, :body
  
  extend Globalize::Migratable
end

Spree::Product.class_eval do
  translates :name, :description
  attr_accessible :show_price 

  def display_price
    if show_price
      Spree::Money.new(price).to_s
    else
      ""
    end
  end
  
  extend Globalize::Migratable
end
