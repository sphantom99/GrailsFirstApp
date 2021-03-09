package firstapp

class EmployeeController {

def employeeService

    def index() {
        def data = employeeService.getEmpDetails(params.id)
        render data
//        render(view:"employee" model:[emp : data])
     }
    
    def show(){
        
        def data = employeeService.getEmpDetails(params.empid)
        return [emp: data]
    }
}
