package firstapp

class LoginController {

    def loginService

    def index() {
        render(view: "login")

    }

    def doLogin() {
        try {
            if (request.method == 'POST') {
                def exists = loginService.checkIfExists(params.username, params.password)
                if (exists) {
                    session['user'] = [username: params.username, active: true]
                    redirect(controller: 'department', action: 'mainIndex')
                } else {
                    flash.message = "User not found"
                    render(view: 'login')
                }
            }
        } catch (Exception e) {
            e.printStackTrace()
        }
    }

    def logout() {
        try {
            session.invalidate()
            render(view: 'login')
        } catch (Exception e) {
            e.printStackTrace()
        }
    }
}
