# This migration comes from globalize_spree (originally 20101107185551)
class AddGlobalizeToTaxonsGlobalizeSpree < ActiveRecord::Migration
  def self.up
    #Spree::Taxon.create_translation_table! :name => :string, :description => :text
    
    # save old values into brand new translations table
    Taxon.migrate_translated_fields
  end

  def self.down
    Spree::Taxon.drop_translation_table!
  end
end
