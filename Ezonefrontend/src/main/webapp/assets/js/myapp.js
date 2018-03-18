$(function() {

	// for adding a loader
	$(window).load(function() {
		setTimeout(function() {
			$(".se-pre-con").fadeOut("slow");
		}, 500);
	});

	// solving the active menu problem
	switch (menu) {

	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'All Products':
		$('#listProducts').addClass('active');
		break;
	case 'Product Management':
		$('#manageProduct').addClass('active');
		break;
	case 'Shopping Cart':
		$('#userModel').addClass('active');
		break;
	default:
		if (menu == "Home")
			break;
		$('#listProducts').addClass('active');
		$('#a_' + menu).addClass('active');
		break;
	}

	var $table = $('#productListTable')
	//execute the below code when we have below table
	if ($table.length) {

		var jsonUrl = '';
		if (window.categoryId == '') {
			jsonUrl = window.contextRoot + '/json/data/all/products'; // yha single coat ka matlab he agr user ne url ke thru all category data dekhana chaha tha 
		}
			
		//if user have categoryid so we will follow this code 
		else {

			jsonUrl =  window.contextRoot + '/json/data/category/'
			+ window.categoryId + '/products';//window .categoey id is fetched the dynmaic id from my app.js	
		}

		$table.DataTable({
			lengthMenu : [ [ 3, 5, 10, -1 ],
					[ '3 Records', '5 Records', '10 Records', 'ALL' ] ],
			pageLength : 5,
			
			
			ajax : {
				url : jsonUrl,
				dataSrc : ''
			},
			
			columns : [
				
{
					
					data : 'code',
					mRender : function(data, type, row){
						return '<img src="'+ window.contextRoot+'/resources/images/'+data+'.jpg" class="dataTableImg"/>';
						
						
					}
				},
				
				
				
				
				
				
				{
					
					data : 'name'
				},
				
	{
					
					data : 'brand'
				},
				
	{
					
					data : 'unit_Price',
						mRender : function(data, type, row) {
							return '&#8377; ' + data
						}
				},
				
				{
					data : 'quantity',
					mRender : function(data, type, row) {

						if (data < 1) {
							return '<span style="color:red">Out of Stock!</span>';
						}

						return data;

					}
				},
				{
					
					data : 'id',
					bSortable: false,
					mRender: function(data,type,row){
						var str= '';
						str +=  '<a href="'
							+ window.contextRoot
							+ '/show/'
							+ data
							+ '/product" class="btn btn-primary"><span class="glyphicon glyphicon-eye-open"></span></a> &#160;'
							if(row.quantity <1){
								str += '<a href="javascript:void(0)" class="btn btn-success disabled"><span class="glyphicon glyphicon-shopping-cart"></span></a>';
									
							}
							else{
								str += '<a href="'+ window.contextRoot+ 'cart/add/'+ data + '/products" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span></a>';
								
							}
					
						return str;
					}
				}
				
				
				
				
				
				
				
				
				
				
				
				
			]
			
			
			
	
		});

	}

});