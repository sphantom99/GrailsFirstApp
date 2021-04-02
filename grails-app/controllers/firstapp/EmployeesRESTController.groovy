package firstapp

class EmployeesRESTController {

    def employeeService

    def addEmployee() {
        try {
            def firstName = params.firstName
            def lastName = params.lastName
            def afm = params.afm
            def year = params.dobYear
            def month = params.dobMonth
            def day = params.dobDay
            def department = params.department
            def dob = year + "-" + month + "-" + day
            def args = [firstName, lastName, afm, dob, department]

            def ret = employeeService.addEmployee(firstName, lastName, afm, dob, department)
            if (ret != 'error') {
                respond status: 200
            } else {
                respond([status: 500, message: "Something went wrong with DB, can\'t add Employee"])
            }
        } catch (Exception e) {
            e.printStackTrace()
            respond([status: 500, message: "Something went wrong with DB, can\'t add Employee"])
        }

    }

    def getEmployee() {
        try {
            def employeeID = params.ID
            def employeeData = employeeService.getEmpDetails(employeeID)
            if (!employeeData) {
                respond([status: 404, message: 'Employee does not exist'])
            }
            if (employeeData != 'error') {
                respond([status: 200, employeeData: employeeData])
            } else {
                respond([status: 500, message: 'Something went wrong with DB can\'t get Employee'])
            }
        } catch (Exception e) {
            e.printStackTrace()
            respond([status: 500, message: 'Something went wrong with DB can\'t get Employee'])
        }

    }


    def updateEmployee() {
        try {
            def employeeID = params.ID
            def firstName = params.firstName
            def lastName = params.lastName
            def afm = params.afm
            def year = params.dobYear
            def month = params.dobMonth
            def day = params.dobDay
            def department = params.department
            def dob = year + "-" + month + "-" + day
            def returnValue = employeeService.updateEmployee(employeeID, firstName, lastName, afm, dob, department)
            if (returnValue != 'error') {
                respond status: 200
            } else {
                respond([status: 500, message: 'Something went wrong with the DB'])
            }
        } catch (Exception e) {
            e.printStackTrace()
            respond([status: 500, message: 'Something went wrong with the DB'])
        }

    }

    def deleteEmployee() {
        try {
            def employeeID = params.ID
            def returnValue = employeeService.deleteEmployee(employeeID)
            if (returnValue != 'error') {
                respond status: 200
            } else {
                respond([status: 500, message: 'something went wrong with DB, did not delete employee'])
            }
        } catch (Exception e) {
            e.printStackTrace()
            respond([status: 500, message: 'something went wrong with DB, did not delete employee'])
        }

    }
}
