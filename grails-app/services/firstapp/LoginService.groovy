package firstapp

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class LoginService {

    def dataSource

    def checkIfExists(username, password) {
        try {
            def db = new Sql(dataSource)
            def user = db.rows("""SELECT * FROM users 
                        WHERE username = $username 
                        AND pwd = $password """)
            db.close()
            return user[0] && user[0].isactive
        } catch (Exception e) {
            e.printStackTrace()
            return 'error'
        }
    }

    def checkSession() {
        return session?.user?.active == true
    }

    def apiLogin(username,password) {
        def db = new Sql(dataSource)
        def exists = db.firstRow("""SELECT * FROM users 
                        WHERE username = $username 
                        AND pwd = $password""")

        if(exists && exists.isactive){
            return true
        } else {
            return false
        }
    }
}
