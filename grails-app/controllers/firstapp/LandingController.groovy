package firstapp

class LandingController {

def LandingService

    def index() {
        def depts = LandingService.logger()
        //render depts
        render(view: "index", model: [dept: depts])
    }
    def list(){
        
        
    }
}
