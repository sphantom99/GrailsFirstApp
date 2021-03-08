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
        "/department/index/$deptid"(controller:"Department")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
