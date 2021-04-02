package firstapp

import com.auth0.jwt.algorithms.Algorithm
import com.auth0.jwt.exceptions.JWTDecodeException
import com.auth0.jwt.interfaces.DecodedJWT

import javax.servlet.http.Cookie
import com.auth0.jwt.JWT

class LoginRESTController {

    def loginService

    def login() {
        try {
            def username = params.username
            def password = params.password
            def exists = loginService.apiLogin(username, password)
            if (exists) {
                Algorithm algorithm = Algorithm.HMAC256("mysecrets")
                String token = JWT.create()
                        .withIssuer("GRAILS")
                        .withClaim('username', username)
                        .sign(algorithm)
                def myCookie = new Cookie("myCookie", token)
                //myCookie.path = "/${grailsApplication.metadata['app.name']}/"


                myCookie.setPath('/')
                response.addCookie(myCookie)
                respond(status: 200)
            } else {
                respond([status: 500, message: 'User does not exist'])
            }
        } catch (Exception e){
            e.printStackTrace()
            respond([status: 500, message: 'User does not exist'])
        }

    }

    def logout() {
        try {
            def cookie = new Cookie('myCookie', "")
            cookie.setMaxAge(0)
            cookie.setPath('/')
            response.addCookie(cookie)
            respond(status: 200)
        } catch (Exception e){
            e.printStackTrace()
            respond([status: 500, message: 'Server Error, couldn\'t log out'])
        }

    }

    def getUsername() {
        try {
            def cookie = request.cookies.find { it.name == 'myCookie' };
            if (cookie) {
                try {
                    DecodedJWT jwt = JWT.decode(cookie.value)
                    respond(status: 200, username: jwt.claims.username.toString())
                } catch(JWTDecodeException e) {
                    println(e)
                    respond(status: 400)
                }
            }
        } catch (Exception e) {
            e.printStackTrace()
            respond([status: 500, message: 'Couldn\'t grab username'])
        }

    }
}
