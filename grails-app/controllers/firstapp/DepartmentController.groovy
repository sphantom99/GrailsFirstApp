package firstapp

class DepartmentController {

    def eachdepService
    def landingService
    def emps

    def index() {
     render(view:"index", model:[dep: params.deptid])
    }
    def viewEmployees(){
        emps = eachdepService.getEmployees(params.deptid)
        //render emps
        render(view: "viewEmployees", model:[employees: emps])
    }

    def updateForm(){
        render(view:"DepartmentUpdate", model:[name: params.deptid])
    }
    def addForm(){
        render(view:"DepartmentAdd")
        return
    }
    
    def addDepartment(){
        //render params
        def exists
        def existingDepartments
        existingDepartments = landingService.getDeps()
        //render existingDepartments[0].departmentname
        existingDepartments.each{
            if(params.department_name == it.departmentname){
                flash.message = "Department Already Exists"
                //render params.department_name
                exists = true
                return 0
            }
        }
        if(exists){
            render(view:"DepartmentAdd")
        }else{
            eachdepService.addDepartment(params.department_name)
            redirect(controller:"landing")
            return
        }

    }

    def updateDepartment(){
        def existingDepartments
        existingDepartments = landingService.getDeps()
        render existingDepartments
        existingDepartments.each{
            if(params.department_name == it.departmentname){
                render(view:"DepartmentAdd", model:[err: True])
                return
            }
        }
        eachdepService.updateDepartment(params.department_name,params.old_department_name)
        redirect(controller:"landing")
        return
    }

    def deleteDepartment(){
        try{
            eachdepService.deleteDepartment(params.deptid)
        }
        catch(Exception e){
            render "Could not delete department.. Check if its empty"
        }
        redirect(controller:"landing")
        return
    }
}