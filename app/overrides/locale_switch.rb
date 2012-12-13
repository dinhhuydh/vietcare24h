Deface::Override.new(:virtual_path  => "spree/shared/_nav_bar",
                     :insert_top => "nav#top-nav-bar",
                     :partial          => "deface/locale",
                     :name          => "locale_switch")

Deface::Override.new(:virtual_path  => "spree/shared/_nav_bar",
                     :set_attributes => "nav#top-nav-bar",
                     :attributes => {:style => 'margin-top: 5px;'},
                     :name          => "locale_style")
