package firstapp


class MemberInterceptor {

    MemberInterceptor(){
        matchAll().excludes(controller:'login')
    }
    boolean before() {/*
        if(session?.user?.active==true){
            return true
        }
        else {
            redirect(controller:'login')
            return false
        }*/
        return true
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
