<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>

<style>

body{
    margin:0;
    font-family:Arial, Helvetica, sans-serif;
    background:#f4f7fc;
}

.header{
    background:#0d6efd;
    color:white;
    padding:20px;
    text-align:center;
    font-size:28px;
    font-weight:bold;
}

.container{
    width:80%;
    margin:40px auto;
}

.card{
    background:white;
    border-radius:10px;
    padding:30px;
    box-shadow:0 2px 10px rgba(0,0,0,.15);
    text-align:center;
}

.card h2{
    color:#0d6efd;
}

.button{
    display:inline-block;
    margin-top:20px;
    padding:15px 30px;
    background:#0d6efd;
    color:white;
    text-decoration:none;
    border-radius:6px;
    font-size:18px;
}

.button:hover{
    background:#084298;
}

</style>

</head>

<body>

<div class="header">

TOEFL Online Examination System

</div>

<div class="container">

<div class="card">

<h2>Welcome Student</h2>

<p>

Reading Test

<br><br>

20 Questions

<br><br>

Time : 60 Minutes

</p>


<a href="${pageContext.request.contextPath}/startExam">
<button>
Start TOEFL Reading Test
</button>
</a>



</a>

</div>

</div>

</body>

</html>