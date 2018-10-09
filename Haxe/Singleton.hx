// Singleton pattern in haxe
// cerner_2^5_2018
class SingletonClass {
  public static var instance(default, null):SingletonClass = new SingletonClass();
  
  private function new () {}  
}

class Main {
  public static function main () {
    SingletonClass.instance;
	// Throws error "Cannot access private constructor"
    // new SingletonClass(); 
  }
}
