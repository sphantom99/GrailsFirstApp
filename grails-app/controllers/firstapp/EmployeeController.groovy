package firstapp

class EmployeeController {

    def employeeService
    def departmentService


    def show() {
        try {
            def employeeData = employeeService.getEmpDetails(params.empid)
            if (!employeeData) {
                render "Something went wrong with fetching this employee"
                return
            }
            def allDepartments = departmentService.getDepartments()
            render(view: "show", model: [employee: employeeData, departments: allDepartments, dep: params.deptid])
        } catch (Exception e) {
            e.printStackTrace()
        }
    }

    def addIndex() {
        try {
            def departments = departmentService.getDepartments()

            render(view: "addIndex", model: [dep: departments, dept: params.deptid])
        } catch (Exception e) {
            e.printStackTrace()
        }
    }

    def add() {
        try {
            def first_name = params.first_name
            def last_name = params.last_name
            def afm = params.afm
            def year = params.dob_year
            def month = params.dob_month
            def day = params.dob_day
            def department = params.department
            def dob = year + "-" + month + "-" + day
            employeeService.addEmployee(first_name, last_name, afm, dob, department)
            redirect(controller: 'department', action: 'mainIndex')
        } catch (Exception e) {
            e.printStackTrace()
        }
    }

    def update() {
        try {
            def empid = params.system_id
            def first_name = params.first_name
            def last_name = params.last_name
            def afm = params.afm
            def year = params.dob_year
            def month = params.dob_month
            def day = params.dob_day
            def department = params.department
            def dob = year + "-" + month + "-" + day
            if (params.subbtn == 'update') { //check to see which button was pressed and act accordingly, could change
                employeeService.updateEmployee(empid, first_name, last_name, afm, dob, department)
            } else if (params.subbtn == 'delete') {
                employeeService.deleteEmployee(empid)
            }
            redirect(controller: "department", action: 'mainIndex')
        } catch (Exception e) {
            e.printStackTrace()
        }
    }
}
