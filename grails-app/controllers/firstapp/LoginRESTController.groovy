package firstapp

import com.auth0.jwt.algorithms.Algorithm
import javax.servlet.http.Cookie
import com.auth0.jwt.JWT
class LoginRESTController {

    def loginService

    def login() {
        def username = params.username
        def password = params.password
        def exists = loginService.apiLogin(username,password)
        if(exists){
            Algorithm algorithm = Algorithm.HMAC256("mysecrets")
            String token = JWT.create()
                    .withIssuer("GRAILS")
                    .sign(algorithm)
            def myCookie = new Cookie("myCookie",token)
            //myCookie.path = "/${grailsApplication.metadata['app.name']}/"

            def idCookie = new Cookie("userID",username)
            myCookie.setPath('/')
            idCookie.setPath('/')
            response.addCookie((idCookie))
            response.addCookie(myCookie)
            respond(status:200)

        }
    }

    def logout(){
        def cookie = new Cookie('myCookie',"")
        cookie.setMaxAge(0)
        cookie.setPath('/')
        response.addCookie(cookie)
        respond(status: 200)
    }
}
