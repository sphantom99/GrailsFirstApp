<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<asset:stylesheet src="bootstrap.min.css"/>

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
        <g:link url ="/"class="nav-link active" aria-current="page">Home</g:link>
        </li>
        <li class="nav-item">
        <a class="nav-link active" href="/departments" tabindex="-1">Departments</a>
        </li>
        <li class="nav-item">
        <g:link class="nav-link active" url = "/login/logout">Logout</g:link>
        </li>
        <li class="nav-item">
        
        </li>
    </ul>
    <span class="navbar-text">Logged in as: ${session?.data?.username}</span>
    </div>
</div>
</nav>