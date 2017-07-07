<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
   <title>SayyMaa Stylo-Contact Us</title>
    <link rel="shortcut icon" href="resources/images/logosayymaa_icon3.ico"/>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
          
    

    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>  
    
    
</head>
<style>

input[type=text], select, textarea {
    width: 40%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: ;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: ;
}

.container {
    border-radius: 5px;
    background-color: violet;
    padding: 20px;
}
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div>
<div class="container-fluid">
<body style="background-color: ">
 <div class=" col-md-6" style="background-color:;">

<div style=width: "90%" height="200";backgroud-color:pink;>
<iframe width="90%" height="200" src="https://www.maps.ie/create-google-map/map.php?
width=90%&amp;height=200&amp;hl=en&amp;coord=11.0170364,76.96646940000005&amp;
q=123%20crosscut%20Road%2C%20Gandhipuram%2C%20Coimbatore%2C%20Tamilnadu%2CIndia+(SayyMa%20Stylo)&amp;
ie=UTF8&amp;t=&amp;z=14&amp;iwloc=A&amp;output=embed" frameborder="0" scrolling="no" marginheight="0"
 marginwidth="0"><a href="https://www.mapsdirections.info/it/misura-distanza-area-google-maps.html">
www.mapsdirections.info</a></iframe></div><br />
<div style=width: "90%" height="200";backgroud-color:"pink;">
<h1>Contact us</h1>
<p>123 Cross cut Road,
 <br/>Gandhipuram,
<br/>Coimbatore- 641003,
<br/>Tamilnau,India.
<br/>phone:9845000000.
<br/>E-mail:malathipraghad@gmail.com.
<br/>Website:www.sayymaastylo.org.</p>
</div>
  
 </div>

<div class ="col-lg-6">
          <div class ="panel panel-default myPanel">
              <div class ="panel-heading">
                    
              </div>
              <div class ="panel-body">
                    <form id ="enquiryForm" method ="post" class ="form-horizontal"  role ="form">
                        <fieldset>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">First Name </label>
                                  <div class="col-sm-8">
                                      <form input type="email" path= class="form-control" name="firstName" placeholder="Enter your First Name">
                                      
                                  </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Last Name</label>
                                  <div class="col-sm-8">
                                      <input type="email" class="form-control" name="lastName" placeholder="Enter your last Name">
                                  </div>
                            </div>


                            <div class="form-group">
                                <label class="col-sm-2 control-label">E-mail </label>
                                  <div class="col-sm-8">
                                      <input type="email" class="form-control" name="email" placeholder="Enter your email address">
                                  </div>
                            </div>

                            <div class="form-group">
                                  <label  class="col-sm-2 control-label">Telephone </label>                   
                                    <div class="col-sm-8">
                                        <input type="tel" class="form-control" name="phoneNumber" placeholder="+CountryCode-MobileNumber">
                                    </div>
                            </div>

                            <div class="form-group">
                                  <label  class="col-sm-2 control-label">Subject</label>
                                      <div class="col-sm-8">
                                          <input type="text" class="form-control" name="subject" placeholder="Enter Subject">
                                      </div>
                            </div>

                            <div class="form-group">
                                  <label  class="col-sm-2 control-label">Message</label>
                                       <div class="col-sm-8">
                                           <textarea class="form-control" name="message"  placeholder="Enter your enquiry for us here. We will get back to you within 2 business days." rows="7"\></textarea>
                                        </div>
                            </div>

                          
</fieldset>
</form>
</div>
</div>
</div>

                          
</body>
 <jsp:include page="footer.jsp"></jsp:include>

</html>