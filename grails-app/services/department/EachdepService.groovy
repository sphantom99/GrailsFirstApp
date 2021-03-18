package department

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class EachdepService {

    def dataSource
    static scope = 'session'

    def getEmployees(dep) {
        try {
            def db = new Sql(dataSource)
            def employees = db.rows("""SELECT firstName,lastName,id 
            FROM employee WHERE department 
            IN (SELECT id FROM depts WHERE departmentName = $dep)""")
            db.close()
            return employees
        } catch (Exception e) {
            //TODO kanto pantoy!!!!
            e.printStackTrace();
            return 'error'
        }
    }

    def addDepartment(departmentName) {
        //FIXME na ginei opws parapanw
        try {
            def db = new Sql(dataSource)
            db.execute("""INSERT INTO depts(departmentName) VALUES($departmentName)""")
            db.close()
            return
        }
        catch (Exception e) {
            return 'error'
        }
    }

    def updateDepartment(newDepartmentName, oldDepartmentName) {
        try {
            def db = new Sql(dataSource)
            db.execute("""UPDATE depts 
                        SET departmentname = $newDepartmentName 
                        WHERE departmentname = $oldDepartmentName""")
            db.close()
            return
        }
        catch (Exception e) {
            return 'error'
        }
    }

    def deleteDepartment(departmentName) {
        try {
            def db = new Sql(dataSource)
            db.execute("""DELETE FROM depts WHERE departmentname = $departmentName""")
            db.close()
            return
        }
        catch (Exception e) {
            return 'error'
        }
    }


}
