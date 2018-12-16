import UIKit

class Firebase {
    
    func createUser (username: String, password: String, completion: (Bool, Int) -> Void){
        
        //do network stuff, time consuming
        
        let isSuccess = true
        let userID = 123
        
        completion(isSuccess,userID)
    }
}

class MyApp {
    
    func registerButtonPressed() {
        
        let firebase = Firebase()
        
        firebase.createUser(username: "Ignacio", password: "testing") {
            (isSuccess, userID) in
            
            print("registration is successful: \(isSuccess)")
            print("userID is: \(userID)")
            
        }
    }
}

let myApp = MyApp()

myApp.registerButtonPressed()
