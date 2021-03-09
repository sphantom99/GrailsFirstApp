package firstapp

class LandingController {

def landingService

    def index() {
        def depts = landingService.logger()
        //render depts
        render(view: "index", model: [dept: depts])
    }
    def list(){
        
        
    }
}
