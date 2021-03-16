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

<h1 style="margin-left: 20%; margin-top: 10%; color: white;"> These are the Employees of the ${params.deptid} department</h1>
    <div class="container" style="justify-content: center">
       <g:findAll var="c" in="${(0..(employees.size -1))}" expr="${it%3==0}">
        
        
        <div class="row">
        
                <div class="col-sm-4">
                    <div class="card" style="width: 18rem;">
                    <g:img class="card-img-top" dir="images" file="${"image"+(c)+".jpeg"}" width = "10" height="200"/>
                        <div class="card-body" style="">
                            <h5 class="card-title">${employees.get(c).firstname}</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <g:link  controller="Employee" action="show" params="[empid: employees.get(c).id, deptid:params.deptid]"><Button type="button" class="btn btn-primary" style="margin-left: 37%"> View </Button></g:link>
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
                            <g:link  controller="Employee" action="show" params="[empid: employees.get(c+1).id, deptid:params.deptid]"><Button type="button" class="btn btn-primary" style="margin-left: 37%"> View </Button></g:link>
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
                            <g:link  controller="Employee" action="show" params="[empid: employees.get(c+1).id, deptid:params.deptid]"><Button type="button" class="btn btn-primary" style="margin-left: 37%"> View </Button></g:link>
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
<style>
.card:hover,
.card:focus{
    transform: translateY(-2em);
    box-shadow: 10px 10px 10px #010e3d;
}
body{
    background-image: url('data:image/jpeg;base64,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');
    background-size: contain;
}
</style>
</html>
