  <%@page contentType="text/html; charset=UTF-8"%>
  <%@page import="org.json.JSONObject"%>
  <%@page import="org.json.JSONArray"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Event</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/navbar-fixed-top.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    
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

	
	
    	<% 
		       	String query = request.getQueryString();
		       	String lastChar = ""+ query.charAt(query.length()-1);
       			int index = Integer.parseInt(lastChar);
	     		JSONArray jArray = (JSONArray) session.getAttribute("jsonArray");
	     		JSONObject json = jArray.getJSONObject(index);
		    	String eventTitle = json.getString("eventTitle");
				String eventDate = json.getString("eventDate");
				String eventTime = json.getString("eventTime");
				String eventLocation = json.getString("eventLocation");
				String eventType = json.getString("eventType"); 
				int numberOfMems = json.getInt("numberOfMems"); 
				String members = json.getString("members");  %>
    	
   
		    	<div class="jumbotron text-center">
		    		 <div class= "container" >
				  		<h1 ><%=eventTitle %> </h1>
				  		<p class="text-info"><%=eventTime %></p>
				  		<p class="text-info"><%=eventDate %></p>
				  		<p><%=eventType %></p>
				  		<p class = "text-success"><%=eventLocation %></p>
				  		<p><strong>WITH</strong></p>
				  		<p class = "text-primary"><%=members%></p>
					</div>
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