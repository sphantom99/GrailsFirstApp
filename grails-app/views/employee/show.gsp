<!doctype html>
<html lang="en">
<head>
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


<div class="container" style="margin-left: 35%; margin-top: 10%; margin-right: 35%;">

        <g:form class="well form-horizontal" controller="employee" action="update" method="post"  id="contact_form">
        <fieldset>
    <!-- Form Name -->
        <legend><h2><b>${emp[0].firstname}${emp[0].lastname}</b></h2></legend><br>

    <!-- Text input-->

   <div class="form-group">
        <label class="col-md-4 control-label">System ID</label>  
        <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input readonly name="system_id" placeholder="${emp[2]}" value="${emp[2]}" class="form-control"  type="text">
            </div>
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-4 control-label">First Name</label>  
        <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input  name="first_name" placeholder="${emp[0].firstname}" value="${emp[0].firstname}" class="form-control"  type="text">
            </div>
        </div>
    </div>

    <!-- Text input-->

    <div class="form-group">
        <label class="col-md-4 control-label" >Last Name</label> 
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <input name="last_name" placeholder="${emp[0].lastname}" value="${emp[0].lastname}" class="form-control"  type="text">
            </div>
            </div>
    </div>

    <div class="form-group"> 
    <label class="col-md-4 control-label">Department</label>
        <div class="col-md-4 selectContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
        <select name="department" class="form-control selectpicker">
        <g:if test="${dep}">
        <option value="">${dep}</option>
        </g:if>
        <option value="">Select your Department</option>
        <g:each var="c" in="${emp[1]}">
        <option value="${c.id}">${c.departmentname}</option>
        </g:each>
        </select>
    </div>
    </div>
    </div>
    

    <!-- Text input-->
        
    <div class="form-group">
    <label class="col-md-4 control-label">AFM</label>  
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
    <input name="afm" placeholder="${emp[0].afm}" value="${emp[0].afm}" class="form-control" type="text">
        </div>
    </div>
    </div>

    <div class="col-md-4" style="height:130px;">
      <div class="form-group">
      <label class="col-md-4 control-label">DOB</label>
         <div class='input-group date' id='datetimepicker9'>
            <g:datePicker class="form-control"id="datetimepicker9" name="dob" value="${emp[0].dob}"
              precision="day" years="${1960..2003}"/>
            <span class="input-group-addon">
            <span class="glyphicon glyphicon-calendar">
            </span>
            </span>
         </div>
      </div>
   </div>

    <!-- Button -->
    <div class="form-group">
    <label class="col-md-4 control-label"></label>
    <div class="col-md-4"><br>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button value="update" name="subbtn"type="submit" class="btn btn-primary" style="margin-left: 15%" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspUPDATE <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
    </div>
    <div class="col-md-4"><br>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button value="delete" name="subbtn"type="submit" class="btn btn-danger" style="margin-left: 15%" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspDELETE <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
    </div>
    </div>

    </fieldset>
    </g:form>
    </div>
</div><!-- /.container -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</body>
</html>