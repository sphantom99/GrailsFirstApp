package firstapp


class MemberInterceptor {

    MemberInterceptor(){
        matchAll().excludes(controller:'login')
    }
    boolean before() {
        if(session?.data?.active==true){
            return true
        }
        else {
            redirect(controller:'login')
            return false
        }
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
