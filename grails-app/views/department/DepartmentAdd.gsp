<!doctype html>
<html lang="en">
<head>


<g:render template="/shared/navbar" />


<div class="container" style="margin-left: 35%; margin-top: 10%; %">

        <g:form class="well form-horizontal" controller="Department" action="addDepartment" method="post"  id="contact_form">
        <fieldset>

    <!-- Form Name -->
        <legend><h2><b>New Department</b></h2></legend><br>

    <!-- Text input-->

    <div class="form-group">
        <label for="departmentName" class="col-md-4 control-label">Department Name</label>

        <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input id="departmentName" required name="department_name" placeholder="ex. Marketing" class="form-control"  type="text">
            </div>
        </div>
    </div>

            <g:if test="${flash.message}"><label style="color:red">${flash.message}</label></g:if>

    <!-- Button -->
    <div class="form-group">
    <label class="col-md-4 control-label"></label>
    <div class="col-md-4"><br>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-primary" style="margin-left: 15%" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspADD <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
    </div>
    </div>

    </fieldset>
    </g:form>
    </div>
</div><!-- /.container -->
</body>
<style>
input:invalid {
    border: 2px dashed red;
}
 </style>
</html>