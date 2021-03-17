package department
import grails.gorm.transactions.Transactional
import groovy.sql.Sql
@Transactional
class EachdepService {

    def dataSource
    static scope = 'session'
    def getEmps(dep) {  
        try{
            def db = new Sql(dataSource)
            def temps = db.rows('''SELECT firstName,lastName,id 
            FROM employee WHERE department 
            IN (SELECT id FROM depts WHERE departmentName = ?)''',[dep])
            db.close()
            return temps
        }
        catch(Exception e){return 'error'}
    }

    def addDepartment(depName){
        try{
        def db = new Sql(dataSource)
        db.execute('''INSERT INTO depts(departmentName) VALUES(?)''',[depName])
        db.close()
        return
        }
        catch(Exception e){return 'error'}
    }

    def updateDepartment(newDepName,oldDepName){
        try{
            def db = new Sql(dataSource)
            db.execute('''UPDATE depts 
                        SET departmentname = ? 
                        WHERE departmentname = ?''',[newDepName,oldDepName])
            db.close()
            return
        }
        catch(Exception e){return 'error'}
    }

    def deleteDepartment(depname){
        try{
        def db = new Sql(dataSource)
        db.execute('''DELETE FROM depts WHERE departmentname = ?''',[depname])
        db.close()
        return
        }
        catch(Exception e){return 'error'}
    }

    
}
