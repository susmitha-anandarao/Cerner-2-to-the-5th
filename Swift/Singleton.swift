// Example of creating Singleton
// cerner_2^5_2018
class Singleton {

    static let singletonInstance = Singleton()
   
    // Because this class is singleton only one instance of this class can be created
    private init() {
        print("Singleton has been initialized")
    }

    func requestAccess() {
        let number = Int.random(in: 0 ..< 10)
        if(number % 2 == 0 ){
            print("Granted access")
        } else {
            print("Denied access")
        }
    }
}

Singleton.singletonInstance.requestAccess()
Singleton.singletonInstance.requestAccess()
Singleton.singletonInstance.requestAccess()
