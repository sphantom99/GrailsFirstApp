package firstapp

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class LandingService {
    def dataSource
    

    static scope = 'session'

    def getDeps() {
        def db = new Sql(dataSource)
        def temp = db.rows('''select * from  depts''') 

        db.close()
        return temp
    }
}
