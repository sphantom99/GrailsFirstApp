package firstapp

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class LandingService {
    def dataSource
    def temp
    def logger() {
        def db = new Sql(dataSource)
        temp = db.rows('SELECT * FROM dept;')
        return temp
    }
}
