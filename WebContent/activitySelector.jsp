<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Activity Selector</title>

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
</script>
  </head>

  <body>
    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
          <div class="navbar-header">
<a class="navbar-brand" onclick="goBack()"><span class="glyphicon glyphicon-chevron-left"></span>Back</a>
        </div>  
        </div>  
        </div>        
      </div>
    </div>
<div class="container"><h2>What do you want to do?</h2>
</div>

<table class="table table-bordered"><tr><td>Search<span class="pull-right glyphicon glyphicon-search"></span></td></tr></table>
<a href="activityOptionsSelector.jsp?eventType=Movie">
  <img style="float:left" src="images/movie.png" width="160" height="120" >
</a>
<a href="activityOptionsSelector.jsp?eventType=Sports">
  <img style="float:left" src="images/sports.png" width="160" height="120" >
</a>
<a href="activityOptionsSelector.jsp?eventType=Outdoor">
  <img style="float:left" src="images/outdoor.png" width="160" height="120" >
</a>
<a href="activityOptionsSelector.jsp?eventType=Entertainment">
  <img style="float:left" src="images/entertainment.png" width="160" height="120" >
</a>
<a href="activityOptionsSelector.jsp?eventType=Shopping">
  <img style="float:left" src="images/shopping.png" width="160" height="120" >
</a>
<a href="activityOptionsSelector.jsp?eventType=Others">
  <img style="float:left" src="images/others.png" width="160" height="120" >
</a>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
