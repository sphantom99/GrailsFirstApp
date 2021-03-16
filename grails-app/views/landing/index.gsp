<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

</head>
<body> 
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark"> 
    <div class="container-fluid">
        <a class="navbar-brand" href="/departments">Knowledge</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
            <li class="nav-item">
            <g:link url ="/" class="nav-link active" aria-current="page">Home</g:link>
            </li>
            <li class="nav-item">
            <a class="nav-link active" href="/departments" tabindex="-1">Departments</a>
            </li>
            <li class="nav-item">
            <g:link class="nav-link active" url = "/login/logout">Logout</g:link>
            </li>
        </ul>
        <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
        </div>
    </div>
</nav>

<fieldset>


<div class="container" style="border-color: red;">
    <legend><h1 style="margin-left: 30%; margin-top: 10%; color: white; font-weight: bold; ">Check Out Our Departments! </h1></legend>
    <g:each var="c" in="${dept}">
        
        <g:link controller="Department" action="index" params = "[deptid: c.departmentName]">
        <span style=" margin-left: 40%; min-width: 1000px; ;">
        <button style="margin-top: 4%; padding-left: 50px; padding-right: 200px; max-width:250px; font-weight: bold; font-size: large; background-image: linear-gradient(to right, #006eff 0%,#4d9aff 100%); border-radius: 20px; text-align: center;"type="button" class="btn btn-large .btn-block btn-primary">${c.departmentname}</button>
        </span>
        </g:link>
        <br/>
    </g:each>

    <h1 style="margin-left: 45%; margin-top: 5%; color: white; font-weight: bold">Or...</h1></legend>
    <g:link controller="Department" action="addForm" >
        <span style=" margin-left: 40%;">
        <button style="margin-top: 5%; margin-bot: 5%; padding-left: 50px; padding-right: 60px; font-weight: bold; font-size: large; "type="button" class="btn btn-large .btn-block btn-primary">Add a Department</button>
        </span>
        </g:link>
        <br/>
        <br/>
        <br/>

</div>
</fieldset>
<style>
body{
    background-image: url('https://www.networkcomputing.com/sites/default/files/styles/flexslider_full/public/6-automation_0.jpg?itok=J5sO5ef0');
    background-repeat: no-repeat;
    background-size: cover;
}
button:hover,
button:focus {
    box-shadow: 0 0.5em 0.5em -0.4em var(--hover);
    transform: translateY(-0.25em)
}
</style>
</body>
</html>
