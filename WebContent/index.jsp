<%
if (session.getAttribute("jsonArray")!=null) {
	response.sendRedirect("home.jsp");
	return;
}
%>

<html>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0;">
    <title>Welcome</title>
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
  	<link href="css/bootstrap.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="slick/slick.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $('.welcomeSlides').slick({

            });
        });
    </script>


    </head>
    <body>


    <div class="welcomeSlides">
        <div><img src="images/pic1.png"></div>
        <div><img src="images/pic2.png"></div>
        <div><img src="images/pic3.png"></div>
        <div><img src="images/pic4.png"></div>
        <div><a href="home.jsp"><img src="images/pic5.png"></a></div>
    </div>



    </body>
</html>
