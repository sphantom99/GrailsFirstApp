<!doctype html>
<html lang="en">
<head>

    <g:render template="/shared/navbar" />


<div class="container" style="margin-left: 35%; margin-top: 10%; margin-right: 35%;">

        <g:form class="well form-horizontal" controller="employee" action="update" method="post"  id="contact_form">
        <fieldset>
    <!-- Form Name -->
        <legend><h2><b>${employee.firstname} ${employee.lastname}</b></h2></legend><br>

    <!-- Text input-->

   <div class="form-group">
        <label for="systemID" class="col-md-4 control-label">System ID</label>
        <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input id="systemID" readonly name="system_id" value="${employee.id}" class="form-control"  type="text">
            </div>
        </div>
    </div>

    <div class="form-group">
        <label for="firstName" class="col-md-4 control-label">First Name</label>
        <div class="col-md-4 inputGroupContainer">
            <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input id="firstName" name="first_name" placeholder="${employee.firstname}" value="${employee.firstname}" class="form-control"  type="text">
            </div>
        </div>
    </div>

    <!-- Text input-->

    <div class="form-group">
        <label for="lastName" class="col-md-4 control-label" >Last Name</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <input id="lastName" name="last_name" placeholder="${employee.lastname}" value="${employee.lastname}" class="form-control"  type="text">
            </div>
            </div>
    </div>

    <div class="form-group"> 
    <label for="select" class="col-md-4 control-label">Department</label>
        <div class="col-md-4 selectContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
        <select id="select" name="department" class="form-control selectpicker">
        <g:if test="${dep}">
        <option value="${employee?.department}">${dep}</option>
        </g:if>
        <option value="">Select your Department</option>
        <g:each var="department" in="${departments}">
        <option value="${department.id}">${department.departmentname}</option>
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
    <input id="afm" name="afm" placeholder="${employee.afm}" value="${employee.afm}" class="form-control" type="text">
        </div>
    </div>
    </div>

    <div class="col-md-4" style="height:130px;">
      <div class="form-group">
      <label for="datetimepicker9" class="col-md-4 control-label">DOB</label>
         <div class='input-group date' id='datetimepicker9'>
            <g:datePicker class="form-control"id="datetimepicker9" name="dob" value="${employee.dob}"
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
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button onclick="return confirm('Are you sure you want to delete this employee');" value="delete" name="subbtn"type="submit" class="btn btn-danger" style="margin-left: 15%" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspDELETE <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
    </div>
    </div>

    </fieldset>
    </g:form>
    </div>
</div><!-- /.container -->

</body>
</html>