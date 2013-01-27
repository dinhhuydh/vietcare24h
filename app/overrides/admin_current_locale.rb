Deface::Override.new(:virtual_path  => "spree/admin/shared/_product_sub_menu",
                     :insert_bottom => "ul#sub_nav",
                     :partial          => "deface/admin_current_locale",
                     :name          => "admin_current_locale")
