package employee

import grails.gorm.transactions.Transactional
import groovy.sql.Sql
import java.sql.Date

//import java.sql
@Transactional
class EmployeeService {

    def dataSource
    static scope = 'session'

    def getEmpDetails(employeeID) {
        try {
            def db = new Sql(dataSource)
            employeeID = employeeID.toInteger()
            def employee = db.firstRow("SELECT * FROM employee WHERE id = $employeeID")
            db.close()
            return employee
        }
        catch (Exception e) {
            e.printStackTrace()
            return 'error'
        }
    }

    def addEmployee(firstName, lastName, afm, dob, department) {
        try {
            def db = new Sql(dataSource)
            //dob = new Date(args[3])
            //return args
            //println(dob)
            dob = Date.valueOf(dob)
            department = department.toInteger()
            def success = db.execute("""INSERT INTO
            employee(firstName,lastName,afm,dob,department) 
            VALUES($firstName,$lastName,$afm,$dob,$department)""")
            db.close()
            return success
        }
        catch (Exception e) {
            e.printStackTrace()
            return 'error'
        }
    }

    def updateEmployee(employeeID, firstName, lastName, afm, dob, department) {
        try {
            def db = new Sql(dataSource)
            //dob = new Date(args[3])
            //return args
            dob = Date.valueOf(dob)
            department = department.toInteger()
            employeeID = employeeID.toInteger()
            db.execute("""UPDATE employee 
            SET firstName = $firstName, lastName = $lastName, afm = $afm, dob = $dob, 
            department = $department WHERE id = $employeeID""")
            db.close()
            //return args
        }
        catch (Exception e) {
            e.printStackTrace()
            return 'error'
        }

    }

    def deleteEmployee(employeeID) {
        try {
            def db = new Sql(dataSource)
            employeeID = employeeID.toInteger()
            db.execute("""DELETE FROM employee WHERE id = $employeeID""")
            db.close()
        }
        catch (Exception e) {
            e.printStackTrace()
            return 'error'
        }
    }
}
