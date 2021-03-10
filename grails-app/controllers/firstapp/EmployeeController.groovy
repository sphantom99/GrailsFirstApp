package firstapp

class EmployeeController {

def employeeService
def landingService

    def index() {
        def data = employeeService.getEmpDetails(params.id)
        render data
//        render(view:"employee" model:[emp : data])
     }
    
    def show(){
        
        def data = employeeService.getEmpDetails(params.empid)
        return [emp: data]
    }

    def addIndex(){
        def deps = landingService.getDeps()
        render(view: "addIndex", model: [dep: deps])
        //render(view:)
    }
    def add(){
        //render params
        def first_name = params.first_name
        def last_name = params.last_name
        def afm = params.afm
        def year = params.dob_year
        def month = params.dob_month
        def day = params.dob_day
        def department = params.department
        def dob = year+"-"+ month+"-"+day 
        def args = [first_name,last_name,afm,dob,department]
        def ret = employeeService.addEmployee(args)
        redirect(controller: 'landing',action: 'index')
    }
}
