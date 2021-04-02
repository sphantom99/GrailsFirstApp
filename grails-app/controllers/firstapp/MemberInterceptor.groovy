package firstapp

import com.auth0.jwt.algorithms.Algorithm
import com.auth0.jwt.exceptions.JWTVerificationException
import com.auth0.jwt.interfaces.DecodedJWT
import com.auth0.jwt.interfaces.JWTVerifier
import com.auth0.jwt.JWT

class MemberInterceptor {

    MemberInterceptor() {
        matchAll().excludes(controller: 'departmentsREST')
                .excludes(controller: 'employeesREST')
                .excludes(controller: 'loginREST')
                .excludes(controller: 'login')
    }

    boolean before() {

        if (session?.user?.active == true) {
            return true
        } else {
            println("Blocked by Member")
            redirect(controller: 'login')
            return false
        }
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
