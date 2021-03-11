package firstapp
import grails.gorm.transactions.Transactional
import groovy.sql.Sql
@Transactional
class EachdepService {

    def dataSource
    static scope = "session"
    def getEmps(dep) {  
        def db = new Sql(dataSource)
        def temps = db.rows('''SELECT firstName,lastName,id 
        FROM employee WHERE department 
        IN (SELECT id FROM depts WHERE departmentName = ?)''',[dep])
        db.close()
        return temps
    }
}
