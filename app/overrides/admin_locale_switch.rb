Deface::Override.new(:virtual_path  => "spree/layouts/admin",
                     :insert_top => "div#header",
                     :partial          => "deface/admin_locale",
                     :name          => "admin_locale_switch")
