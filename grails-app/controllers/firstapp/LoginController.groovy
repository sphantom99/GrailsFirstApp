package firstapp

class LoginController {

    def loginService
    def index() {
        render(view:"login")

     }

    def doLogin(){
        if(request.method == 'POST'){
            def exists = loginService.checkIfExists(params.username,params.password)
            if(exists){
                session.user = params.username
                redirect(controller:'landing')
            }
            else {
                flash.message = "User not found"
                render(view:'login',model:[err:[true]])
            }
        }        
    }

    def logout(){
        if(session.user){
            session.invalidate()
            redirect(controller:'login')
        }
    }
}
