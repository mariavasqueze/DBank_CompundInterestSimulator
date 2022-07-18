import Debug "mo:base/Debug"; // to use Dbug, print 
import Time "mo:base/Time";
import Float "mo:base/Float";

actor DBank {
  stable var currentValue: Float = 300;  // stable variable is not flexible, now it is an orthogonal persistance variable, saved last state of variable across program
  // currentValue := 300; // use := to replace the current value to this new one 

  let id = 1234567; // using let meeans  CONSTANT, won't change later. 
  // Debug.print(debug_show(id)); // print to console

  stable var startTime  = Time.now();
  // startTime := Time.now();
  Debug.print(debug_show(startTime));


  public func topUp(amount: Float) { // nat is any natural number
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  }; //always close functions with semicolons

  public func withdraw(amount: Float) {
    let tempValue: Float = currentValue - amount; //explicitly giving it a type of int to the variable
    if(tempValue >= 0) {
    currentValue -= amount;
    Debug.print(debug_show(currentValue));
    }
    else {
      Debug.print("Amount too large, currentValue less than zero");
    }
  };

  // when a function just return a value (query func) is much faster
  public query func checkBalance(): async Float { // when a function return something add type and async, always async
    return currentValue;
  };

  public func compund() {
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS / 1000000000;
    currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
    startTime := currentTime;
  }
  
}
