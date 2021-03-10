package firstapp

class DepartmentController {

    def eachdepService 
    def emps
    def index() {
        //try{
        emps = eachdepService.getEmps(params.deptid)
        
        
        //render emps
        render(view: "index", model:[employees: emps]) 
        //work
       // }
       /* catch(Exception e){
            render e
        }*/
    }
}