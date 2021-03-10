<!doctype html>
<html lang="en" >
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body> 
<h1 > These are the Employees of the ${params.deptid} department</h1>
    <div class="container" style="justify-content: center">
       <g:findAll var="c" in="${(0..(employees.size -1))}" expr="${it%3==0}">
        
        
        <div class="row">
        
                <div class="col-sm-4">
                    <div class="card" style="width: 18rem;">
                    <g:img class="card-img-top" dir="images" file="${"image"+(c)+".jpeg"}" width = "10" height="200"/>
                        <div class="card-body">
                            <h5 class="card-title">${employees.get(c).firstname}</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <g:link  controller="Employee" action="show" params="[empid: employees.get(c).id]"><Button type="button" class="btn btn-primary" style="margin-left: 37%"> View </Button></g:link>
                        </div>
                    </div>
                </div> 
            <g:if test="${c+1<employees.size}">
                <div class="col-sm-4" style=" margin-bottom: 50px">
                    <div class="card" style="width: 18rem; margin-bot: 50px">
                    <g:img class="card-img-top" dir="images" file="${"image"+(c+1)+".jpeg"}" width = "10" height="200"/>
                        <div class="card-body">
                            <h5 class="card-title">${employees.get(c+1).firstname}</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <g:link  controller="Employee" action="show" params="[empid: employees.get(c+1).id]"><Button type="button" class="btn btn-primary" style="margin-left: 37%"> View </Button></g:link>
                        </div>
                    </div>
                </div>
            </g:if>
            <g:if test="${c+2<employees.size}">
                <div class="col-sm-4" style=" margin-bottom: 50px">
                    <div class="card" style="width: 18rem; margin-bot: 50px">
                    <g:img class="card-img-top" dir="images" file="${"image"+(c+2)+".jpeg"}" width = "50" height="200"/>
                        <div class="card-body">
                            <h5 class="card-title">${employees.get(c+2).firstname}</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <g:link  controller="Employee" action="show" params="[empid: employees.get(c+1).id]"><Button type="button" class="btn btn-primary" style="margin-left: 37%"> View </Button></g:link>
                        </div>
                    </div>
                </div>  
            </g:if>
        <div>
         
       </g:findAll>
    </div>


<g:link controller="Employee" action="addIndex"> <Button> Add an Employee!</Button></g:link>
 
<!---- <div class="card" style="width: 18rem;">
            <g:img class="card-img-top" dir="images" file="avatar.png" width = "40" height="40"/>
            <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <g:link  controller="Employee" action="show" params="[empid: id]"><Button type="button" class="btn btn-primary"> View </Button></g:link>
            </div>
        </div>
-->
</body>
</html>
