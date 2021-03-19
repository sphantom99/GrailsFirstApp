package firstapp

class DepartmentController {

    def eachdepService
    def landingService

    def index() {
        render(view: "index", model: [dep: params.deptid, depid: params.id])
    }

    def viewEmployees() {
        def allEmployees = eachdepService.getEmployees(params.deptid)
        //render emps
        render(view: "viewEmployees", model: [employees: allEmployees])
    }

    def updateForm() {
        render(view: "DepartmentUpdate", model: [name: params.deptid])
    }

    def addForm() {
        render(view: "DepartmentAdd")
        return
    }

    def addDepartment() {
        //render params
        def exists
        def existingDepartments
        existingDepartments = landingService.getDeps()
        //render existingDepartments[0].departmentname
        existingDepartments.each {
            if (params.department_name == it.departmentname) {
                flash.message = "Department Already Exists"
                //render params.department_name
                exists = true
            }
        }
        if (exists) {
            render(view: "DepartmentAdd")
        } else {
            eachdepService.addDepartment(params.department_name)
            redirect(controller: "landing")
        }

    }

    def updateDepartment() {
        def exists
        def existingDepartments
        existingDepartments = landingService.getDeps()
        //render existingDepartments
        existingDepartments.each {
            if (params.department_name == it.departmentname) {
                flash.message = "That department name already exists"
                exists = true
                return
            }

        }
        if(exists){
            render(view: "DepartmentUpdate")
        }
        else{
            eachdepService.updateDepartment(params.department_name, params.old_department_name)
            redirect(controller: "landing")
            return
        }

    }

    def deleteDepartment() {
        try {
            eachdepService.deleteDepartment(params.deptid)
        }
        catch (Exception e) {
            e.printStackTrace()
            render "Could not delete department.. Check if its empty"
        }
        redirect(controller: "landing")
        return
    }
}