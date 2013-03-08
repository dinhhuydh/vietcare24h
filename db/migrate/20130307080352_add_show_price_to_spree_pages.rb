class AddShowPriceToSpreePages < ActiveRecord::Migration
  def change
    add_column :spree_products, :show_price, :boolean, :default => true
  end
end
