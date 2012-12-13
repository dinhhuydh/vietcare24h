# This migration comes from globalize_spree (originally 20101107175511)
class AddGlobalizeToProductsGlobalizeSpree < ActiveRecord::Migration
  def self.up
    #Spree::Product.create_translation_table! :name => :string, :description => :text
    
    # save old values into brand new translations table
    Spree::Product.migrate_translated_fields
  end

  def self.down
    Spree::Product.drop_translation_table!
  end
end
