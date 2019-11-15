$('turbolinks:load',function(){
  var maxNum = 9999999; 
  var minnum = 300
  var fee = 0.1
	var input = $('.sell-form__price-left__input__form'); 
	var fee_form = $('.sell-form__price-left__middle__output'); 
  var profit_form = $('.sell-form__price-left__bottom');
  input.on('change',function() {
	  var str = $(this).val();
		var num = Number(str.replace(/[^0-9]/g, '')); 
    $(this).val(num);
  
		if(num != 0) {
      var price = num * fee;
      var profit = num - price;
      fee_form.append(price);
      profit_form.append(profit);
    }
  });
});




