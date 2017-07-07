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
          
    <title>Category</title>
    <link rel="shortcut icon" href="resources/images/logosayymaa_icon3.ico" />


    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>  
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"></script>
   <script src="resources/js/angular.js"></script> 
   <script>
  			
   var cat = ${categorymodelobject};
	angular.module('SayymaaStylo', []).controller('CategoryController',
			function($scope) {
				$scope.Catagory = cat;
			});
   
  </script>

<title>Category Details</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid"
		style="width: 80%; margin-top: 10px; margin-bottom: 10px">
		<div class="panel animated fadeInDown delay-05s" id="panel-1">
			<div class="panel-heading">
			<div class=" col-xs-offset-4">
			
			<img src ="resources/images/catt.jpg"/>
				
			</div>
			<!-- end panel heading -->
			<div class="panel-body">
				<div class="formcontainer">
					<c:if test="${check}">
						<form:form name="addCategoryObject"
							modelAttribute="addCategoryObject1" action="addingcategory"
							method="post">
							<div class="form-group">
								<form:input class="form-control"
									Placeholder="Category Id" type="text" path="CategoryId" required="true"></form:input>
							</div>
							<div class="form-group">
								<form:input class="form-control"
									Placeholder="Category Name" type="text" path="CategoryName" required="true"></form:input>
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control"
									placeholder="Category Description" path="Description" required="true"></form:input>
							</div>
							<form:button id="editbuttons" type="submit" name="Addcategory"
								class="btn">Add Category</form:button>
							<form:button id="removebuttons" type="reset" class="btn">Reset
              Details</form:button>

						</form:form>
					</c:if>
					
					<c:if test="${!check}">
						<form:form name="addCategoryObject"
							modelAttribute="addCategoryObject1" action="addingcategory"
							method="post">
							<div class="form-group">
								<form:input id="name" class="form-control"
									Placeholder="Category Id" type="text" path="CategoryId" readonly="true"></form:input>
							</div>
							<div class="form-group">
								<form:input id="name" class="form-control"
									Placeholder="Category Name" type="text" path="CategoryName"></form:input>
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control"
									placeholder="Category Description" path="Description"></form:input>
							</div>
							<form:button id="editbuttons" type="submit" name="EditCategory"
								class="btn">Edit Category</form:button>
							<form:button id="removebuttons" type="reset" class="btn">Reset
              Details</form:button>
						</form:form>
					</c:if>
				</div>
			</div>
			<!-- panel1 body end -->
		</div>
		<!-- panel1 end -->
	<div class="container myPanel">
					<div class="row ">
						<div class="col-sm-12 ">
							<div class="panel panel-info">
								<div class="panel-heading" >
									<h4><b>View Category List </b></h4>
								</div>

								<div class="panel-body" ng-app="SayymaaStylo" ng-controller ="CategoryController">
									<table class="table table-bordered table-sm">
										<thead>
											<tr >
												<th>Category ID</th>
												<th>Category Name</th>
												<th>Category Description </th>
												<th>Action</th>

											</tr>
										</thead>
										<tbody>
											<tr ng-repeat ="cate in Catagory">
												<td> {{cate.CategoryId}}</td>
												<td>{{cate.CategoryName}}</td>
												<th>{{cate.Description}} </th>
												<td class="text-center">
												      
						 <a href="editcategorybutton?getcid={{cate.CategoryId}}"><button id="editbuttons"
									type="submit" class="btn">Edit</button></a> <a
								href="removecategory/{{cate.CategoryId}}"><button  id="removebuttons"
									type="button" class="btn">Remove</button></a>  
													          
											    </td>					
											</tr>																			
										</tbody>
									</table>

								</div>
							</div>
						</div>
					</div>
				</div>
		<!-- panel2 end -->
	</div>
	<div class="pull-right">
							
						</div>
          <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>