Deface::Override.new(:virtual_path  => "spree/products/show",
                     :insert_top => "div[data-hook='product_properties']",
                     :partial          => "deface/product_price",
                     :name          => "product_price")
