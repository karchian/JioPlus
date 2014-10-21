  <%@page contentType="text/html; charset=UTF-8"%>
  <%@page import="org.json.JSONObject"%>
  <%@page import="org.json.JSONArray"%>
  <%
JSONObject newEvent = (JSONObject) session.getAttribute("newEvent");
newEvent.put("eventLocation", request.getParameter("location"));
System.out.println(newEvent);
%>

<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Event Confirmation</title>
    
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
		
		<!-- for testing of event list -->
		 <%-- <% JSONObject a = new JSONObject();
			a.put("eventTitle", "Let's Kick Ball");
			a.put("eventDate", "28th October 2014");
			a.put("eventTime", "12-3 pm");
			a.put("eventLocation", "Jurong Football Club");
			a.put("eventType", "Futsal");
			a.put("numberOfMems", 10); 
			a.put("members","Tim, Jane, Abigal, Michelle, Terry, Robin Van Persie, Rooney, Messi, Ronaldo, Gerrard, Fanti Ahmad, justin bieber");
			session.setAttribute("newEvent", a);
			%> --%>
		
	
</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
        	<a class="btn btn-default customized-navbar-btn" onclick="goBack()"><span class="glyphicon glyphicon-chevron-left"></span>Change</a>
			<a class="btn btn-default customized-navbar-btn pull-right" href="home.jsp" onclick=<%session.setAttribute("confirm", "true"); %>>Confirm    <span class="glyphicon glyphicon-thumbs-up"></span></a>
        </div>        
      </div>
    </div>
 
    	<% if (null == session.getAttribute("newEvent")) { %>
    			<h3> opps something went wrong here.</h3>
    	<% } else {
	     		JSONObject json = (JSONObject) session.getAttribute("newEvent");
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
		  <%} %> 		

</body>
</html>