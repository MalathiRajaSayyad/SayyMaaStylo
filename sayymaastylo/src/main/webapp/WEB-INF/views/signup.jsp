<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <title>SayyMaa Stylo</title>
    <link rel="shortcut icon" href="resources/images/logosayymaa_icon3.ico" />
   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
          
    

    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>  
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> 
    </script>

</head>

<body >
<jsp:include page="header.jsp"></jsp:include>
 <!-- Start of Registration Form -->
  <div class="container myPanel">
      <div class=" formHeader ">

      
      <div class ="row ">

          <div class ="col-lg-10 col-lg-offset-1 ">

              <div class="panel panel-default">

                  <div class="panel-heading text-center">
                     <img src ="resources/images/signup1.png"/>
                  </div>

                  <div class="panel-body">  
                                              
                    <form:form id="registrationForm" class="form-horizontal"
								method="post" action="adduser" modelAttribute="User">
								<fieldset>
									<legend> Personal Details </legend>

									<div class="form-group">
										<label class="col-sm-2 control-label">First Name </label>
										<div class="col-sm-6">
											<form:input type="text" class="form-control has-error" name="userFname"
												path="userFname" placeholder="Enter your First Name" />
                        					<form:errors path="userFname" cssClass="error"/>
                    					</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">Last Name</label>
										<div class="col-sm-6">
											<form:input type="text" class="form-control" name="userLname"
												path="userLname" placeholder="Enter your last Name" />
										     <form:errors path="userLname" cssClass="error"/>

										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">Date of Birth</label>
										<div class="col-sm-6">
											<form:input type="date" class="form-control" name="userDob"
												path="userDob" placeholder="dd/MM/yyyy" />
										     <form:errors path="userDob" cssClass="error"/>
          
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">E-mail</label>
										<div class="col-sm-6">
											<form:input type="email" class="form-control"
												name="userEmail" path="userEmail" placeholder="email" />
										    <form:errors path="userEmail" cssClass="error"/>

										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">Telephone </label>
										<div class="col-sm-6">
											<form:input type="tel" class="form-control" name="userPhno"
												path="userPhno" placeholder="Telephone" />
											 <form:errors path="userPhno" cssClass="error"/>

										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">Address </label>
										<div class="col-sm-6">
											<form:textarea class="form-control" name="userAddress"
												path="userAddress" placeholder="Primary Address" rows="5" />
											</textarea>
											
												<form:errors path="userAddress" cssClass="error" />
											
										</div>
									</div>
									<legend>Create a new Account</legend>
									<div class="form-group ">
										<label class="col-sm-2 control-label">User Name</label>
										<div class="col-sm-6">
											<form:input type="text" class="form-control" name="username"
												path="username" placeholder=" Create a unique user name " />											
												<form:errors path="username" cssClass="error"  />
											
										</div>
									</div>
									<div class="form-group required">
										<label class="col-sm-2 control-label">Password</label>
										<div class="col-sm-6">
											<form:input type="password" name="userpswd" path="userpswd"
												placeholder="user password" class="form-control " />											
												<form:errors path="userpswd" cssClass="error" />
											
										</div>
									</div>
									<div class="form-group required">
										<label class="col-sm-2 control-label">Password Confirm</label>
										<div class="col-sm-6">
											<form:input type="password" class="form-control "
												name="confirmPswd" path="confirmPswd"
												placeholder="Retype Password" />
												<form:errors path="confirmPswd" cssClass="error" />
										</div>
									</div>

									<div class="col-sm-10 ">
										<button type="submit" class="signup-btn btn-primary col-sm-3 col-md-offset-5">
										        Submit 
										 </button>
									</div>
								</fieldset>
							</form:form>
          </div>
        </div>
    </div>
  </div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>



