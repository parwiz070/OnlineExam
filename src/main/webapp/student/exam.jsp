<%@ page import="java.util.List" %>
<%@ page import="com.onlineexam.model.Question" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>TOEFL Reading Test</title>

<style>

body{
    font-family: Arial;
    background:#f5f5f5;
    margin:40px;
}

.container{
    width:800px;
    margin:auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h2{
    color:#1565c0;
}

.timer{
    text-align:right;
    font-size:20px;
    font-weight:bold;
    color:red;
}

.question{
    margin-top:20px;
    padding:15px;
    border-bottom:1px solid #ddd;
}

.option{
    margin:8px;
}

button{
    margin-top:25px;
    padding:12px 30px;
    background:#1565c0;
    color:white;
    border:none;
    font-size:18px;
    cursor:pointer;
}

button:hover{
    background:#0d47a1;
}

</style>

</head>

<body>

<div class="container">

<h2>TOEFL Reading Test</h2>



<div class="timer">
Time Remaining:
<span id="timer">30:00</span>
</div>


<div style="
    background:#eef7ff;
    border:1px solid #1565c0;
    padding:20px;
    margin:20px 0;
    border-radius:8px;
    line-height:1.8;
">

<h3 style="color:#1565c0;">Reading Passage</h3>

<h4>Renewable Energy: Powering a Sustainable Future</h4>

<p align="justify">
Renewable energy is becoming increasingly important as countries search
for cleaner and more sustainable ways to produce electricity. Unlike
fossil fuels such as coal, oil, and natural gas, renewable energy comes
from natural sources that can be replaced over time. These sources
include sunlight, wind, water, and geothermal heat. Because fossil fuels
are limited and contribute to environmental pollution, many nations are
investing in renewable energy technologies.
</p>

<p align="justify">
Solar energy is one of the most widely used forms of renewable energy.
Solar panels convert sunlight into electricity without producing harmful
emissions. Although the initial cost of installing solar panels can be
high, they often save money in the long term by reducing electricity
bills. As technology improves, solar panels are becoming more efficient
and affordable.
</p>

<p align="justify">
Wind energy is another important renewable resource. Wind turbines use
the movement of air to generate electricity. Large wind farms can
produce significant amounts of clean energy for homes and businesses.
Many countries are investing in wind power because it helps reduce
pollution and decreases dependence on fossil fuels.
</p>

<p align="justify">
Despite its many benefits, renewable energy also faces several
challenges. Solar panels cannot generate electricity at night, and wind
turbines depend on weather conditions. Scientists are developing better
energy storage technologies so that electricity produced during sunny or
windy periods can be stored and used when needed.
</p>

<p align="justify">
Renewable energy plays an essential role in protecting the environment
and reducing greenhouse gas emissions. As technology continues to
advance, renewable energy is expected to become an even more important
part of the world's energy supply, helping to create a cleaner and more
sustainable future for everyone.
</p>

</div>

<form id="examForm"
      action="${pageContext.request.contextPath}/ResultServlet"
      method="post">

<%
List<Question> questions = (List<Question>)request.getAttribute("questions");

int number = 1;

if(questions != null){

    for(Question q : questions){
%>

<div class="question">

<p>
<b>
<%=number%>. <%=q.getQuestion()%>
</b>
</p>

<div class="option">
<label>
<input type="radio"
       name="q<%=q.getQuestionId()%>"
       value="option1"
       required>
<%=q.getOption1()%>
</label>
</div>

<div class="option">
<label>
<input type="radio"
       name="q<%=q.getQuestionId()%>"
       value="option2">
<%=q.getOption2()%>
</label>
</div>

<div class="option">
<label>
<input type="radio"
       name="q<%=q.getQuestionId()%>"
       value="option3">
<%=q.getOption3()%>
</label>
</div>

<div class="option">
<label>
<input type="radio"
       name="q<%=q.getQuestionId()%>"
       value="option4">
<%=q.getOption4()%>
</label>
</div>

</div>

<%
        number++;
    }

}else{
%>

<h3>No questions found!</h3>

<%
}
%>

<button type="submit">Submit Exam</button>

</form>

</div>

<script>

let totalTime = 30 * 60;

let timer = setInterval(function(){

    let minutes = Math.floor(totalTime / 60);
    let seconds = totalTime % 60;

    document.getElementById("timer").innerHTML =
        minutes + ":" + (seconds < 10 ? "0" + seconds : seconds);

    totalTime--;

    if(totalTime < 0){

        clearInterval(timer);

        alert("Time finished! Exam will be submitted.");

        document.getElementById("examForm").submit();
    }

},1000);

</script>

</body>
</html>