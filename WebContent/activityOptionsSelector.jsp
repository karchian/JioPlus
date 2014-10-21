<%@page import="org.json.JSONObject"%>
<%
JSONObject newEvent = (JSONObject) session.getAttribute("newEvent");
newEvent.put("eventType", request.getParameter("eventType"));
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Activity Options Selector</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/navbar-fixed-top.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
function goBack() {
    window.history.back();
}
function goNext() {
	window.location.href = "chooseLocation.jsp";
}
</script>
  </head>

  <body>
    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
<a class="navbar-brand" onclick="goBack()"><span class="glyphicon glyphicon-chevron-left"></span>Back</a>
<a class="navbar-brand pull-right" onclick="goNext()">Next<span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>        
      </div>
    </div>
<div class="container"><h2>What do you want to do?</h2>
</div>

<table class="table table-bordered"><tr><td>Search<span class="pull-right glyphicon glyphicon-search"></span></td></tr></table>
<div id="carousel-locations" class="carousel slide" data-interval="false" data-ride="carousel">
    <!-- Wrapper for slides -->
    <div class="row">
        <div class="col-xs-offset-3 col-xs-6">
            <div class="carousel-inner">
            	<div class="item active"><div class="carousel-content"><div><h3>All Locations</h3></div></div></div>
				<div class="item"><div class="carousel-content"><div><h3>Central</h3></div></div></div>
                <div class="item"><div class="carousel-content"><div><h3>North</h3></div></div></div>
                <div class="item"><div class="carousel-content"><div><h3>South</h3></div></div></div>
                <div class="item"><div class="carousel-content"><div><h3>East</h3></div></div></div>
                <div class="item"><div class="carousel-content"><div><h3>West</h3></div></div></div>
                
            </div>
        </div>
    </div>
        <!-- Controls --> <a class="left carousel-control" href="#carousel-locations" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
 <a class="right carousel-control" href="#carousel-locations" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>

</div>
    <div id="carousel-sports" class="carousel slide" data-interval="false" data-ride="carousel">
    <!-- Wrapper for slides -->
    <div class="row">
        <div class="col-xs-offset-3 col-xs-6">
            <div class="carousel-inner">
            	<div class="item active"><div class="carousel-content"><div><h3>All Sports</h3></div></div></div>
				<div class="item"><div class="carousel-content"><div><h3>Archery</h3></div></div></div>
                <div class="item"><div class="carousel-content"><div><h3>Bowling</h3></div></div></div>
                <div class="item"><div class="carousel-content"><div><h3>Cricket</h3></div></div></div>
                <div class="item"><div class="carousel-content"><div><h3>Futsal</h3></div></div></div>
            </div>
        </div>
    </div>
    <!-- Controls --> <a class="left carousel-control" href="#carousel-sports" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
 <a class="right carousel-control" href="#carousel-sports" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>

</div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
