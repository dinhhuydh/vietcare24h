window.toggleShowPrice = () ->
  showPriceCheckBox = $('#product_show_price')
  if showPriceCheckBox.val() == 'true' || showPriceCheckBox.val() == 't' || showPriceCheckBox.val() == '1'
    showPriceCheckBox.val('false')
  else
    showPriceCheckBox.val('true')

