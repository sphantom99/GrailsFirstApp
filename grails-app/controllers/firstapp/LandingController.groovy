package firstapp

class LandingController {

    def landingService
    def index() {
    def departments = landingService.getDeps()
        render(view: "index", model: [dept: departments])
    }
}
