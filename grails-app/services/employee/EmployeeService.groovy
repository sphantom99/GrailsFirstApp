package firstapp

import grails.gorm.transactions.Transactional
import groovy.sql.Sql
import java.sql.Date
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
    
    def addEmployee(args){
        //try{
        def db = new Sql(dataSource)
        //dob = new Date(args[3])
        //return args
        
        args[3] = Date.valueOf(args[3])
        args[4] =  args[4].toInteger()
        def success = db.execute("INSERT INTO employee(firstName,lastName,afm,dob,department) VALUES(?,?,?,?,?)",[args[0],args[1],args[2],args[3],args[4]])
        db.close()
        return success
       //}
        //catch(Exception e){return e}
    }
}
