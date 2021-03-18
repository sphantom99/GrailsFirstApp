<!doctype html>
<html lang="en" class="no-js">
<head>

<g:render template="/shared/navbar" />

<fieldset>


<div class="container" style="border-color: red;">
    <legend><h1 style="margin-left: 30%; margin-top: 10%; color: white; font-weight: bold; ">Check Out Our Departments! </h1></legend>
    <g:each var="c" in="${dept}">
        
        <g:link controller="Department" action="index" params = "[deptid: c.departmentName]">
        <span style=" margin-left: 40%; min-width: 1000px; ;">
        <button style="margin-top: 4%; padding-left: 50px; padding-right: 200px; max-width:250px; font-weight: bold; font-size: large; background-image: linear-gradient(to right, #006eff 0%,#4d9aff 100%); border-radius: 20px; text-align: center;"type="button" class="btn btn-large .btn-block btn-primary">${c.departmentname}</button>
        </span>
        </g:link>
        <br/>
    </g:each>

    <h1 style="margin-left: 45%; margin-top: 5%; color: white; font-weight: bold">Or...</h1></legend>
    <g:link controller="Department" action="addForm" >
        <span style=" margin-left: 40%;">
        <button style="margin-top: 5%; margin-bot: 5%; padding-left: 50px; padding-right: 60px; font-weight: bold; font-size: large; "type="button" class="btn btn-large .btn-block btn-primary">Add a Department</button>
        </span>
        </g:link>
        <br/>
        <br/>
        <br/>

</div>
</fieldset>
<style>
body{
    background-image: url('https://www.networkcomputing.com/sites/default/files/styles/flexslider_full/public/6-automation_0.jpg?itok=J5sO5ef0');
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
