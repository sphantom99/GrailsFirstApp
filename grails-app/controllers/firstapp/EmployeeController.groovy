package firstapp

class EmployeeController {

    def employeeService
    def landingService


    def index() {
        def data = employeeService.getEmpDetails(params.id)
        render data
//        render(view:"employee" model:[emp : data])
    }

    def show() {
        def employeeData = employeeService.getEmpDetails(params.empid)
        if (!employeeData) {
            render "Something went wrong with fetching this employee"
            return
        }
        def depts = landingService.getDeps()
        def args = employeeData + [depts] + params.empid
        //render parms
        render(view: "show", model: [emp: args, dep: params.deptid])
    }

    def addIndex() {
        def deps = landingService.getDeps()

        render(view: "addIndex", model: [dep: deps, dept: params.deptid])
        //render(view:)
    }

    def add() {
        //render params
        def first_name = params.first_name
        def last_name = params.last_name
        def afm = params.afm
        def year = params.dob_year
        def month = params.dob_month
        def day = params.dob_day
        def department = params.department
        def dob = year + "-" + month + "-" + day
        def args = [first_name, last_name, afm, dob, department]
        def ret = employeeService.addEmployee(first_name, last_name, afm, dob, department)
        redirect(controller: 'landing', action: 'index')
    }

    def update() {
        //render params 
        def empid = params.system_id
        def first_name = params.first_name
        def last_name = params.last_name
        def afm = params.afm
        def year = params.dob_year
        def month = params.dob_month
        def day = params.dob_day
        def department = params.department
        def dob = year + "-" + month + "-" + day
        def args = [empid, first_name, last_name, afm, dob, department]
        if (params.subbtn == 'update') {
            employeeService.updateEmployee(empid, first_name, last_name, afm, dob, department)
        } else if (params.subbtn == 'delete') {
            employeeService.deleteEmployee(empid)
        }
        //render params
        //render args
        //
        //render ret
        redirect(controller: "landing")
    }
}
