<!doctype html>
<html lang="en">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>

<body> 
    <g:render template="/shared/navbar" />


<div class="container" style="margin-left: 35%; margin-top: 10%; %">

        <g:form class="well form-horizontal" controller="Department" action="updateDepartment" method="post"  id="contact_form">
        <fieldset>

    <!-- Form Name -->
        <legend><h2><b>${name}</b></h2></legend><br>

    <!-- Text input-->
    <div class="form-group">
        <label class="col-md-4 control-label">Old Department Name</label>  
        <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input  readonly value="${name}"required name="old_department_name" placeholder="ex. Marketing" class="form-control"  type="text">
            </div>
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-4 control-label">New Department Name</label>  
        <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input  value="${name}"required name="department_name" placeholder="ex. Marketing" class="form-control"  type="text">
            </div>
        </div>
    </div>

    

    <!-- Button -->
    <div class="form-group">
    <label class="col-md-4 control-label"></label>
    <div class="col-md-4"><br>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-primary" style="margin-left: 15%" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspUPDATE <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
    </div>
    </div>

    </fieldset>
    </g:form>
    </div>
</div><!-- /.container -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</body>
</html>