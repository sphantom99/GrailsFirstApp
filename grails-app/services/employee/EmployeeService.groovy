package firstapp

import grails.gorm.transactions.Transactional
import groovy.sql.Sql
//import java.sql
@Transactional
class EmployeeService {

    def dataSource
    
    def getEmpDetails(String empID) {
        def db = new Sql(dataSource)
        def temp = db.rows("SELECT * FROM employee WHERE id = ?::int",[empID])
        db.close()
        return temp
    }
    
    def addEmployee(Map params){
       // try{
        //def db = new Sql(dataSource)
        def dob = params.dob_year +"-"+ params.dob_month+"-" + params.dob_day 
        dob = new Date(dob)
        def args = [params.first_name, params.last_name, params.afm, dob, params.department]
        return args
        //db.execute("INSERT INTO employee(firstName,lastName,afm,dob,department) VALUES(?,?,?,?,?)",)
        //db.close()
        //}
        //catch(Exception e){return e}
    }
}
