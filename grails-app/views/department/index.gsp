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
            <g:link url ="/"><a class="nav-link active" aria-current="page" href="#">Home</a></g:link>
            </li>
            <li class="nav-item">
            <a class="nav-link active" href="/departments" tabindex="-1">Departments</a>
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


<div class="container">
    <legend><h1 style="margin-left: 43%; margin-top: 5%;">${dep}</h1></legend>
    <g:link controller="Department" action="viewEmps" params = "[deptid: dep]">
    <button style="margin-top: 4%; margin-left: 10%;padding-left: 100px; padding-right: 100px;  font-weight: bold; font-size: large; "type="button" class="btn btn-large .btn-block btn-primary">View Employees</button>
    </g:link>

    <g:link controller="Department" action="updateForm" params = "[deptid: dep]">
    <button style="margin-top: 4%; padding-left: 100px; padding-right: 100px;  font-weight: bold; font-size: large; "type="button" class="btn btn-large .btn-block btn-primary">Update Name</button>
    </g:link>

    <g:link controller="Department" action="deleteDepartment" params = "[deptid: dep]">
    <button style="margin-top: 4%; padding-left: 100px; padding-right: 100px;  font-weight: bold; font-size: large; "type="button" class="btn btn-large .btn-block btn-danger">Delete Department</button>
    </g:link>


</div>
</fieldset>
</body>
</html>
