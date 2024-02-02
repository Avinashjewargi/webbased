<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet"  href="stylee.css" >

</head>
<body>
    <div class="container">
        <div class="row col-md-6 col-md-offset-3">
            <div class="panel panel-primary">
                <div class="panel1-heading">
                    <img src="./p1.jpg" alt="logo"/>
                    <h1>Registration Form</h1>
                </div>
                <div class="panel-body">
                    <form action="student1.jsp" method="post">
                        <div class="form-group">
                            <label for="first name">First Name</label>
                            <input type="text" class="form-control" id="firstName" name="firstName"/>
                        </div>
                        <div class="form-group">
                            <label for="last name">Last Name</label>
                            <input type="text" class="form-control" id="lastName" name="lastName"/>
                        </div>
                        <div class="form-group">
                            <label for="gender">Gender  </label>
                       
                        <label for="male" class="radio-inline"><input type="radio" name="gender" value="m" id="male" >Male</label>
                        <label for="female" class="radio-inline"><input type="radio" name="gender" value="f" id="female">Female</label>
                        <label for="others" class="radio-inline"><input type="radio" name="gender" value="o" id="others">Others</label>
                    </div>
                    
           
            <div class="form-group">
                <label for="email">Email    </label>
                <input type="email" class="form-control" id="email" name="email"/>
            </div>
            <div class="form-group">
                <label for="password">Password  </label>
                <input type="password" class="form-control" id="password" name="password"/>
            </div>
            <div class="form-group">
                <label for="number">Phone Number</label>
                <input type="number" class="form-control" id="number" name="number"/>
            </div>
            <input type="submit" class="btn btn-primary">
                    </form>
                    <div class="panel-footer text-right">

                    </div>
                    </div>
                    </div>
                </div>
            </div>
       
</body>
</html>