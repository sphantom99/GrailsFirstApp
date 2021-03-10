package firstapp

class EmployeeController {

def employeeService
def landingService

    def index() {
        def data = employeeService.getEmpDetails(params.id)
        render data
//        render(view:"employee" model:[emp : data])
     }
    
    def show(){
        
        def data = employeeService.getEmpDetails(params.empid)
        return [emp: data]
    }

    def addIndex(){
        def deps = landingService.getDeps()
        render(view: "addIndex", model: [dep: deps])
        //render(view:)
    }
    def add(){
        def ret = employeeService.addEmployee(params)
        render ret
    }
}
