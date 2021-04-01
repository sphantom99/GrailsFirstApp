package department

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class DepartmentService {

    def dataSource
    static scope = 'session'

    def getEmployees(department) {
        try {
            def db = new Sql(dataSource)
            def employees = db.rows("""SELECT * 
            FROM employee WHERE department 
            IN (SELECT id FROM depts WHERE departmentName = $department)""")
            db.close()
            return employees
        } catch (Exception e) {
            e.printStackTrace();
            return 'error'
        }
    }

    def addDepartment(departmentName) {
        try {
            def db = new Sql(dataSource)
            db.execute("""INSERT INTO depts(departmentName) VALUES($departmentName)""")
            db.close()
            return
        }
        catch (Exception e) {
            e.printStackTrace()
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
        }
        catch (Exception e) {
            e.printStackTrace()
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
            e.printStackTrace()
            return 'error'
        }
    }


}
