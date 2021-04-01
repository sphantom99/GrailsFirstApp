package firstapp

import com.auth0.jwt.JWT
import com.auth0.jwt.algorithms.Algorithm
import com.auth0.jwt.exceptions.JWTVerificationException
import com.auth0.jwt.interfaces.DecodedJWT
import com.auth0.jwt.interfaces.JWTVerifier


class ApiInterceptor {

    ApiInterceptor() {
        matchAll().excludes(controller: 'loginREST')
                .excludes(controller: 'department')
                .excludes(controller: 'employee')
                .excludes(controller: 'login')

    }

    boolean before() {

        println("Cookies:")
        //request.cookies.each { println(it.name + ", " + it.value) }
        def cookie = request.cookies.find { it.name == "myCookie" }
        //println(cookie)
        if (cookie) {
            try {
                Algorithm algorithm = Algorithm.HMAC256("mysecrets");
                JWTVerifier verifier = JWT.require(algorithm)
                        .withIssuer("GRAILS")
                        .build(); //Reusable verifier instance
                DecodedJWT jwt = verifier.verify(cookie.value);
                return true
            } catch (JWTVerificationException exception) {
                println(exception)
                return false
            }
        } else {
            println("Blocked by API")
            return false
        }
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
