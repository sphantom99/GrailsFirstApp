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
            ${c.first_name} ${c.last_name}
        </li>
    </g:each>
</ul>

</body>
</html>
