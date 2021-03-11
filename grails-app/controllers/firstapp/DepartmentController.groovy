package firstapp

class DepartmentController {

    def eachdepService
    def landingService
    def emps

    def index() {
     render(view:"index", model:[dep: params.deptid])
    }
    def viewEmps(){
        emps = eachdepService.getEmps(params.deptid)
        render(view: "index", model:[employees: emps]) 
        return

    }

    def updateForm(){
        render(view:"DepUpdate", model:[name: params.deptid])
        return
    }
    def addForm(){
        render(view:"DepAdd")
        return
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
        return
    }

    def updateDepartment(){
        def existingDepartments
        existingDepartments = landingService.getDeps()
        render existingDepartments
        existingDepartments.each{
            if(params.department_name == it.departmentname){
                render(view:"DepAdd", model:[err: True])
                return
            }
        }
        eachdepService.updateDepartment(params.department_name,params.old_department_name)
        redirect(controller:"landing")
        return
    }

    def deleteDepartment(){
        eachdepService.deleteDepartment(params.deptid)
        redirect(controller:"landing")
        return
    }
}