package firstapp

class DepartmentsRESTController {

    def departmentService


    def getAllDepartments() {
        try {
            def departments = departmentService.getDepartments()
            if (departments != 'error') {
                respond([status: 200, departments: departments])
            } else {
                respond([status: 500, message: 'Something went wrong with DB, can\'t fetch departments'])
            }
        } catch (Exception e) {
            e.printStackTrace()
            respond([status: 500, message: 'Something went wrong with DB, can\'t fetch departments'])
        }

    }

    def updateDepartment() {
        try {
            def departmentID = params.departmentID
            def newName = params.newName
            def returnValue = departmentService.updateDepartment(newName, departmentID)
            if (returnValue != 'error') {
                respond status: 200
            } else {
                respond([status: 400, message: 'Something went wrong with your request, can\'t update Department'])
            }
        } catch (Exception e) {
            e.printStackTrace()
            respond([status: 500, message: 'Something went wrong with DB, can\'t update Department'])
        }
    }


    def deleteDepartment() {
        try {
            def departmentID = params.departmentID
            def returnValue = departmentService.deleteDepartment(departmentID)
            if (returnValue != 'error') {
                respond status: 200
            } else {
                respond([status: 500, message: 'Something went wrong with DB, can\'t delete Department'])
            }
        } catch (Exception e) {
            e.printStackTrace()
            respond([status: 500, message: 'Something went wrong with DB, can\'t delete Department'])
        }

    }

    def addDepartment() {
        try {
            def departmentName = params.departmentName
            def returnValue = departmentService.addDepartment(departmentName)
            if (returnValue != 'error') {
                respond status: 200
            } else {
                respond([status: 500, message: 'Something went wrong with DB can\'t add Department'])
            }
        } catch (Exception e) {
            e.printStackTrace()
            respond([status: 500, message: 'Something went wrong with DB can\'t add Department'])
        }

    }

    def getEmployees() {
        try {
            def departmentID = params.departmentID
            def employees = departmentService.getEmployees(departmentID)
            if (!employees) {
                respond([status: 501, message: 'Empty department'])
            } else {
                if (employees != 'error') {
                    respond([status: 200, employees: employees])
                } else {
                    respond([status: 500, message: 'Something went wrong with DB can\'t getEmployees'])
                }
            }
        } catch (Exception e) {
            e.printStackTrace()
            respond([status: 500, message: 'Something went wrong with DB can\'t getEmployees'])
        }

    }
}
