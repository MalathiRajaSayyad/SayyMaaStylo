<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
          
    <title>SayyMaa Stylo</title>
    <link rel="shortcut icon" href="resources/images/logosayymaa_icon3.ico" />


    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>  
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"></script>
   <script src="resources/js/angular.js"></script>
   <title>Supplier details</title>
 <link rel="shortcut icon" href="resources:/images/logosayymaa_icon3.ico" />
 <script>
	var pl = ${manageProduct};
	
	angular.module('SayymaaStylo', []).controller('ProductController',
			function($scope) {
				$scope.plo = pl;
				
			});
   </script>
</head>

<body ng-app="SayymaaStylo" ng-controller="ProductController">
<jsp:include page="header.jsp"></jsp:include>
	<div style="margin-bottom: 25px"></div>
	
		<h3 style ="text-decoration:underline;margin-top:50px;margin-left:110px"><b>VIEW ALL PRODUCTS :</b></h3>
	
	<!-- panel 1 for add new product-->

	<div class="container myPanel">
		<div class=" formHeader ">
			<div class="row ">
				<div class="col-xs-7 col-xs-offset-1">
					

						
						

			<div class="container myPanel">
				<div class="row ">
					<div class="col-sm-12 ">
						<div class="panel panel-info">
						

							<div class="panel-body">
								<table class="table table-bordered table-sm">
									<thead>
										<tr>
											<th>Product Image</th>
											<th>Product Details</th>
											

										</tr>
									</thead>
									<tbody>
										<tr>
											<td><img width="160px" height="150px"
												src="resources/Pics/{{plo.pId}}.jpg" />
											</td>

											<td>
											<ul>
													
													<h1><li><span><b>Product Name: </b></span>{{plo.pName}}</li></h1>
													<h3><li><span><b>Product Description: </b></span>{{plo.pDesc}}</li></h3>
													
													<li><span><b>Product Price: </b></span>{{plo.pPrice}}</li>
													<li><span><b>Product Stock: </b></span>{{plo.pStock}}</li>
													
												</ul>
											</td>
											
											
										</tr>
									</tbody>
								</table>

							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>