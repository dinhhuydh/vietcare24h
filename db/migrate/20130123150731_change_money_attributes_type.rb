class ChangeMoneyAttributesType < ActiveRecord::Migration
  def up
    change_column :spree_adjustments, :amount, :decimal, :precision => 15, :scale => 0
    change_column :spree_line_items, :price, :decimal, :precision => 15, :scale => 0, :default => 0, :null => false

    change_column :spree_orders, :item_total, :decimal, :precision => 15, :scale => 0, :default => 0, :null => false
    change_column :spree_orders, :total, :decimal, :precision => 15, :scale => 0, :default => 0, :null => false
    change_column :spree_orders, :adjustment_total, :decimal, :precision => 15, :scale => 0, :default => 0, :null => false
    change_column :spree_orders, :payment_total, :decimal, :precision => 15, :scale => 0, :default => 0

    change_column :spree_payments, :amount, :decimal, :precision => 15, :scale => 0, :default => 0, :null => false
    change_column :spree_return_authorizations, :amount, :decimal, :precision => 15, :scale => 0, :default => 0, :null => false
    change_column :spree_shipments, :cost, :decimal, :precision => 15, :scale => 0
    change_column :spree_tax_rates, :amount, :decimal, :precision => 15, :scale => 5
  end

  def down
    change_column :spree_adjustments, :amount, :decimal, :precision => 8, :scale => 2
    change_column :spree_line_items, :price, :decimal, :precision => 8, :scale => 2, :null => false

    change_column :spree_orders, :item_total, :decimal, :precision => 8, :scale => 2, :default => 0.0, :null => false
    change_column :spree_orders, :total, :decimal, :precision => 8, :scale => 2, :default => 0.0, :null => false
    change_column :spree_orders, :adjustment_total, :decimal, :precision => 8, :scale => 2, :default => 0.0, :null => false
    change_column :spree_orders, :payment_total, :decimal, :precision => 8, :scale => 2, :default => 0.0

    change_column :spree_payments, :amount, :decimal, :precision => 8, :scale => 2, :default => 0.0, :null => false
    change_column :spree_return_authorizations, :amount, :decimal, :precision => 8, :scale => 2, :default => 0.0, :null => false
    change_column :spree_shipments, :cost, :decimal, :precision => 8, :scale => 2
    change_column :spree_tax_rates, :amount, :decimal, :precision => 8, :scale => 5
  end
end
