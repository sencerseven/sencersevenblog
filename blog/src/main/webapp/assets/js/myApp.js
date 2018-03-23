(function($)
{
	var token = $('meta[name="_csrf"]').attr('content');
	var header = $('meta[name="_csrf_header"]').attr('content');
	
	if(token.length > 0 && header.length > 0){
		console.log("tokenlar geldi");
		$(document).ajaxSend(function(e,xhr,options){
			xhr.setRequestHeader(header,token);
		});
		
	}
	
	
	
	
	$("#commentForm #commentButton").on("click",function(){
		var commentText = $("#commentForm #commentText").val();
		var postId = $("#commentForm #commentPostID").val();
		var userName = $("#commentForm #commentUser").val();
		var userImage = $("#commentForm #commentImage").val();

		
		
		$.ajax({
			  method: "POST",
			  data: { post_id: postId, comment: commentText },
			  url: window.contextRoot + '/post/addcomment',
			  success: function(result){
				  $("#commentForm #commentText").val('');
				  
				  $('.post-comment .comments-list').append(' '
						  + '<li class="comment byuser even thread-even depth-1">'
						  	+'<div id="comment-3" class="comment-body">'
						  		+'<div class="item-comment">'
						  			+'<div class="author-avatar">'
						  				+'<a href="../../../../author/7uptheme/index.html"><img alt="" src="'+userImage+'" class="avatar avatar-100 photo" height="100" width="100" /></a>'
					  				+'</div>'
					  				+'<div class="comment-info">'
					  					+'<h3><b>'+userName+'</b></h3>'
					  					+'<div class="desc"><p>'+commentText+'</p></div>'
				  					+'</div>'
			  					+'</div>'
		  					+'</div>'
						  +'</li>'
						  +'');
			  }	
			});
	});
			
	
	$("div.bhoechie-tab-menu>div.list-group>a").click(function(e) {
        e.preventDefault();
        $(this).siblings('a.active').removeClass("active");
        $(this).addClass("active");
        var index = $(this).index();
        $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
        $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
    });
})(jQuery)
