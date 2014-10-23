<%@page import="org.json.JSONObject"%>
<%
JSONObject newEvent = (JSONObject) session.getAttribute("newEvent");
String invitees = request.getParameter("invitees");
String members = invitees.replaceAll(",", ", ");
newEvent.put("members", members);
String[] arr = invitees.split(",");
newEvent.put("numberOfMems", arr.length);
String eventType = newEvent.getString("eventType");
%>

<html>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Choose A Timing</title>
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

    function goNext(eventType) {
        var current = $('.welcomeSlides').slickCurrentSlide();
        
        var eventDate = "";
        var eventTime = "";

        if(current ==0){
        	eventDate = "28 Oct 2014";
        	eventTime = "6:00PM-9:00PM";
        } else if(current == 1){
        	eventDate = "03 Nov 2014";
        	eventTime = "8:00PM-10:00PM";
        } else if (current == 2){
        	eventDate = "10 Nov 2014";
        	eventTime = "5:30PM-8:00PM";
        } else if (current == 3){
        	eventDate = "20 Nov 2014";
        	eventTime = "7:00PM-9:30PM";
        }
        
        if (eventType=="Activity") {
        	window.location.href = "activitySelector.jsp?eventDate=" + eventDate + "&eventTime=" + eventTime;
        } else {
        	window.location.href = "mealOptionsSelector.jsp?eventDate=" + eventDate + "&eventTime=" + eventTime;
        }
    }
    </script>

    <script type="text/javascript">
        $(document).ready(function(){
            $('.welcomeSlides').slick({

            });
        });
    </script>

    </head>
    <body>

 <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
<a class="navbar-brand" onclick="goBack()"><span class="glyphicon glyphicon-chevron-left"></span>Back</a>
<a class="navbar-brand pull-right" onclick="goNext('<%= eventType %>')">Next<span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>        
      </div>
    </div>

    <div class="welcomeSlides">
        <div><img src="images/weather1.png"></div>
        <div><img src="images/weather2.png"></div>
        <div><img src="images/weather3.png"></div>
        <div><img src="images/weather4.png"></div>
    </div>
    </body>
</html>
