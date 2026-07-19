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
    font-family:Segoe UI,Arial,sans-serif;
}

body{
    background:#f4f7fc;
}

/* Header */

header{

    background:#0d6efd;
    color:white;

    padding:20px 60px;

    display:flex;

    justify-content:space-between;

    align-items:center;

}

header h2{

    font-size:30px;

}

nav a{

    color:white;

    text-decoration:none;

    margin-left:25px;

    font-size:18px;

}

nav a:hover{

    text-decoration:underline;

}

/* Hero Section */

.hero{

    display:flex;

    justify-content:space-between;

    align-items:center;

    padding:80px;

}

.left{

    width:50%;

}

.left h1{

    font-size:55px;

    color:#0d6efd;

    margin-bottom:20px;

}

.left p{

    font-size:20px;

    line-height:34px;

    color:#555;

}

.buttons{

    margin-top:40px;

}

.buttons a{

    display:inline-block;

    padding:15px 30px;

    margin-right:15px;

    text-decoration:none;

    border-radius:8px;

    font-size:18px;

}

.login{

    background:#0d6efd;

    color:white;

}

.register{

    background:#198754;

    color:white;

}

.admin{

    background:#343a40;

    color:white;

}

/* Image */

.right{

    width:40%;

    text-align:center;

}

.right img{

    width:100%;

}

/* Features */

.features{

    display:flex;

    justify-content:space-around;

    margin:60px;

}

.card{

    width:28%;

    background:white;

    padding:25px;

    border-radius:10px;

    text-align:center;

    box-shadow:0px 2px 12px rgba(0,0,0,.15);

}

.card h3{

    color:#0d6efd;

    margin-bottom:15px;

}

/* Footer */

footer{

    background:#0d6efd;

    color:white;

    text-align:center;

    padding:20px;

    margin-top:50px;

}

</style>

</head>

<body>

<header>

<h2>TOEFL Online Examination</h2>

<nav>

<a href="index.jsp">Home</a>

<a href="login.jsp">Student Login</a>

<a href="register.jsp">Register</a>

<a href="admin/adminLogin.jsp">Admin</a>

</nav>

</header>

<div class="hero">

<div class="left">

<h1>Online TOEFL Examination System</h1>

<p>

Welcome to the Computer Science Department Online Examination Portal.

Practice TOEFL Reading, complete your examination online, and receive instant results.

</p>

<div class="buttons">

<a class="login" href="login.jsp">Student Login</a>

<a class="register" href="register.jsp">Register</a>

<a class="admin" href="admin/adminLogin.jsp">Admin Login</a>

</div>

</div>

<div class="right">

<img src="${pageContext.request.contextPath}/images/done.jpg"

     alt="TOEFL Exam"
     width="190"
     height="370">

</div>

</div>

<div class="features">

<div class="card">

<h3>&#10004; Online Exam</h3>

<p>

Take your TOEFL examination online from anywhere.

</p>

</div>

<div class="card">

<h3>&#10004; Instant Result</h3>

<p>

Receive your score immediately after submitting.

</p>

</div>

<div class="card">

<h3>&#10004; Secure System</h3>

<p>

Built with Java Servlet, JSP and MySQL.

</p>

</div>

</div>

<footer>

Computer Science Department © 2026 | TOEFL Online Examination System

</footer>

</body>

</html>