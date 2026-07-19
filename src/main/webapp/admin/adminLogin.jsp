<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Administrator Login</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Segoe UI,Arial,sans-serif;
}

body{

    background:linear-gradient(135deg,#212529,#495057);

    height:100vh;

    display:flex;

    justify-content:center;

    align-items:center;

}

.container{

    width:900px;
    height:500px;

    background:white;

    border-radius:15px;

    overflow:hidden;

    display:flex;

    box-shadow:0 10px 30px rgba(0,0,0,.35);

}

.left{

    width:45%;

    background:#212529;

    color:white;

    padding:50px;

}

.left h1{

    font-size:34px;

    margin-bottom:25px;

}

.left p{

    line-height:30px;

}

.right{

    width:55%;

    padding:50px;

}

.right h2{

    color:#212529;

    text-align:center;

    margin-bottom:35px;

}

input{

    width:100%;

    padding:14px;

    margin-bottom:20px;

    border:1px solid #ccc;

    border-radius:8px;

    font-size:16px;

}

button{

    width:100%;

    padding:15px;

    background:#212529;

    color:white;

    border:none;

    border-radius:8px;

    font-size:18px;

    cursor:pointer;

}

button:hover{

    background:#000;

}

.back{

    margin-top:20px;

    text-align:center;

}

.back a{

    text-decoration:none;

    color:#0d6efd;

    font-weight:bold;

}

</style>

</head>

<body>

<div class="container">

<div class="left">

<h1>Administrator Portal</h1>

<p>

&#10004; Manage Question Bank

<br><br>

&#10004; View Students

<br><br>

&#10004; Manage TOEFL Examination

<br><br>

&#10004; View Results

<br><br>

&#10004; Secure Administration Panel

</p>

</div>

<div class="right">

<h2>Administrator Login</h2>

<form action="../adminLogin" method="post">

<input
type="text"
name="username"
placeholder="Username"
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

<div class="back">

<a href="../index.jsp">

&#10004 Back to Home

</a>

</div>

</div>

</div>

</body>
</html>