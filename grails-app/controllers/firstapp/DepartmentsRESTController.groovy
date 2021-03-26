package firstapp

class DepartmentsRESTController {

    def eachdepService
    def landingService


    def getAllDepartments() {
        def departments = landingService.getDepartments()
        if (departments!='error'){
            respond departments
            return
        } else{
            respond([status: 500, message: 'Something went wrong with DB, can\'t fetch departments'])
        }
    }

    def updateDepartment(){
        def oldName = params.oldName
        def newName = params.newName
        def returnValue = eachdepService.updateDepartment(newName,oldName)
        if(returnValue!='error'){
        respond status: 200
        } else {
            respond([status: 500, message: 'Something went wrong with DB, can\'t update Department'])
        }
        }

    def deleteDepartment() {
        def departmentName = params.departmentName
        def returnValue = eachdepService.deleteDepartment(departmentName)
        if(returnValue!='error'){
            respond: status: 200
        } else {
            respond([status: 500, message:'Something went wrong with DB, can\'t delete Department'])
        }
    }

    def addDepartment() {
        def departmentName = params.departmentName
        def returnValue = eachdepService.addDepartment(departmentName)
        if(returnValue!='error'){
            respond status: 200
        } else {
            respond([status: 500, message:'Something went wrong with DB can\'t add Department'])
        }
    }

    def getEmployees(){
        def departmentName = params.departmentName
        def employees = eachdepService.getEmployees(departmentName)
        if (!employees){
            respond([status: 501, message:'Empty department'])
        } else {
            if(employees!='error') {
                respond employees
            } else {
                respond([status: 500, message:'Something went wrong with DB can\'t getEmployees'])
            }
        }
    }
}
