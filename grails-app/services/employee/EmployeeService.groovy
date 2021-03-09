package firstapp

import grails.gorm.transactions.Transactional
import groovy.sql.Sql
@Transactional
class EmployeeService {

    def dataSource
    
    def getEmpDetails(empID) {
        def db = new Sql(dataSource)
        def temp = db.rows("SELECT * FROM employee WHERE id = ?::int;",[empID])
        db.close()
        return temp
    }
}
