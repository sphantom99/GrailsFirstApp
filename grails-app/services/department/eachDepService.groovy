package firstapp
import grails.gorm.transactions.Transactional
import groovy.sql.Sql
@Transactional
class EachdepService {

    def dataSource

    def getEmps(dep) {
        def db = new Sql(dataSource)
        def temps = db.rows('SELECT first_name,last_name FROM Employee WHERE department IN (SELECT id FROM Dept WHERE department_name = ?);',[dep])
        db.close()
        return temps
    }
}
