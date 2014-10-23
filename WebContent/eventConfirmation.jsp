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
    			window.history.back()
			}
					
		</script>
		
		<!-- for testing of event list -->
		  <%-- <% JSONObject a = new JSONObject();
			a.put("eventTitle", "Let's Kick Ball");
			a.put("eventDate", "28th October 2014");
			a.put("eventTime", "12-3 pm");
			a.put("eventLocation", "Jurong Football Club");
			a.put("eventType", "Futsal");
			a.put("eventAddress","2 Jurong East St 21 Singapore 609517");
			a.put("numberOfMems", 10); 
			a.put("members","Tim,Jane,Abigal,Michelle,Terry,Robin Van Persie,Rooney,Messi,Ronaldo,Gerrard,Fanti Ahmad,justin bieber");
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
	     		JSONObject json = (JSONObject) session.getAttribute("newEvent"); %>
	     		<div class="container">
	     			<div class="customized-row">
		     			<img class="img-rounded" alt="Rounded Image" src="images/dinner.png" height="30%" width="100%" >
		     		</div> 
	     		</div>
	     		
	     		<%
	     			String eventTitle = json.getString("eventTitle");
					String eventType = json.getString("eventType"); 
	     		%>
	     		
	     		<div class = "customized-container-fluid">	
		     		<div class="row"> 
		     			 <div class="col-xs-8 col-md-3 pull-left">
		     			 	<span class="glyphicon glyphicon-info-sign"></span>
		     				<font size="4" color="blue"><cetner><strong>&nbsp;  <%=eventTitle %></strong></center></font>
		     			 </div>
		     			 
		     			  <div class="col-xs-4 col-md-3">
		     			 	<em><font size="3" color="grey"><center><%=eventType %></center></font></em>
		     			 </div>	     			
		     		</div>
		     		
		     	<%
		     		String eventDate = json.getString("eventDate");
					String eventTime = json.getString("eventTime");
		     	%>	
		     		
		     		<div class="row"> 
		     			  <div class="col-xs-12 col-md-12">
		     			 	<font size="3" ><%=eventDate %></font>
		     			 </div>	     			
		     		</div>
		     		
		     		<div class="row"> 
		     			  <div class="col-xs-12 col-md-1 ">
		     			 	<font size="3" ><%=eventTime %></font>
		     			 </div>	     			
		     		</div>
		     		
		     		</br>
		     		
		     		<%
		     			String eventLocation = json.getString("eventLocation");
		     			String eventAddress = json.getString("eventAddress");
		     		%>
		     		
		     		<div class="row"> 
		     			  <div class="col-xs-12 col-md-1 ">
		     			 	<strong><font size="3" ><%=eventLocation %></font></strong>
		     			 </div>	     			
		     		</div>
		     		
		     		<div class="row"> 
		     			  <div class="col-xs-8 col-md-1 ">
		     			 	<font size="3" ><%= eventAddress %></font>
		     			 </div>	     			
		     		</div>
		     		
		     		</br>
		    
		    		<%
						String members = json.getString("members"); 
						String[] memberList = members.split(",");
						int numberOfMems = memberList.length;
						
		    		%>
		    		
	  				
					<div class="row"> 
		     			  <div class="col-xs-8 col-md-1 ">
		     			 	<strong><font size="4" >Invitees</font></strong>
		     			 	<span class="badge"><%=numberOfMems %></span>
		     			 </div>	     			
		     		</div>
		     		
		     		</br>
		     		
		     		<div class="row">
		     		
		     			<%
		     				for (String name:memberList) {
		     			%>
				     		<div class="col-xs-4 col-md-1">
				            	<a href="#">
				                <img src="images/stickman.png" class="img-circle" alt="Circular Image" width="100%" height="100%">
				           		 </a>
				           			<div>
				           				<font size="3"><center><%=name %></center></font>
				           			</div>
				           		 
				           	</div>	 
				         <% } %>
			        </div> 	
       
			<% } %>	

</body>
</html>