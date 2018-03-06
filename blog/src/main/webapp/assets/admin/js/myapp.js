$(function(){
	
	$('.switch input[type="checkbox"]').on('change',function(){
		
		
		var checkbox = $(this);
		var status = checkbox.prop('checked');
		var value = checkbox.prop('value');
		
		var activationUrl = window.contextRoot +'/category/'+value+'/activation';

		$.post(activationUrl,function(data){

			alert(data);
			
			
		});
		
	});
	
	
$('#data-table button[type="button"]').on('click',function(){
		var deleteButton = $(this);
		var value = deleteButton.prop('value');
		var table = $('#data-table').DataTable();
		
		var deleteUrl = window.contextRoot +'/category/'+value+'/delete';

		bootbox.confirm({
			size:'medium',
			title:'Delete Category!',
			message:'Are you sure to want to delete the category with id number ' + value,
			callback:function(confirmed){
				if(confirmed){
//					 sLoader.start('<p><i class="fa fa-spin fa-spinner"></i> Please Waiting for delete</p');
					
					
					$.post(deleteUrl,function(result){
						table.row(deleteButton.parents('tr')).remove().draw( false );
					});
					
					
					
					
					
//					table.row(deleteButton.parents('tr')).remove().draw( false );
				}
			}
			
		});
		
		
		
	});
	

$('#data-table-post button[type="button"]').on('click',function(){
	var deleteButton = $(this);
	var value = deleteButton.prop('value');
	var table = $('#data-table-post').DataTable();
	
	var deleteUrl = window.contextRoot +'/posts/'+value+'/delete';

	bootbox.confirm({
		size:'medium',
		title:'Delete Category!',
		message:'Are you sure to want to delete the post with id number ' + value,
		callback:function(confirmed){
			if(confirmed){
//				 sLoader.start('<p><i class="fa fa-spin fa-spinner"></i> Please Waiting for delete</p');
				
				
				$.post(deleteUrl,function(result){
					table.row(deleteButton.parents('tr')).remove().draw( false );
				});
				
				
				
				
				
//				table.row(deleteButton.parents('tr')).remove().draw( false );
			}
		}
		
	});
	
	
	
});
	
	
});

