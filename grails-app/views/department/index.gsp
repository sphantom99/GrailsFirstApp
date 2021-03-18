<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

</head>
<body> 
<g:render template="/shared/navbar" />

<fieldset>


<div class="container">
    <div style="margin-top: 5%; text-align: center;"><h1 style="color: white;">${dep}</h1></div>
    <ul style="list-style: none">
    <li>
    <g:link controller="Department" action="viewEmps" params = "[deptid: dep]">
    <button style="margin-top: 4%; margin-left: 30%; border-radius: 20px; width: 400px; text-align: center; font-weight: bold; font-size: large; "type="button" class="btn btn-large .btn-block btn-primary">View Employees</button>
    </g:link>
    </li>
    <li>
    <g:link controller="Department" action="updateForm" params = "[deptid: dep]">
    <button style="margin-top: 4%; margin-left: 30%; border-radius: 20px;  width: 400px; text-align: center; font-weight: bold; font-size: large; "type="button" class="btn btn-large .btn-block btn-primary">Update Name</button>
    </g:link>
    </li>
    <li>
    <g:link controller="Employee" action="addIndex" params = "[deptid: dep]">
    <button style="margin-top: 4%; margin-left: 30%; border-radius: 20px;  width: 400px; text-align: center; font-weight: bold; font-size: large; "type="button" class="btn btn-large .btn-block btn-primary">Add an employee</button>
    </g:link>
    </li>
    <li>
    <g:link controller="Department" action="deleteDepartment" params = "[deptid: dep]">
    <button onclick="return confirm('Are you sure you want to delete this department?')" style="margin-top: 4%; margin-left: 30%; border-radius: 20px; width: 400px; text-align: center; font-weight: bold; font-size: large; "type="button" class="btn btn-large .btn-block btn-danger">Delete Department</button>
    </g:link>
    </li>
    </ul>

</div>
</fieldset>
<style>
body{
    background-image: url('https://youmatter.world/app/uploads/sites/2/2019/11/tech-planet.jpg');
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
