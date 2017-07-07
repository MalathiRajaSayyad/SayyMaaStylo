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
    var supplier = ${supplierslist};
	angular.module('SayymaaStylo', []).controller('SupplierController',
			function($scope) {
				$scope.supps = supplier;
			});
    
   </script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid"
		style="width: 80%; margin-top: 10px; margin-bottom: 10px">
		<div class="panel animated fadeInDown delay-05s" id="panel1">
			<div class="panel-heading">
			<div class=" col-xs-offset-4">
			
			<img src ="resources/images/supp.jpg"/>
				
			</div>
			<!-- end panel heading -->
			<div class="panel-body">
				<div class="formcontainer ">

					<c:if test="${check}">
						<form:form name="addsupplierform" commandName="newSupplierObject"
							action="addingsupplier" method="post">

							<div class="form-group">
								<form:input id="name" class="form-control"
									Placeholder="Supplier Id" type="text" path="SupplierId" required="true"></form:input>
							</div>
							<div class="form-group">
								<form:input id="name" class="form-control"
									Placeholder="Supplier Name" type="text" path="SupplierName" required="true"></form:input>
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control"
									placeholder="Supplier Phone Number" path="SupplierPhone" required="true"></form:input>
							</div>
							<div class="form-group">
								<form:input type="text" id="name" class="form-control"
									Placeholder="Supplier Address" path="SupplierAddress" required="true"></form:input>
							</div>
							<form:button type="submit" class="btn" id="editbuttons" name="Addingsupplier">Add
							Supplier</form:button>
							<form:button type="button" class="btn" id="removebuttons">Reset
							Details</form:button>
						</form:form>
					</c:if>
					<c:if test="${!check}">
					<form:form name="addsupplierform" commandName="newSupplierObject"
						action="addingsupplier" method="post">

						<div class="form-group">
							<form:input id="name" class="form-control"
								Placeholder="Supplier Id" type="text" path="SupplierId" readonly="true" required="true"></form:input>
						</div>
						<div class="form-group">
							<form:input id="name" class="form-control"
								Placeholder="Supplier Name" type="text" path="SupplierName" required="true"></form:input>
						</div>
						<div class="form-group">
							<form:input type="text" class="form-control"
								placeholder="Supplier Phone Number" path="SupplierPhone" required="true"></form:input>
						</div>
						<div class="form-group">
							<form:input type="text" id="name" class="form-control"
								Placeholder="Supplier Address" path="SupplierAddress" required="true"></form:input>
						</div>
						<form:button id="editbuttons" type="submit" class="btn btn-success " name="EditingSupplier">Edit
							Supplier</form:button>
						<form:button id="removebuttons" type="button" class="btn btn-danger ">Reset
							Details</form:button>
					</form:form>
					</c:if>
				</div>
			</div>
			<!-- panel body end -->
		</div>
		<!-- panel end -->
		<div class="container myPanel">
					<div class="row ">
						<div class="col-sm-12 ">
							<div class="panel panel-info">
								<div class="panel-heading" >
									<h4><b>View Category List </b></h4>
								</div>

								<div class="panel-body" ng-app="SayymaaStylo" ng-controller ="SupplierController">
									<table class="table table-bordered table-sm">
										<thead>
											<tr >
												<th>Supplier ID</th>
												<th>Supplier Name</th>
												<th>Supplier Phno </th>
												<th>Supplier Address </th>
												<th>Action</th>

											</tr>
										</thead>
										<tbody>
											<tr ng-repeat ="s in supps">
												<td> {{s.SupplierId}}</td>
												<td>{{s.SupplierName}}</td>
												<td>{{s.SupplierPhone}} </td>
												<td>{{s.SupplierAddress}} </td>
												<td class="text-center">
												      
						<a href="editingsupplierbutton?getsupplierid={{ s.SupplierId }}"><button id="editbuttons"
									type="submit" class="btn">Edit</button></a> <a
								href="removingsupplier/{{ s.SupplierId }}"><button id="removebuttons"
									type="button" class="btn btn-danger ">Remove</button></a>
													          
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