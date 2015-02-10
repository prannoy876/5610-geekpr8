<%@ Page Language="C#" %>

<script runat="server">
    <%-- This demo page has no server side script --%>
</script>



 <!DOCTYPE html>
<html lang="en">
<head>
	<title>Prannoy Roche</title>
	<meta charset="utf-8">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
	<link rel="stylesheet" type="text/css" href="css-home/reset.css">
	<link rel="stylesheet" type="text/css" href="css-home/main_responsive.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/carouFredSel.js"></script>
    <script type="text/javascript" src="js/main.js"></script>


    <style>
    
.article
{
  float:left;
  margin:5px;
  padding: 5px;
  width:45%;
  
}

h1{ font-family: "Simonetta", "Trebuchet MS", Arial, sans-serif; color: #454545; font-size: 3.6em; margin-bottom: 6px; }
h2 { font-family: "Simonetta", "Trebuchet MS", Arial, sans-serif; color: #484848; font-size: 2.5em; margin-bottom: 10px; text-decoration: underline; }
h3 {margin-bottom: 20px;
    color: #767575;
    font-family: "lato_bold", arial;
    font-size: 22px;
    font-weight: bold;
    letter-spacing: 1px;
}
h4 { font-family: "Trebuchet MS", Verdana, Arial, sans-serif; color: #656565; font-weight: bold; font-size: 1.75em; margin-bottom: 4px; }

p { font-family: "Balthazar", "Droid Serif", serif; color: #565656; font-size: 1.8em; line-height: 1.4em; margin-bottom: 15px; padding-left: 35px; }

</style>
</head>
<body>

	<header>
		<div class="wrapper">
			
			<a href="#" class="menu_icon" id="menu_icon"></a>
			<nav id="nav_menu">
				<ul>
				
                <li><a href="statistics/" target="_blank">Statistics</a></li>
                <li><a href="source/" target="_blank">Source</a></li>
                <li><a href="search/" target="_blank">Search</a></li>
                <li><a href="searchtree/" target="_blank">SearchTree</a></li>
                <li><a href="textview/" target="_blank">TextView</a></li>
                <li><a href="filelist.aspx" target="_blank">FileList</a></li>
                <li><a href="autofile.aspx" target="_blank">AutoFile</a></li>
                <li><a href="images/autoimage.aspx" target="_blank">Images</a></li>
                <li><a href="blog/" target="_blank">Blog</a></li>
                <li><a href="Experiments.aspx" target="_blank">Experiments</a></li>



				</ul>
			</nav>
		</div>
	</header><!--  End Header  -->

	<section class="prannoy">
       <img src="myImages/Friend.jpg" />
        <div class="article">
       <h1>Prannoy Roche</h1>
       <h3>I am currently a Master's candidate at Northeastern University pursuing my 
           Master's degree in Computer Science.My interests are Big Data,Machine Learning
           and Web/Back-End Development.This website is being developed as part of the
           Web Development course under the tutelage of Jose Annunziato.I will learning
           more about technologies like Angular.js,Node,js,MongoDB and Express in this 
           course.Looking forward to an exciting learning experience.</h3>
       </div>
	</section>

	<section class="features">

		<div class="wrapper">
				<div class="feature">
					<div class="ficon">
						<img src="myImages/project.png" alt="">
					</div>
					<div class="details_exp">
						<h3>My Project</h3>
						<p>This will be the link to my Project.It is still a work in Progress.</p>
						<a href="#">more details<span>→</span></a>
					</div>
				</div>
				<div class="feature">
					<div class="ficon">
						<img src="myImages/Me.jpg"" alt="">
					</div>
					<div class="details_exp">
						<h3>About Me</h3>
						<p>I am currently writing a blog.Will give you guys the
                           link later.</p>
						<a href="#">more details<span>→</span></a>
					</div>
				</div>
				<div class="feature">
					<div class="ficon">
						<img src="myImages/Resume.jpg" alt="">
					</div>
					<div class="details_exp">
						<h3>My Resume</h3>
						<p>Currently Looking for Internship opportunties during the Summer.</p>
						<a href="#">more details<span>→</span></a>
					</div>
				</div>
			</div>
            </section>

	<footer>
		<p class="rights">Copyright © Prannoy Roche</a></p>
	</footer><!--  End Footer  -->

</body>
</html>

