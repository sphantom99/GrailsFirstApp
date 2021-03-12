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
                session['data'] = [username: params.username, active: true]
                redirect(controller:'landing')
            }
            else {
                flash.message = "User not found"
                render(view:'login',model:[err:[errc :true])
            }
        }        
    }

    def logout(){
        session.invalidate()
        render(view:'login')
        
    }
}
