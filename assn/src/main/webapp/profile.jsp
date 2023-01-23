<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.plantadopter.adopter" import="org.hibernate.Session" import="com.hibernate.hibernate"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="profile.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>PROFILE PAGE</title>
  </head>
  <body>
	  <%
	  	String email=session.getAttribute("email").toString();
	  	String password=session.getAttribute("password").toString(); 
	  
		adopter a = new adopter(email,password);
		Session s = hibernate.getFactory().openSession();
		
		
		a = s.get(adopter.class, email);
		session.setAttribute("plants",a.getPlants());
		session.setAttribute("name",a.getName());
		session.setAttribute("phone",a.getPhone());
		
		
		s.close();
	  %>
  	  <section class="vh-100" style="background-color: #4FFFB0;">
  		<div class="container py-5 h-100">
    		<div class="row d-flex justify-content-center align-items-center h-100">
      			<div class="col col-lg-6 mb-4 mb-lg-0">
        			<div class="card mb-3" style="border-radius: .5rem;">
          				<div class="row g-0">
            				<div class="col-md-4 gradient-custom text-center text-white"
              				style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
              					<img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                				alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
              					<h5><%=a.getName()%></h5>
              					<p>Plant Adopter</p>
              
              					<form method="post" action="edit.jsp">
              						<button type="submit" class="btn btn-outline-dark" data-mdb-ripple-color="dark" style="z-index: 1;">
                						Edit profile
              						</button>
              					</form>
            				</div>
            				
            				<div class="col-md-8">
              					<div class="card-body p-4">
					                <h6>Information</h6>
					                <hr class="mt-0 mb-4">
					                <div class="row pt-1">
					                  <div class="col-6 mb-3">
					                    <h6>Email</h6>
					                    <p class="text-muted"><%=a.getEmail() %></p>
					                  </div>
					                  <div class="col-6 mb-3">
					                    <h6>Phone</h6>
					                    <p class="text-muted"><%=a.getPhone()%></p>
					                  </div>
                					</div>
                					<form method="post" action="adoptServlet">
					                <h6>Plants</h6>
					                <hr class="mt-0 mb-4">
					                <div class="row pt-1">
					                  <div class="col-6 mb-3">
					                    <h6>Total Plants</h6>
					                    <p class="text-muted"><%=a.getPlants()%></p>
					                  </div>
                  
                  					  <div class="col-6 mb-3">
						                <div class="form-outline">
						                  <input type="number" id="form3Example2" class="form-control" name="plants"/> 
						                </div>
              
              							
					                    <button type="submit" name="plants" class="btn btn-outline-dark" data-mdb-ripple-color="dark"
					                		style="z-index: 1;">
					                		Adopt
					              		</button>
					              		</form>
                  					  </div>
                					</div>
                					<div class="d-flex justify-content-start">
                						<form method="post" action="signoutServlet">
					                    <button type="submit" class="btn btn-outline-dark" data-mdb-ripple-color="dark"
					                		style="z-index: 1;">
					                		Sign Out
					              		</button>
					              		</form>
					              		<form method="post" action="deleteServlet">
					              		<button type="submit" class="btn btn-outline-dark" data-mdb-ripple-color="dark"
					                		style="z-index: 1;">
					                		Delete Account
					              		</button>
					              		</form>
					                </div>
					              </div>
					            </div>
					          </div>
					        </div>
					      </div>
					    </div>
					  </div>
     </section>    
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>    
  </body>
</html>
    