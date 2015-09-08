$(document).ready(function() {

//follow plugin
	$('#cart').jfollow('#followbox', 20);	


	//shopping cart functionality
	//hide the empty cart button
	emptyBtn.hide();
	
	//make the product class div part of the draggable ui
	
	$('.product').draggable({
		appendTo: 'body',
		helper: 'clone' ,
		product_id: $(this).find('.product_id').val(),
		this_object: $(this).find('.product'),
		drag: function(event, ui){
			
			//显示拖拽区域
			$('#drop_cart').css('opacity','100');
			
			//console.log(ui.position.left);
			var screenW = $('body').innerWidth();
			var screenH = $('body').height();
			var product_object = $('#dragged_product');
			
			product_object.animate({
			height: '170px',
            width: '170px',
			},100);
			
			if(ui.position.left < 0){ui.position.left = 0;}
			if(ui.position.left + product_object.width() > screenW){ui.position.left = screenW - product_object.width() - 2;;}
			if(ui.position.top  < 0){ui.position.top = 0;}
			if(ui.position.top + product_object.height() > screenH){ui.position.top = screenH - product_object.height() - 2;}

		}
	});
	
	
	//make the dropzone class div a part of the droppable ui
	$('.dropzone').droppable({
		tolerance: 'touch',
		activeClass: 'ui-state-default',
		hoverClass: 'ui-state-hover',
		accept: '.product',
		drop: function(event, ui){
			
		var input = ui['draggable']['0']['firstElementChild'];
		
		getScripts(["js/jquery.json.js", "js/common.js"], function () { 
			addToCartShowDiv(input.value); 
		});
		
		
		
		
		
		//消失区域
		//$('#drop_cart').css('display','none');
		
		
		
		
		
		$(".drop_cart").removeClass('drop_area');
			var item = $(ui.draggable).find('.product-title').text();
			var itemid = $(ui.draggable).find('.id').text();
			var price = $(ui.draggable).find('.price').text();
			var html = '<div class="cart-item" data-productid="'+itemid+'" >';
				html = html + '<div class="div-remove">';
				html = html + '<a onclick = "remove(this)" class="remove '+itemid+'">&times;</a>'+'</div>';
				html = html + '<p class="item-name">'+item+'</p>';
				html = html + '<p class="item-price">'+price+'</p>';
				html = html + '<p class="input">'+'<input type="text" maxlength="2" name="quantity" value="'+quantity+'" />';
				html = html + '</p>'+'</div>'
			
			var cartitem = $('".cart-item[data-productid="'+itemid+'"]"');
			
			if(cartitem.length > 0){
				var int = parseInt(cartitem.find('input').val());
				int ++;
				cartitem.find('input').val(int);	
			}else{
				var content = $('.cart-content');
				content.append(html);
				emptyText.hide();
			}			
			//update the total items
			total_items++;			
			if(total_items > 0){
				emptyBtn.fadeIn('1000');
			}			
			emptyBtn.click(function(){
				$('#dialog-confirm').dialog({
					resizable: false,
					modal: true,
					buttons: [	{	
								text: "Cancel",
								click: function(){
									$(this).dialog('close');}
								},
								{	
								text: "Clear Cart",
								click: function(){
									var content = $('.cart-item');
									content.remove();
									$('cart-content').find('.placeholder').show();
									$(this).dialog('close');
									emptyBtn.fadeOut('500');
									emptyText.fadeIn('500');}
								}
							]					
				})
				return false;
			});
		} //end drop function
	});
	


}); //end document ready

    function remove(el) {
        $(el).hide();
        $(el).parent().parent().fadeOut('1000');
        setTimeout(function() {
            $(el).parent().parent().remove();
        }, 1100);

        // update total item
        total_items--;
        if( total_items === 0){
			emptyText.delay('1000').fadeIn('500');
			emptyBtn.fadeOut('500');
			}
  	}
    
    
var total_items = 0;	

var emptyText = $('.cart-content').find('.placeholder');
var emptyBtn = $('.empty').button();
var quantity = 1;
	
function getScripts(scripts, callback) {
    var progress = 0;
    var internalCallback = function () {
        if (++progress == scripts.length) { callback(); }
    };

    scripts.forEach(function(script) { $.getScript(script, internalCallback); });
};




