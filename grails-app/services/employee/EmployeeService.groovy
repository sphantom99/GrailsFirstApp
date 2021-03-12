package firstapp

import grails.gorm.transactions.Transactional
import groovy.sql.Sql
import java.sql.Date
//import java.sql
@Transactional
class EmployeeService {

    def dataSource
    static scope = 'session'
    def getEmpDetails(String empID) {
        def db = new Sql(dataSource)
        empID = empID.toInteger()
        def temp = db.rows('SELECT * FROM employee WHERE id = ?',[empID])
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
        def success = db.execute('''INSERT INTO 
        employee(firstName,lastName,afm,dob,department) 
        VALUES(?,?,?,?,?)''',[args[0],args[1],args[2],args[3],args[4]])
        db.close()
        return success
       //}
        //catch(Exception e){return e}
    }

    def updateEmployee(args){
        //try{
        def db = new Sql(dataSource)
        //dob = new Date(args[3])
        //return args
        
        args[4] = Date.valueOf(args[4])
        args[5] = args[5].toInteger()
        args[0] = args[0].toInteger()
        
        
        db.execute('''UPDATE employee 
        SET firstName = ?, lastName = ?, afm = ?, dob = ?, 
        department = ? WHERE id = ?''',[args[1],args[2],args[3],args[4],args[5],args[0]])
        db.close()
        //return args
        
        //catch(Exception e){return e}*/
    
    }

    def deleteEmployee(empid){
        def db = new Sql(dataSource)
        empid = empid.toInteger()
        db.execute('''DELETE FROM employee WHERE id = ?''',[empid])
        db.close()
        
    }
}
