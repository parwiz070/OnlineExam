<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Segoe UI,Arial,sans-serif;
}

body{

    background:linear-gradient(135deg,#0d6efd,#3a8dde);

    display:flex;

    justify-content:center;

    align-items:center;

    height:100vh;

}

.container{

    width:900px;

    height:600px;

    display:flex;

    background:white;

    border-radius:15px;

    overflow:hidden;

    box-shadow:0px 10px 30px rgba(0,0,0,.3);

}

.left{

    width:50%;

    background:#0d6efd;

    color:white;

    padding:50px;

}

.left h1{

    font-size:38px;

    margin-bottom:30px;

}

.left p{

    line-height:30px;

}

.right{

    width:50%;

    padding:40px;

}

.right h2{

    color:#0d6efd;

    text-align:center;

    margin-bottom:25px;

}

input{

    width:100%;

    padding:14px;

    margin-bottom:18px;

    border:1px solid #ccc;

    border-radius:8px;

}

button{

    width:100%;

    padding:15px;

    background:#0d6efd;

    color:white;

    border:none;

    border-radius:8px;

    font-size:18px;

    cursor:pointer;

}

button:hover{

    background:#084298;

}

.login{

    margin-top:20px;

    text-align:center;

}

.login a{

    color:#0d6efd;

    text-decoration:none;

    font-weight:bold;

}

</style>

</head>

<body>

<div class="container">

<div class="left">

<h1>TOEFL Online Examination</h1>

<p>

Create your student account to begin your online TOEFL examination.

<br><br>

&#10004; Secure Login

<br><br>

&#10004; Instant Results

<br><br>

&#10004; Professional Testing Environment

<br><br>

&#10004; Computer Science Department

</p>

</div>

<div class="right">

<h2>Student Registration</h2>

<form action="register" method="post">

<input
type="text"
name="name"
placeholder="Full Name"
required>

<input
type="email"
name="email"
placeholder="Email Address"
required>

<input
type="password"
name="password"
placeholder="Password"
required>

<button type="submit">

Register

</button>

</form>

<div class="login">

Already have an account?

<a href="login.jsp">

Login Here

</a>

</div>

</div>

</div>

</body>

</html>