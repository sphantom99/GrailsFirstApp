package firstapp

class LandingController {

    def landingService
    def index() {
    def departments = landingService.getDepartments()
        render(view: "index", model: [dept: departments])
    }
}
