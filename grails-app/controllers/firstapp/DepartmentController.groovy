package firstapp

class DepartmentController {

    def eachdepService 
    def emps
    def index() {
        def emps = eachdepService.getEmps(params.deptid)
        //render emps
        render(view: "index", model:[employees: emps]) 
        //
    }
}