<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html lang="en">
<head>
    <meta charset="utf-8">
   
    <title>URL Shortner</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .imaginary_container{
    margin-top:20%; /* Don't copy this */
}
.stylish-input-group .input-group-addon{
    background: white !important; 
}
.stylish-input-group .form-control{
    border-right:0; 
	box-shadow:0 0 0; 
	border-color:#ccc;
}
.stylish-input-group button{
    border:0;
    background:transparent;
}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
           <div class="imaginary_container"> 
               
             
            <form class="form-inline" action="index.jsp" method="post">
  
  <div class="form-group">
    <label for="examplle">URL Shortner</label>
    <input type="text" class="form-control" id="long_url" name="url_long" placeholder="Paste your URL here">
  </div>
  <button type="submit" class="btn btn-default" id="short_submit">Short it</button>
</form>
        </div>
    </div>
	</div>
    <div class="row" >
        <div class="col-sm-6 col-sm-offset-3">
            <div class="imaginary_container">
            <p><b>Original URL:</b>
            <%String url_long= request.getParameter("url_long");
            out.println(url_long);%>
         </p>
         </div>
         <%
           final String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

            int count=6;
        StringBuilder builder = new StringBuilder();
        while (count-- != 0) {
            int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
            builder.append(ALPHA_NUMERIC_STRING.charAt(character));
        } 
            String url_short = builder.toString();
        %>
        <p><b>Shorten URL:</b> <span>localhost/url-short/</span>
        <% out.println(url_short); %> </p>
        </div>
    </div>
    <% try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/short", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into shortner(url_long,url_short)values('"+url_long+"','"+url_short+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

</div>


<script type="text/javascript">

</script>
</body>
</html>
