<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add TOEFL Question</title>

<link rel="stylesheet" href="../css/style.css">

<style>

.container{
    width:70%;
    margin:40px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 15px rgba(0,0,0,.2);
}

h2{
    text-align:center;
    color:#0d47a1;
}

input, textarea, select{
    width:100%;
    padding:12px;
    margin:10px 0;
}

button{
    background:#0d47a1;
    color:white;
    padding:12px 25px;
    border:none;
    cursor:pointer;
    font-size:18px;
}

button:hover{
    background:#1565c0;
}

</style>

</head>

<body>

<%
String success = request.getParameter("success");
if ("true".equals(success)) {
%>

<p style="color:green; font-weight:bold;">
    Question saved successfully!
</p>

<%
}
%>

<div class="container">

<h2>Add TOEFL Question</h2>

<form action="../addQuestion" method="post">

<label>Question</label>

<textarea name="question" rows="4" required></textarea>

<label>Option 1</label>

<input type="text" name="option1" required>

<label>Option 2</label>

<input type="text" name="option2" required>

<label>Option 3</label>

<input type="text" name="option3" required>

<label>Option 4</label>

<input type="text" name="option4" required>

<label>Correct Answer</label>

<select name="correctAnswer">

<option value="option1">Option 1</option>

<option value="option2">Option 2</option>

<option value="option3">Option 3</option>

<option value="option4">Option 4</option>

</select>

<br><br>

<button type="submit">

Save Question

</button>

</form>

</div>

</body>


</html>