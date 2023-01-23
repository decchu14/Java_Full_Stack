<!doctype html>
<html lang="en">
  <head>    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>LOGIN PAGE</title>
  </head>
  <body>
 
    <section class="vh-100" style="background-color: #00FA9A;">
  		<div class="container py-5 h-100">
    		<div class="row d-flex justify-content-center align-items-center h-100">
      			<div class="col-12 col-md-8 col-lg-6 col-xl-5">
        			<div class="card shadow-2-strong" style="border-radius: 1rem;">
          				<div class="card-body p-5 text-center">

            				<h3 class="mb-5">Sign in</h3>
								<form method="post" action="loginServlet">
            						<div class="form-outline mb-4">
              							<input type="email" id="typeEmailX-2" class="form-control form-control-lg" name="email"/>
              							<label class="form-label" for="typeEmailX-2">Email</label>
            						</div>

            						<div class="form-outline mb-4">
              							<input type="password" id="typePasswordX-2" class="form-control form-control-lg" name="password"/>
              							<label class="form-label" for="typePasswordX-2">Password</label>
            						</div>

            						<button class="btn btn-success btn-lg btn-block" type="submit">Login</button>
             					</form>
			
								<br><br>
								
								<a href="register.jsp">Dont have an Account? Sign Up</a>
            					
            					<hr class="my-4">          
         	 			</div>
        			</div>
      			</div>
    		</div>
  		</div>
	</section>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>   
  
  </body>
</html>
