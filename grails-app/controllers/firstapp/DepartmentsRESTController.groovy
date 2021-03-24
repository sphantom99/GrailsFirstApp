package firstapp

class DepartmentsRESTController {

    def eachdepService
    def landingService


    def getAllDepartments() {
        def departments = landingService.getDepartments()
        if (departments == 'error'){
            respond status: 500
            return
        }
        if(departments){
            respond departments
            departments
            return
        }
    }

    def updateDepartment(){
        def oldName = params.oldName
        def newName = params.newName
        eachdepService.updateDepartment(newName,oldName)
        respond status: 200
    }

    def deleteDepartment() {
        def departmentName = params.departmentName
        eachdepService.deleteDepartment(departmentName)
        respond status: 200
    }

    def addDepartment() {
        def departmentName = params.departmentName
        eachdepService.addDepartment(departmentName)
    }

    def getEmployees(){
        def departmentName = params.departmentName
        def employees = eachdepService.getEmployees(departmentName)
        respond employees
    }
}
