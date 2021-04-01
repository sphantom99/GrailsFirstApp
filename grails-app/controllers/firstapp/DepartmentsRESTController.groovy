package firstapp

class DepartmentsRESTController {

    def departmentService



    def getAllDepartments() {
        def departments = departmentService.getDepartments()
        if (departments!='error'){
            respond departments
            return
        } else{
            respond([status: 500, message: 'Something went wrong with DB, can\'t fetch departments'])
        }
    }

    def updateDepartment(){
        def departmentID = params.departmentID
        def newName = params.newName
        def returnValue = departmentService.updateDepartment(newName,departmentID)
        if(returnValue!='error'){
        respond status: 200
        } else {
            respond([status: 500, message: 'Something went wrong with DB, can\'t update Department'])
        }
        }

    def deleteDepartment() {
        def departmentID = params.departmentID
        //println(departmentName)
        def returnValue = departmentService.deleteDepartment(departmentID)
        if(returnValue!='error'){
            respond status: 200
        } else {
            respond([status: 500, message:'Something went wrong with DB, can\'t delete Department'])
        }
    }

    def addDepartment() {
        def departmentName = params.departmentName
        def returnValue = departmentService.addDepartment(departmentName)
        if(returnValue!='error'){
            respond status: 200
        } else {
            respond([status: 500, message:'Something went wrong with DB can\'t add Department'])
        }
    }

    def getEmployees(){
        def departmentID = params.departmentID
        def employees = departmentService.getEmployees(departmentID)
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
