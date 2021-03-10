<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
</head>
<body> 
<h1> These are the departments </h1>
<ul>
    
    <g:each var="c" in="${dept}">
        <li class="controller">
            <g:link controller="Department" action="index" params = "[deptid: c.departmentName]">${c.departmentname}</g:link>
        </li>
    </g:each>
</ul>

</body>
</html>
