class ChangeProductPriceLimit < ActiveRecord::Migration
  def up
    change_column :spree_variants, :price, :decimal, :precision => 15, :scale => 0
    change_column :spree_variants, :cost_price, :decimal, :precision => 15, :scale => 0
  end

  def down
    change_column :spree_variants, :price, :decimal, :precision => 8, :scale => 2
    change_column :spree_variants, :cost_price, :decimal, :precision => 8, :scale => 2
  end
end
