<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOEFL Online Examination System</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Segoe UI, Arial, sans-serif;
}

body{

    background:linear-gradient(135deg,#0d6efd,#3a8dde);
    height:100vh;

    display:flex;
    justify-content:center;
    align-items:center;

}

.container{

    width:900px;
    height:520px;

    background:white;

    border-radius:15px;

    overflow:hidden;

    display:flex;

    box-shadow:0px 10px 30px rgba(0,0,0,.3);

}

.left{

    width:50%;

    background:#0d6efd;

    color:white;

    padding:60px 40px;

}

.left h1{

    font-size:38px;
    margin-bottom:25px;

}

.left h3{

    margin-bottom:20px;

}

.left p{

    line-height:28px;

}

.right{

    width:50%;

    padding:50px;

}

.right h2{

    text-align:center;

    color:#0d6efd;

    margin-bottom:35px;

}

input{

    width:100%;

    padding:14px;

    margin-top:10px;

    margin-bottom:20px;

    border:1px solid #ccc;

    border-radius:8px;

    font-size:16px;

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

.register{

    margin-top:25px;

    text-align:center;

}

.register a{

    color:#0d6efd;

    text-decoration:none;

    font-weight:bold;

}

.footer{

    margin-top:40px;

    text-align:center;

    color:gray;

    font-size:14px;

}

</style>

</head>

<body>

<div class="container">

<div class="left">

<h1>TOEFL Online Examination</h1>

<h3>Computer Science Department</h3>

<p>
&#10004; Secure Online Examination
<br><br>

&#10004; Instant Result
<br><br>

&#10004; Professional Question Bank
<br><br>

&#10004; Real-Time Assessment
<br><br>

&#10004; Developed using Java JSP &#10004;  Servlet &#10004;  MySQL
</p>

</div>

<div class="right">

<h2>Student Login</h2>

<form action="login" method="post">

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

Login

</button>

</form>

<div class="register">

New Student?

<a href="register.jsp">

Create Account

</a>

</div>

<div class="footer">

TOEFL Online Examination System © 2026

</div>

</div>

</div>

</body>

</html>