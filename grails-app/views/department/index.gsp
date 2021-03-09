<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
</head>
<body> 
<h1> These are the Employees of the ${params.deptid} department</h1>
<ul>
    
    <g:each var="c" in="${employees}">
        
        <li class="controller">
            ${c.firstname} ${c.lastname} ${c.id}
        </li>
        <g:img dir="images" file="avatar.png" width = "40" height="40"/>
        <g:link controller="Employee" action="show" params="[empid: c.id]"> View </g:link>
        
    </g:each>
</ul>

<Button> Add an Employee!</Button>

</body>
</html>
