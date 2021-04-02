package firstapp

class DepartmentController {

    def departmentService

    def index() {
        render(view: "index", model: [departmentName: params.departmentName, departmentID: params.departmentID])
    }

    def viewEmployees() {
        def allEmployees = departmentService.getEmployees(params.departmentID)
        render(view: "viewEmployees", model: [employees: allEmployees])
    }

    def updateForm() {
        render(view: "DepartmentUpdate", model: [name: params.departmentName, id: params.departmentID])
    }

    def addForm() {
        render(view: "DepartmentAdd")
    }

    def addDepartment() {
        def exists
        def existingDepartments
        existingDepartments = departmentService.getDepartments()
        existingDepartments.each {
            if (params.department_name == it.departmentname) {
                flash.message = "Department Already Exists"
                exists = true
            }
        }
        if (exists) {
            render(view: "DepartmentAdd")
        } else {
            departmentService.addDepartment(params.department_name)
            redirect(action: "mainIndex")
        }

    }

    def updateDepartment() {
        def exists
        def existingDepartments
        existingDepartments = departmentService.getDepartments()
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
            departmentService.updateDepartment(params.department_name, params.departmentID)
            redirect(action: "mainIndex")
        }

    }

    def deleteDepartment() {
        try {
            departmentService.deleteDepartment(params.departmentID)
        }
        catch (Exception e) {
            e.printStackTrace()
            render "Could not delete department.. Check if its empty"
        }
        redirect(action: "mainIndex")
    }

    def mainIndex() {
        def Departments = departmentService.getDepartments()
        render(view: "mainIndex", model: [departments: Departments])
    }
}