<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>SayyMaa Stylo</title>
 <link rel="shortcut icon" href="resources:/images/logosayymaa_icon3.ico" />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/css/myStyle.css">
<script src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript"
	src="resources/js/bootstrapValidator.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="resources/js/angular.js"></script>
<script>
var productlist = ${productlist};
var sl = ${supplierslist};
var cl = ${categorymodelobject};
angular.module('SayymaaStylo', []).controller('ProductController',
		function($scope) {
			$scope.productangularobject = productlist;
			$scope.slo = sl;
			$scope.clo = cl;
		});
</script>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body ng-app="SayymaaStylo" ng-controller="ProductController">
	<div class="container-fluid"
		style="width: 90%; margin-top: 10px; margin-bottom: 10px">

		<div class="panel animated fadeInDown delay-05s" id="panel-1">
			<div class="panel-heading">
				<span class="lead">Managing Products</span>
			</div>
			<!-- end panel heading -->
			<div class="panel-body">
				<div class="formcontainer ">

					<form:form commandName="newProductObject" action="addproduct"
						enctype="multipart/form-data">
						<c:if test="${check}">
							<div class="form-group">

								<form:input class="form-control" Placeholder="Product Id"
									type="text" path="pId" required="true"></form:input>
							</div>
						</c:if>
						<c:if test="${!check}">
							<div class="form-group">
								<form:input class="form-control" Placeholder="Product Id"
									type="text" path="pId" readonly="true" required="true"></form:input>
							</div>
						</c:if>
						<div class="form-group">
							<form:input class="form-control" Placeholder="Product Name"
								type="text" path="pName" required="true"></form:input>
						</div>
						<div class="form-group">
							<form:input type="text" class="form-control"
								placeholder="ProductDescription" path="pDesc" required="true"></form:input>
						</div>
						<div class="form-group">
							<form:input type="number" class="form-control"
								Placeholder="Product price" path="pPrice" required="true"></form:input>
						</div>
						<div class="form-group">
							<form:input type="number" class="form-control"
								placeholder="Stock" path="pStock" required="true"></form:input>
						</div>
						<div class="form-group">
							<form:select path="catId" cssClass="form-control">
								<form:option ng-repeat="c in clo" value="{{c.CategoryId}}">
									{{c.CategoryName}}
								</form:option>
							</form:select>
						</div>
						<div class="form-group">
							<form:select path="sId" cssClass="form-control">
								<form:option ng-repeat="s in slo" value="{{s.SupplierId}}">
									{{s.SupplierName}}
								</form:option>
							</form:select>
						</div>
						<div class="form-group">
							<form:input type="file" name="fileToUpload" id="fileToUpload"
								path="pImage" required="true"></form:input>
						</div>
						<c:if test="${check}">
							<form:button id="editbuttons" type="submit" name="Add" class="btn">Add
							Details</form:button>
							<form:button id="removebuttons" type="reset" class="btn">Reset
							Details</form:button>
						</c:if>
						<c:if test="${!check}">
							<form:button id="editbuttons" type="submit" name="Edit" class="btn">Edit
							Details</form:button>
							<form:button id="removebuttons" type="reset" class="btn">Reset
							Details</form:button>
						</c:if>
					</form:form>
				</div>
				<!-- panel body end -->
			</div>
		</div>
		<!-- panel end -->
		<div class="panel animated fadeInUp delay-05s" id="panel-2">
			<div class="panel-heading">
				<span class="lead">Products List</span>
			</div>
			<!-- end panel2 heading -->
			<div class="panel-body">
				<ul class="list-group">
					<li class="list-group-item" height="45px"
						ng-repeat="product in productangularobject">
						<table style="width: 100%">
							<tr>
								<td><img style="width:125px ;height:150px" src="resources/Pics/{{product.pId}}.jpg" />
								</td>
								<td>
									<ul>
										<li><span><b>Product Id: </b></span>{{product.pId}}</li>
										<li><span><b>Product Name: </b></span>{{product.pName}}</li>
										<li><span><b>Product Price: </b></span>{{product.ProductPrice}}</li>
										<li><span><b>Product Stock: </b></span>{{product.ProductStock}}</li>
										<li><span><b>Supplier Id: </b></span>{{product.SupplierId}}</li>
										<li><span><b>Category Id: </b></span>{{product.CategoryId}}</li>
									</ul>
								</td>
								<td><a href="editingproduct?getpid={{product.ProductId}}"><button id="editbuttons"
											type="submit" class="btn">Edit</button></a> <a
									href="removingproduct/{{product.ProductId}}"><button id="removebuttons"
											type="button" class="btn">Remove</button></a></td>
							</tr>
						</table>
					</li>
				</ul>
			</div>
			<!-- panel2 body end -->
		</div>
		<!-- panel2 end -->
	</div>
	<!-- container end -->
	<jsp:include page="footer.jsp"></jsp:include>
	</body>
	</html>