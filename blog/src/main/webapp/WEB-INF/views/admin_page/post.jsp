<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sufee Admin - HTML5 Admin Template</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="${css}/lib/datatable/dataTables.bootstrap.min.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="${scss }/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body>
    

        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Data Table</strong>
                            <a href="${contextRoot}/posts/add" class="btn btn-primary pull-right">Add Post</a>
                        </div>
                        <div class="card-body">
                  <table id="data-table-post" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                      	<th>ID</th>
                       	<th>Name</th>
                        	<th>Description</th>
                        	<th>Created Date</th>
                        <th>Status</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach items="${posts}" var="post">                      
	                      <tr class="data-table-row-1">
	                        <td>${post.id}</td>
	                        <td>${post.title}</td>
	                        <td>${fn:substring(post.content,0,30)}</td>
	                        <td>${post.created_date}</td>
	                        <td>
							</td>
							<td>
								<a href="${contextRoot}/posts/${post.id}/edit"  class="btn btn-warning btn-sm edit"><i class="fa fa-eye" alt="edit"></i></a>
								<button type="button" value="${post.id}" class="btn btn-danger btn-sm delete"><i class="fa fa-trash-o" alt="delete"></i></button>
							</td>
	                      </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                        </div>
                    </div>
                </div>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->



    <script src="${js}/lib/data-table/datatables.min.js"></script>
    <script src="${js}/lib/data-table/dataTables.bootstrap.min.js"></script>
    <script src="${js}/lib/data-table/dataTables.buttons.min.js"></script>
    <script src="${js}/lib/data-table/buttons.bootstrap.min.js"></script>
    <script src="${js}/lib/data-table/jszip.min.js"></script>
    <script src="${js}/lib/data-table/pdfmake.min.js"></script>
    <script src="${js}/lib/data-table/vfs_fonts.js"></script>
    <script src="${js}/lib/data-table/buttons.html5.min.js"></script>
    <script src="${js}/lib/data-table/buttons.print.min.js"></script>
    <script src="${js}/lib/data-table/buttons.colVis.min.js"></script>
    <script src="${js}/lib/data-table/datatables-init.js"></script>
    <script type="text/javascript">
        $(function() {
        	var table = $('#booasdtstrap-data-table');
        	
          $('#data-table').DataTable({
        	  "aoColumnDefs": [{ "bSortable": false, "aTargets": [ 3,4 ] }]
        	  });
          
        } );
    </script>


</body>



</html>