<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <title>SayyMaa Stylo-Member
    Login Page</title>
    <link rel="shortcut icon" href="resources/images/logosayymaa_icon3.ico" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
          
    

    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
    <link rel="stylesheet" href= "C:\Users\Raghunandan\Documents\Swaroopa\DT\Html pgms\Project\myStyle.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>  
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> 
    </script>

</head>
<body>
<!-- Start of Page header -->
  
<jsp:include page="header.jsp"></jsp:include>

<!-- End of Page header -->




<div class="container">
  <div class=" formHeader ">
      <div class ="row ">
          <div class ="col-lg-5 col-xs-offset-3 ">
              <div class="panel panel-default">

                  <div class="panel-heading text-center">
                     <img src ="resources/images/login.png"/>
                  </div>

                  <div class="panel-body">                          
                    <form id ="loginForm" class ="form-horizontal" action="adduser"method ="post"  role ="form">
                      <fieldset>

                          <div class="form-group">
                              <label class="control-label sr-only">User Name</label>
                              <div >
                              <input type="text" class="form-control input-md" name="lguser" placeholder="Enter your username"/>
                              </div>
                          </div>

                        <div class="form-group">
                              <label class="control-label sr-only">user password</label>
                              <div >
                            <input type="password" class="form-control input-md" name="lg_pswd" placeholder="Enter your password"/ > 
                              </div>
                        </div>

                        <div class="form-group form-group-checkbox ">
                               <input type="checkbox" id="lg_remember" name="lg_remember" style ="margin-left :25px;"/>
                               <div>
                               <label for="lg_remember"><h5><b>Remember me </b></h5></label><span style ="margin-right:0px ;margin-left:150px">Forgot Password ? <a href="#" ><b>Click here</b></a></span>
                               </div>                  

                        </div>
                    
                                                
                        <div class="etc-login-form">
                            <p >New user ? <a href="#"><b>Sign Up</b></a></p>
                        </div>       
                    <div>
                              <button type="submit" class="login-button btn-primary col-xs-4 col-md-offset-4" >Login </button/>
                        </div>                    
                             
                      </fieldset>
                    </form>
                </div>
          </div>
       </div>
    </div>
   </div>
</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>