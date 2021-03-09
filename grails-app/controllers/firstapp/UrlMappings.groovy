package firstapp

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"index")
        "/departments"(controller:"Landing")
        //"/department/index/$deptid"(controller:"Department")
        //"/employee/show/$empid"(controller:"Employee", action: "show")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
