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
    
    
    <style>
    
    .yes {
    	background-color:green;
    }
    
    .no {
    	background-color: red;
    }
    
    #newOption{
    	background-color: yellow;
    }
    
    </style>
    
    
  


<% 
    			/*
		       	String query = request.getQueryString();
		       	String lastChar = ""+ query.charAt(query.length()-1);
       			*/
       			
       			String id = request.getParameter("id");
       			int index = Integer.parseInt(id);
       			
	     		JSONArray jArray = (JSONArray) session.getAttribute("jsonArray");
	     		
	     		JSONObject json = jArray.getJSONObject(index);
		    	String eventTitle = json.getString("eventTitle");
		  		JSONArray jsonOptions = json.getJSONArray("options");
		  		String eventType = json.getString("eventType");
		  		
		  		
		  		
		  		
		  		session.setAttribute("event",json);
		  		
		  		%>

<!-- for testing of event list -->
<% 
	String user = (String)session.getAttribute("user");
		
	//Modify option
	String sayYes = request.getParameter("sayYes");
	if(sayYes!=null){
		int i = Integer.parseInt(sayYes);
		JSONObject option  = jsonOptions.getJSONObject(i);
		String yes = option.getString("yes");  
		// add yes
		if(!yes.contains(user)){
			if(yes.length() > 0){
				yes+= (","+user);	
			} else {
				yes+= user;
			}
		}

		
		//remove from no
		String no = option.getString("no");
		no = no.replace(","+user,"");
		no = no.replace(user+",","");
		no = no.replace(user,"");
		
		option.put("yes",yes);
		option.put("no",no);
		
	}
	
	String sayNo = request.getParameter("sayNo");
	if(sayNo!=null){
		
		int i = Integer.parseInt(sayNo);
		JSONObject option  = jsonOptions.getJSONObject(i);
		String no = option.getString("no");  
		// add no
		if(!no.contains(user)){
			if(no.length() > 0){
				no+= (","+user);	
			} else {
				no+= user;
			}
		}

		
		
		//remove from yes
		String yes = option.getString("yes");
		yes = yes.replace(","+user,"");
		yes = yes.replace(user+",","");
		yes = yes.replace(user,"");
		
		option.put("yes",yes);
		option.put("no",no);
		
	}
	
	
		
		/*
 	JSONObject a = new JSONObject();
	a.put("eventTitle", "Let's Kick Ball");
	a.put("eventDate", "28th October 2014");
	a.put("eventTime", "12-3 pm");
	a.put("eventLocation", "Jurong Football Club");
	a.put("eventType", "Futsal");
	a.put("numberOfMems", 10);
	a.put("members","Tim, Jane, Abigal, Michelle, Terry, Robin Van Persie, Rooney, Messi, Ronaldo, Gerrard, Fanti Ahmad, justin bieber");
	
	JSONObject b = new JSONObject();
	JSONArray options   = new JSONArray();
	
	JSONObject o1 = new JSONObject();
	o1.put("eventDate", "20th October 2014");
	o1.put("eventTime", "7-9 pm");
	o1.put("eventLocation", "Kith cafe");
	
	o1.put("yes","");
	o1.put("no","Lim Bu,Lim Beh");
	
	JSONObject o2 = new JSONObject();
	o2.put("eventDate", "30th October 2014");
	o2.put("eventTime", "7-8 pm");
	o2.put("eventLocation", "49 Seats");
	o2.put("yes","Lim Beh, Lim Bu");
	o2.put("no","");
	
	
	options.put(o1);
	options.put(o2);
	
	b.put("eventTitle", "Dinner meetup");
	b.put("eventType", "Dinner");
	b.put("numberOfMems", 3);
	b.put("members","Lim Beh, Lim Bu");
	b.put("options",options);
	
	
	JSONObject c = new JSONObject();
	c.put("eventTitle", "Avengers 2!");
	c.put("eventDate", "10th October 2014");
	c.put("eventTime", "12-5 pm");
	c.put("eventLocation", "The Cathay");
	c.put("eventType", "Movie");
	c.put("numberOfMems", 2);
	c.put("members","Brad Pitt");
	
	JSONArray jArray = new JSONArray();
	jArray.put(a);
	jArray.put(b);
	jArray.put(c);
	
	session.setAttribute("jsonArray", jArray);
	*/
	%>  



  </head>
        	
  
        <script>

function goBack() {
	
	
	window.location.href = "home.jsp";
    
}


function selectYes(i){
	// set yes to selected
	window.location.href = "eventView.jsp?id="+<%=index%>+"&sayYes="+i;
	

}

function selectNo(i){
	
	window.location.href = "eventView.jsp?id="+<%=index%>+"&sayNo="+i;
	

}

function newOption(eventId){
	
	window.location.href = "chooseTime.jsp?eid="+eventId;
	
}


</script>
  

  
  <body>
    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
        
<a class="navbar-brand" onclick="goBack()"><span class="glyphicon glyphicon-chevron-left"></span>Back</a>
<a class="navbar-brand">Options</a>
<a class="navbar-brand pull-right" href="summary.jsp?id=<%=index%>">Summary</a>
        </div>        
      </div>
    </div>

	    	
<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
  <div class="container">
     <div class="navbar-header" id="newOption">
        
		<a class="navbar-brand" onclick="newOption(<%=index%>)" align="center">New Option</a>

     </div>    
  </div>
</nav>
		  
	
	
	
	

		  		
		  		<div class="container-fluid">
		  		
		  		<% for(int i=0; i<jsonOptions.length(); i++){ 
		  			
		  			JSONObject option = jsonOptions.getJSONObject(i);
		  			
					String eventDate = option.getString("eventDate");
					String eventTime = option.getString("eventTime");
					String eventLocation = option.getString("eventLocation");
					 
					String yes = option.getString("yes");  
		  			String no = option.getString("no");
		  			
		  			boolean voteYes = false;
		  			
		  			if(yes.contains(user)){
		  				voteYes = true;
		  			}
		  			
					boolean voteNo = false;
		  			
		  			if(no.contains(user)){
		  				voteNo = true;
		  			}
		  		
		  		%>
		  		
		  		<div class="row">
		  			<div class="col-xs-12">Date: <%= eventDate %></div>
		  			<div class="col-xs-12">Time : <%= eventTime %></div>
		  			<div class="col-xs-12">Location: <%= eventLocation %></div>
		  			<div id="yes<%=i %>" class="col-xs-6 yes" style="color:#FFF" onclick="selectYes(<%=i%>)"><%if(voteYes){ %>SELECTED <% }%>YES</div>
		  			<div id="no<%=i %>" class="col-xs-6 no" style="color:#FFF" onclick="selectNo(<%=i%>)"><%if(voteNo){ %>SELECTED <% }%>NO</div>		  			
		  		</div>
		  		
		  		<% }%>
		  				  		
		  		</div>
		  		
		  		
    	

		  
		  
		  		
	
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.session.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>