
jQuery(document).ready(function($){
  	$('#state').change(function(){
			$.getJSON("/ajax/citylist", 
				{ state_id: $(this).val() }, 
				function(data) {

				var model = $('#cities');
				model.empty();
				model.append("<option value=''>Select</option>");
				$.each(data, function(index, element) {
			    model.append("<option value='"+ element.id +"'>" + element.city_name + "</option>");
			});
		});
	});
});
