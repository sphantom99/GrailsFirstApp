package firstapp
import grails.gorm.transactions.Transactional
import groovy.sql.Sql
@Transactional
class EachdepService {

    def dataSource

    def getEmps(String dep) {  
        def db = new Sql(dataSource)
        def temps = db.rows('SELECT firstName,lastname,id FROM employee WHERE department IN (SELECT id FROM Dept WHERE departmentname = ?);',[dep])
        db.close()
        return temps
    }
}
