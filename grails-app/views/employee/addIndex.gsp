<!doctype html>
<html lang="en">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>

<body> 
    <g:render template="/shared/navbar" />


<div class="container" style="margin-left: 35%; margin-top: 10%; %">

        <g:form class="well form-horizontal" controller="employee" action="add" method="post"  id="contact_form">
        <fieldset>

    <!-- Form Name -->
        <legend><h2><b>New Employee</b></h2></legend><br>

    <!-- Text input-->

    <div class="form-group">
        <label for="firstName" class="col-md-4 control-label">First Name</label>
        <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input id="firstName" required minlength=2 maxlength=50 name="first_name" placeholder="First Name" class="form-control"  type="text">
            </div>
        </div>
    </div>

    <!-- Text input-->

    <div class="form-group">
        <label for="lastName" class="col-md-4 control-label" >Last Name</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <input id="lastName" required minlength=2 maxlength=50 name="last_name" placeholder="Last Name" class="form-control"  type="text">
            </div>
            </div>
    </div>

    <div class="form-group"> 
    <label for="select" class="col-md-4 control-label">Department</label>
        <div class="col-md-4 selectContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
        <select id="select" name="department" class="form-control selectpicker">
        <g:if test="${dept}">
        <option value="">${dept}</option>
        </g:if>
        <option value="">Select your Department</option>
        <g:each var="c" in="${dep}">
        <option value="${c.id}">${c.departmentName}</option>
        </g:each>
        </select>
    </div>
    </div>
    </div>
    

    <!-- Text input-->
        
    <div class="form-group">
    <label for="afm" class="col-md-4 control-label">AFM</label>
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
    <input id="afm" name="afm" required minlength=9 maxlength=9 placeholder="ex. 123456789" class="form-control" type="text">
        </div>
    </div>
    </div>

    <div class="col-md-4" style="height:130px;">
      <div class="form-group">
      <label for="datetimepicker9" class="col-md-4 control-label">AFM</label>
         <div class='input-group date' id='datetimepicker9'>
            <g:datePicker class="form-control"id="datetimepicker9" name="dob" value="${new Date()}"
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
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-primary" style="margin-left: 15%" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspHIRE <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
    </div>
    </div>

    </fieldset>
    </g:form>
    </div>
</div><!-- /.container -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</body>
</html>