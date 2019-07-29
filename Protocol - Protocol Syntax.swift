import Foundation

// Protocol
// Protocol Syntax

    /*
    protocol ProtocolName {
        propertyRequirements
        methodRequirements
        initializerRequirements
        subscriptRequirements
        }

    protocol ProtocolName: Protocol, .. {
        }
        */


protocol Something {
    func doSomething()
}

// Adopting Protocols 
    
    /*
    enum TypeName: ProtocolName, ... {
        }
    
    struct TypeName: ProtocolName, ... {
        }

    class TypeName: SuperClass. ProtocolName, ... {
        }
    */

struct Size: Something {
    func doSomething() {
    }
}

//Class-Only Protocols 

    /* protocol ProtocolName: AnyObject {
        }
        */

protocol SomethingObject: AnyObject, Something {
}

class Object: SomethingObject {
    func doSomething() {
        
    }
}
