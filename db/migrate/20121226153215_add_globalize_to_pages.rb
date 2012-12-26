class AddGlobalizeToPages < ActiveRecord::Migration
  def self.up
    Spree::Page.create_translation_table! :title => :string, :body => :text

    Spree::Page.migrate_translated_fields
  end

  def self.down
    Spree::Page.drop_translation_table!
  end
end
