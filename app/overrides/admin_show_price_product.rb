Deface::Override.new(:virtual_path  => "spree/admin/products/_form",
                     :insert_top => "div[data-hook='admin_product_form_right']",
                     :partial          => "deface/admin_show_price_product",
                     :name          => "admin_show_price_product")
