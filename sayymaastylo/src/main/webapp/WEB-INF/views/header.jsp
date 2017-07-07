

<!DOCTYPE html><html class=''>
<head><script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script><meta charset='UTF-8'><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" /><link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" /><link rel="canonical" href="https://codepen.io/dustlilac/pen/Qwpxbp" />

<link rel="shortcut icon" href="resources/images/logosayymaa_icon3.ico" />
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css'><link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css'>
<style class="cp-pen-styles">
 .navbar navbar-default {
  background-color:#581845;
  background-image: none;
  background-repeat: no-repeat;
  
 }


 
.dropdown-menu {
	min-width: 200px;
}
.dropdown-menu.columns-2 {
	min-width: 400px;
}
.dropdown-menu.columns-3 {
	min-width: 600px;
}
.dropdown-menu li a {
	padding: 5px 15px;
	font-weight: 300;
}
.multi-column-dropdown {
	list-style: none;
  margin: 0px;
  padding: 0px;
}
.multi-column-dropdown li a {
	display: block;
	clear: both;
	line-height: 1.428571429;
	color: #333;
	white-space: normal;
}
.multi-column-dropdown li a:hover {
	text-decoration: none;
	color: #262626;
	background-color: #999;
}
 
@media (max-width: 767px) {
	.dropdown-menu.multi-column {
		min-width: 240px !important;
		overflow-x: hidden;
	}
}
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,700

body {
  font-family: 'Open Sans', 'sans-serif';
}
.mega-dropdown {
  position: static !important;
}
.mega-dropdown-menu {
    padding: 20px 0px;
    width: 100%;
    box-shadow: none;
    -webkit-box-shadow: none;
}
.mega-dropdown-menu > li > ul {
  padding: 0;
  margin: 0;
}
.mega-dropdown-menu > li > ul > li {
  list-style: none;
}
.mega-dropdown-menu > li > ul > li > a {
  display: block;
  color: #222;
  padding: 3px 5px;
}
.mega-dropdown-menu > li ul > li > a:hover,
.mega-dropdown-menu > li ul > li > a:focus {
  text-decoration: none;
}
.mega-dropdown-menu .dropdown-header {
  font-size: 18px;
  color: #ff3546;
  padding: 5px 60px 5px 5px;
  line-height: 30px;
}
.carousel-inner > .item > img,
  .carousel-inner > .item > a > img 
{
      width: 70%;
	height:70%;
      margin: auto;
  }




.carousel-control {
  width: 30px;
  height: 30px;
  top: -35px;

}
.left.carousel-control {
  right: 30px;
  left: inherit;
}
.carousel-control .glyphicon-chevron-left, 
.carousel-control .glyphicon-chevron-right {
  font-size: 12px;
  background-color: #fff;
  line-height: 30px;
  text-shadow: none;
  color: #333;
  border: 1px solid #ddd;
}.carousel-control {
  width: 30px;
  height: 30px;
  top: -35px;

}
.left.carousel-control {
  right: 30px;
  left: inherit;
}
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
        
    $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideDown("400");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideUp("400");
            $(this).toggleClass('open');       
        }
    );
}




</style></head><body>
 
<nav class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
        </button>
        <img src ="resources/images/logosayymaa.jpg" class ="img-responsive "  >
    </div>
    <!--/.navbar-header-->

  <div class=" col-xs-offset-4">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"  >
        <ul class="nav navbar-nav" >
<li><a href="home"><span class="glyphicon glyphicon-user"></span> Home</a></li>
 <li><a href="aboutus"> About Us</a></li>
 <li><a href="contactus"> Contact us</a></li>
          
    <li class="dropdown">
              <a rel="nofollow" rel="noreferrer"href="#" class="dropdown-toggle" data-toggle="dropdown">Collections <b class="caret"></b></a>
              <ul class="dropdown-menu multi-column col-lg-10 columns-3">
                <div class="row">
                  <div class="col-sm-4">
                    <ul class="multi-column-dropdown">
                      <li><a rel="nofollow" rel="noreferrer"href="#"><b>Western Wear</b></a></li>
                <li class="divider"></li>

                      <li><a rel="nofollow" rel="noreferrer"href="#">Jean & Jeggings</a></li>
                      <li><a rel="nofollow" rel="noreferrer"href="#">Shirts</a></li>
                      <li><a rel="nofollow" rel="noreferrer"href="#">Shorts & 3/4 th</a></li>
                      <li><a rel="nofollow" rel="noreferrer"href="#">T-Shirts</a></li>
                     <li><a rel="nofollow" rel="noreferrer"href="#">Jacket & Coats</a></li>
                     </ul>
                  </div>
                  <div class="col-sm-4">
                    <ul class="multi-column-dropdown">
                    <li><a rel="nofollow" rel="noreferrer"href="#"> Fusion</a></li>
                    <li class="divider"></li>
                      <li><a rel="nofollow" rel="noreferrer"href="#">Blouses</a></li>
                      <li><a rel="nofollow" rel="noreferrer"href="#">Kurtas</a></li>
                    <li><a rel="nofollow" rel="noreferrer"href="#">Skirts </a></li>
                      <li><a rel="nofollow" rel="noreferrer"href="#">Salwars & Chudidars</a></li>
                     <li><a rel="nofollow" rel="noreferrer"href="#">Gowns </a></li>
                      </ul>
                  </div>
                  <div class="col-sm-4">
                    <ul class="multi-column-dropdown">
                      <li><a rel="nofollow" rel="noreferrer"href="#">Traditional Wear</a></li>
            <li class="divider"></li>
                      <li><a rel="nofollow" rel="noreferrer"href="#">Silk Sarees</a></li>
                      <li><a rel="nofollow" rel="noreferrer"href="#">Pattu Pavadai</a></li>
                     <li><a rel="nofollow" rel="noreferrer"href="#">Cotton sarees</a></li>
                      <li><a rel="nofollow" rel="noreferrer"href="#">Lehenga</a></li>
                    
                      <li><a rel="nofollow" rel="noreferrer"href="#">Choli</a></li>
                    </ul>
                  </div>
                  <li class="col-sm-9">
              <ul>
              <li class="dropdown-header">New Arrivals</li>                            
                            <div id="womenCollection" class="carousel slide" data-ride="carousel">
                              <div class="carousel-inner">
                                <div class="item active">
                                    <a href="#"><img src="F:/images/06.jpg";/&text=New+Collection" class="img-responsive" alt="product 1"></a>
                                    <h4><small>Blended silk leganha</small></h4>                                        
                                    <button class="btn btn-primary" type="button">INR 2500</button> <button href="#" class="btn btn-default" type="button"><span class="glyphicon glyphicon-heart"></span> Add to Wishlist</button>       
                                </div><!-- End Item -->
                                <div class="item">
                                    <a href="#"><img src="F:/images/08.jpg";/&text=New+Collection" class="img-responsive" alt="product 2"></a>
                                    <h4><small>Fabric Fanetics</small></h4>                                        
                                    <button class="btn btn-primary" type="button">INR 1500</button> <button href="#" class="btn btn-default" type="button"><span class="glyphicon glyphicon-heart"></span> Add to Wishlist</button>        
                                </div><!-- End Item -->
                                <div class="item">
                                    <a href="#"><img src="F:/images/04.jpg";/&text=New+Collection" class="img-responsive" alt="product 3"></a>
                                    <h4><small>Wedding Collection</small></h4>                                        
                                    <button class="btn btn-primary" type="button">INR 12500</button> <button href="#" class="btn btn-default" type="button"><span class="glyphicon glyphicon-heart"></span> Add to Wishlist</button>      
                                </div><!-- End Item -->                                
                              </div><!-- End Carousel Inner -->
                              <!-- Controls -->
                              <a class="left carousel-control" href="#womenCollection" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                              </a>
                              <a class="right carousel-control" href="#womenCollection" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                              </a>
                            </div><!-- /.carousel -->
                </div>
              </ul>
          </li>
                 
          
    <ul class="nav navbar-nav navbar-right">


          <li><a href="signup"><div class="hidden-md hidden-sm ">Sign Up</div><span class="glyphicon glyphicon-user visible-sm visible-md"></span> </a></li>
          <li><a href="login"><div class="hidden-md hidden-sm">Login</div><span class="glyphicon glyphicon-log-in visible-md visible-sm"></span> </a></li>
          <li><a href="\Register.html"><span class="glyphicon glyphicon-heart "></span> </a></li>
          <li><a href="\Register.html"><span class="glyphicon glyphicon-shopping-cart "></span> </a></li>

      </ul>
    </div>
  </div>
</nav>

<script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script src='https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script><script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js'></script>

