package firstapp

import grails.gorm.transactions.Transactional
import groovy.sql.Sql
@Transactional
class LoginService {

    def dataSource
    def checkIfExists(username,password) {
        try{
        def db = new Sql(dataSource)
        def user = db.rows('''SELECT * FROM users 
                        WHERE username = ? 
                        AND pwd = ? ''',[username,password])
        db.close()
        if(user[0] && user[0].isactive){
            return true
        }
        else return false
        }
        catch(Exception e){return 'error'}
    }

    def checkSession(){
        if(session.getAttribute('data').getAttribute('active')==true){
            return true
    }
        else {
            return false
        }
    }
}
