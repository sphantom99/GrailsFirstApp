package firstapp
import grails.gorm.transactions.Transactional
import groovy.sql.Sql
@Transactional
class EachdepService {

    def dataSource
    static scope = 'session'
    def getEmps(dep) {  
        def db = new Sql(dataSource)
        def temps = db.rows('''SELECT firstName,lastName,id 
        FROM employee WHERE department 
        IN (SELECT id FROM depts WHERE departmentName = ?)''',[dep])
        db.close()
        return temps
    }

    def addDepartment(depName){
        def db = new Sql(dataSource)
        db.execute('''INSERT INTO depts(departmentName) VALUES(?)''',[depName])
        db.close()
        return
    }

    def updateDepartment(newDepName,oldDepName){
        def db = new Sql(dataSource)
        db.execute('''UPDATE depts 
                      SET departmentname = ? 
                      WHERE departmentname = ?''',[newDepName,oldDepName])
        db.close()
        return
    }

    def deleteDepartment(depname){
        def db = new Sql(dataSource)
        db.execute('''DELETE FROM depts WHERE departmentname = ?''',[depname])
        db.close()
        return
    }

    
}
