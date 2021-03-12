<!doctype html>
<html lang="en" >
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

<h1 style="margin-left: 20%; margin-top: 10%;"> These are the Employees of the ${params.deptid} department</h1>
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
                <div class="col-sm-8" style=" margin-bottom: 50px">
                    <div class="card" style="width: 18rem; margin-bot: 50px">
                        <g:img class="card-img-top" dir="images" file="avatar.png" width = "50" height="200"/>
                        <div class="card-body">
                            <h5 class="card-title">New Employee</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <g:link  controller="Employee" action="addIndex" ><Button type="button" class="btn btn-primary" style="margin-left: 37%"> View </Button></g:link>
                        </div>
                    </div>
                </div>  

</body>
</html>
