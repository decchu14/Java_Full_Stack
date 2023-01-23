<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.plantadopter.adopter" import="org.hibernate.Session" import="com.hibernate.hibernate"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>EDIT PAGE</title>
  </head>
  <body>
	  <%
	  String email=session.getAttribute("email").toString();
	  adopter a = new adopter();	  
	  Session s = hibernate.getFactory().openSession();
	  a = s.get(adopter.class, email);
	  s.close();
	  %>
	  <section class="text-center">
  		<div class="p-5 bg-image" style="background-color: #006A4E;height: 300px;"></div>
  		<div class="card mx-4 mx-md-5 shadow-5-strong" style="margin-top: -100px;
        background: hsla(0, 0%, 100%, 0.8);backdrop-filter: blur(30px);">
		    <div class="card-body py-5 px-md-5">
		      <div class="row d-flex justify-content-center">
		        <div class="col-lg-8">
		          <h2 class="fw-bold mb-5">Edit Profile</h2>
		          <form method="post" action="editServlet">
		            <div class="row">
		              <div class="col-md-6 mb-4">
		                <div class="form-outline">
		                  <input type="text" id="form3Example1" class="form-control" name="name" value="<%=a.getName()%>"/>
		                  <label class="form-label" for="form3Example1">Name</label>
		                </div>
		              </div>
		              <div class="col-md-6 mb-4">
		                <div class="form-outline">
		                  <input type="tel" id="form3Example2" class="form-control" name="phone" value="<%=a.getPhone()%>"/>
		                  <label class="form-label" for="form3Example2">Contact</label>
		                </div>
		              </div>
		            </div>
		            <div class="form-outline mb-4">
		              <input type="email" id="form3Example3" class="form-control" name="email" value="<%=a.getEmail()%>" />
		              <label class="form-label" for="form3Example3">Email address</label>
		            </div>
		            <div class="form-outline mb-4">
		              <input type="password" id="form3Example4" class="form-control" name="password" value="<%=a.getPassword()%>"/>
		              <label class="form-label" for="form3Example4">Password</label>
		            </div>
		            <button type="submit" class="btn btn-success btn-block mb-4">
		              Edit Info
		            </button>
          			<br><br>
          			<a href="profile.jsp">Back</a>
          		  </form>
        		</div>
      		</div>
    	</div>
  	</div>
	</section> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>
