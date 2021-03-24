package firstapp

class EmployeesRESTController {

    def employeeService
    def addEmployee() {
        def firstName = params.first_name
        def lastName = params.last_name
        def afm = params.afm
        def year = params.dob_year
        def month = params.dob_month
        def day = params.dob_day
        def department = params.department
        def dob = year + "-" + month + "-" + day
       // def args = [firstName, lastName, afm, dob, department]
        def ret = employeeService.addEmployee(firstName, lastName, afm, dob, department)
        if (ret!='error'){
            respond status: 200
        }
    }
}
