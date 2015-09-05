# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
	$("#pleasedo").click(function(){
		
		var c1 = document.getElementById("country1").value;
		var c2 = document.getElementById("country2").value;
		

		$.ajax({

			url: 'https://currency-api.appspot.com/api/'+c1+'/'+c2+'.jsonp',
			dataType: "jsonp",
			data: {amount: '1.00'},
			success: function(response) {
				if (response.success) {
					$("#rate").html(response.rate);
				}
				else{
					$("#rate").html("Failed to retrieve");
				}
			}
		});
	});
});