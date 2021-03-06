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
	var pl = ${modelProdList};
	var sl = ${modelSupList};
	var cl = ${modelCatList};
	angular.module('SayymaaStylo', []).controller('ProductController',
			function($scope) {
				$scope.plo = pl;
				$scope.slo = sl;
				$scope.clo = cl;
			});
   </script>
</head>

<body ng-app="SayymaaStylo" ng-controller="ProductController">
<jsp:include page="header.jsp"></jsp:include>
	<div style="margin-bottom: 25px"></div>
	
		<h3 style ="text-decoration:underline;margin-top:50px;margin-left:110px"><b>MANAGE PRODUCTS :</b></h3>
	
	<!-- panel 1 for add new product-->

	<div class="container myPanel">
		<div class=" formHeader ">
			<div class="row ">
				<div class="col-xs-7 col-xs-offset-1">
					

						<div class="panel panel-info ">
							<div class="panel-heading">
								<h4>
									<b>Add New Product</b>
								</h4>
							</div>
							<div class="panel-body ">
							<c:if test="${check}">
								<form:form class="form-horizontal" 
									action="addProduct" modelAttribute="manageProduct" enctype="multipart/form-data">
									

									
										
										<div class="form-group">
											<label class="col-xs-4 control-label">Product Name</label>
											<div class="col-xs-7">
												<form:input type="text" class="form-control" name="pName"
													path="pName" placeholder=" Product Name" />
												<form:errors path="pName" cssClass="error" />

											</div>
										</div>

<div class="form-group">
											<label class="col-xs-4 control-label">Product
												Description</label>
											<div class="col-xs-7">
												<form:textarea class="form-control" name="pDesc"
													path="pDesc" placeholder="Product Description" rows="5"></form:textarea>
												<form:errors path="pDesc" cssClass="error" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-xs-4 control-label">Product
												Category</label>
											<div class="col-xs-7">
												<form:select path="catId" class="form-control ">
													<form:option ng-repeat="c in clo" value="{{c.CategoryId}}">{{c.CategoryName}}</form:option>


												</form:select>
												<form:errors path="catId" cssClass="error" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-xs-4 control-label">Product
												Supplier</label>
											<div class="col-xs-7">
												<form:select path="sId" class="form-control "
													title="Select Supplier">
													<form:option ng-repeat="s in slo" value=" {{s.SupplierId}}">{{s.SupplierName}}</form:option>
												</form:select>
												<form:errors path="sId" cssClass="error" />
											</div>
										</div>


										
										
										

										<div class="form-group">
											<label class="col-xs-4 control-label">Product Price
												per Unit</label>
											<div class="col-xs-7">
												<form:input type="text" class="form-control" name="pPrice"
													path="pPrice" placeholder="Price per Unit" />
												<form:errors path="pPrice" cssClass="error" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-xs-4 control-label">Product
												Quantity in Stock</label>
											<div class="col-xs-7">
												<form:input type="text" class="form-control" name="pStock"
													path="pStock" placeholder="Quantity in Stock" />
												<form:errors path="pStock" cssClass="error" />

											</div>
										</div>

								<div class="form-group">
										<label class="col-xs-4 control-label">Product Image</label>
											<div class="col-xs-7">
												<form:input type="file" name="fileToUpload" id="fileToUpload" 
													path="PImage" required="true"></form:input>
												<form:errors path="pStock" cssClass="error" />
											</div>

										</div>
										
										<div class="col-xs-10 ">
											<form:button type="submit"
												class="btn btn-primary  col-md-offset-4">Add New
												Product</form:button>
										</div>
										</form:form>
										
										</c:if>
										
										
										<c:if test="${!check}">
										<form:form class="form-horizontal" 
									action="updateProduct" modelAttribute="manageProduct" enctype="multipart/form-data">
									
									<div class="form-group">
											<label class="col-xs-4 control-label">Product Name</label>
											<div class="col-xs-7">
												<form:input type="text" class="form-control" name="pName"
													path="pName" placeholder=" Product Name" />
												<form:errors path="pName" cssClass="error" />

											</div>
										</div>

<div class="form-group">
											<label class="col-xs-4 control-label">Product
												Description</label>
											<div class="col-xs-7">
												<form:textarea class="form-control" name="pDesc"
													path="pDesc" placeholder="Product Description" rows="5"></form:textarea>
												<form:errors path="pDesc" cssClass="error" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-xs-4 control-label">Product
												Category</label>
											<div class="col-xs-7">
												<form:select path="catId" class="form-control ">
													<form:option ng-repeat="c in clo" value="{{c.CategoryId}}">{{c.CategoryName}}</form:option>


												</form:select>
												<form:errors path="catId" cssClass="error" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-xs-4 control-label">Product
												Supplier</label>
											<div class="col-xs-7">
												<form:select path="sId" class="form-control "
													title="Select Supplier">
													<form:option ng-repeat="s in slo" value=" {{s.SupplierId}}">{{s.SupplierName}}</form:option>
												</form:select>
												<form:errors path="sId" cssClass="error" />
											</div>
										</div>


										
										
										

										<div class="form-group">
											<label class="col-xs-4 control-label">Product Price
												per Unit</label>
											<div class="col-xs-7">
												<form:input type="text" class="form-control" name="pPrice"
													path="pPrice" placeholder="Price per Unit" />
												<form:errors path="pPrice" cssClass="error" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-xs-4 control-label">Product
												Quantity in Stock</label>
											<div class="col-xs-7">
												<form:input type="text" class="form-control" name="pStock"
													path="pStock" placeholder="Quantity in Stock" />
												<form:errors path="pStock" cssClass="error" />

											</div>
										</div>

								<div class="form-group">
										<label class="col-xs-4 control-label">Product Image</label>
											<div class="col-xs-7">
												<form:input type="file" name="fileToUpload" id="fileToUpload" 
													path="PImage" required="true"></form:input>
												<form:errors path="pStock" cssClass="error" />
											</div>

										</div>

									<div class="col-xs-10 ">
											<form:button type="submit"
												class="btn btn-primary  col-md-offset-4">Edit
												Product</form:button>
										</div>
										
										
										
										</form:form>
										</c:if>
										</div>
										

			<!-- Panel 3 to view Product list and perform view /edit /delete individual rows -->

			<div class="container myPanel">
				<div class="row ">
					<div class="col-sm-12 ">
						<div class="panel panel-info">
							<div class="panel-heading">
								<h4>
									<b>View Product List </b>
									</h4>
							</div>

							<div class="panel-body">
								<table class="table table-bordered table-sm">
									<thead>
										<tr>
											<th>Product Image</th>
											<th>Product Details</th>
											<th>Action</th>

										</tr>
									</thead>
									<tbody>
										<tr ng-repeat="p in plo |orderBy:'catId'">
											<td><img width="160px" height="150px"
												src="resources/Pics/{{p.pId}}.jpg" />
											</td>

											<td>
											<ul>
													<li><span><b>Product ID: </b></span>{{p.pId}}</li>
													<li><span><b>Product Name: </b></span>{{p.pName}}</li>
													<li><span><b>Product Description: </b></span>{{p.pDesc}}</li>
													<li><span><b>Product Supplier Id: </b></span>{{p.sId}}</li>
													<li><span><b>Product Category Id: </b></span>{{p.catId}}</li>
													<li><span><b>Product Price: </b></span>{{p.pPrice}}</li>
													<li><span><b>Product Stock: </b></span>{{p.pStock}}</li>
													
												</ul>
											</td>
											
											<td class="text-center">
											<a href="editproduct?getpid={{p.pId}}"><button
														type="submit" class="btn btn-success" >Edit</button></a>
											<a href="removeproduct/{{p.pId}}"><button
													        style="margin-left: 25px" type="submit"
															class="btn btn-danger">Delete</button></a>
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