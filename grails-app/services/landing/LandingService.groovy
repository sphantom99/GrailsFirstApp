package landing

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class LandingService {
    def dataSource


    static scope = 'session'

    def getDeps() {
        try {
            def db = new Sql(dataSource)
            def temp = db.rows("""select * from  depts""")

            db.close()
            return temp
        } catch (Exception e) {
            e.printStackTrace()
            return 'error'
        }
    }
}
