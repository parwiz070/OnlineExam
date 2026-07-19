<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<style>

body{

    margin:0;

    font-family:Segoe UI,Arial;

    background:#f4f7fc;

}

.header{

    background:#212529;

    color:white;

    padding:20px;

    font-size:28px;

}

.container{

    width:90%;

    margin:40px auto;

}

.cards{

    display:flex;

    gap:30px;

}

.card{

    flex:1;

    background:white;

    padding:30px;

    border-radius:10px;

    text-align:center;

    box-shadow:0 2px 12px rgba(0,0,0,.15);

}

.card h2{

    color:#212529;

}

.card a{

    display:inline-block;

    margin-top:20px;

    padding:12px 25px;

    background:#0d6efd;

    color:white;

    text-decoration:none;

    border-radius:6px;

}

.card a:hover{

    background:#084298;

}

</style>

</head>

<body>

<div class="header">

Administrator Dashboard

</div>

<div class="container">

<div class="cards">

<div class="card">

<h2>Add Question</h2>

<a href="addQuestion.jsp">

Open

</a>

</div>

<div class="card">

<h2>View Questions</h2>

<a href="../viewQuestions">

Open

</a>

</div>

<div class="card">

<h2>Results</h2>

<a href="#">

Coming Soon

</a>

</div>

</div>

</div>

</body>

</html>