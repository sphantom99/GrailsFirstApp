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
            Algorithm algorithm = Algorithm.HMAC256("secret")
            String token = JWT.create()
                    .withIssuer("auth0")
                    .sign(algorithm)
            def myCookie = new Cookie("myCookie",token)
            def secCookie = new Cookie("test","testVal")
            respond([status:200, cookie:myCookie])
            
        }
    }
}
