package firstapp

class DepartmentController {

def EachdepService 

    def index() {
        def emps = EachdepService.getEmps(params.deptid)
        //render emps
        render(view: "index", model:[employees: emps]) 
        
    }
}