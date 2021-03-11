package firstapp

class DepartmentController {

    def eachdepService
    def landingService
    def emps

    def index() {
        //try{
        emps = eachdepService.getEmps(params.deptid)
        
        
        //render emps
        render(view: "index", model:[employees: emps]) 
        //work
       // }
       /* catch(Exception e){
            render e
        }*/
    }
    def addForm(){
        render(view:"DepAdd")
    }

    def addDepartment(){
        //render params
        def existingDepartments
        existingDepartments = landingService.getDeps()
        render existingDepartments
        existingDepartments.each{
            if(params.department_name == it.departmentname){
                render(view:"DepAdd", model:[err: True])
                return
            }
        }
        eachdepService.addDepartment(params.department_name)
        redirect(controller:"landing")
    }
}