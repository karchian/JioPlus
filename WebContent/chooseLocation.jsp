
<html>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Welcome</title>
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
  	<link href="css/bootstrap.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="slick/slick.min.js"></script>

     <script>
    function goBack() {
        window.history.back();
    }

    function goNext() {
        var current = $('.welcomeSlides').slickCurrentSlide();
        
        var location = "";

        if(current ==0){
            location = "Ippudo Mandarin Gallery";
        } else if(current == 1){
            location = "Kiseki";
        } else if (current == 2){
            location = "Mikuni";
        }

        window.location.href = "eventConfirmation.jsp?location="+location;
    }
    </script>

    <script type="text/javascript">
        $(document).ready(function(){
            $('.welcomeSlides').slick({
                adaptiveHeight: true
            });
        });
    </script>

    </head>
    <body>

 <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
<a class="navbar-brand" onclick="goBack()"><span class="glyphicon glyphicon-chevron-left"></span>Back</a>
<a class="navbar-brand pull-right" onclick="goNext()">Next<span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>        
      </div>
    </div>

    <div class="welcomeSlides">
        <div><img src="images/location1.jpg"></div>
        <div><img src="images/location2.jpg"></div>
        <div><img src="images/location3.jpg"></div>
    </div>
    
    </body>
</html>