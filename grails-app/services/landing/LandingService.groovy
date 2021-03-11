package firstapp

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class LandingService {
    def dataSource
    def temp
    static scope = "session"
    def getDeps() {
        def db = new Sql(dataSource)
        temp = db.rows('select * from depts') //
        db.close()
        return temp
    }
}
