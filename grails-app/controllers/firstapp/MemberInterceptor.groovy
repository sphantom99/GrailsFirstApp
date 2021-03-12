package firstapp


class MemberInterceptor {

    MemberInterceptor(){
        matchAll().excludes(controller:'login')
    }
    boolean before() { true /*
        if(session.user){
            return true
        }
        else {
            return false
        }*/
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
