// *****
// * 1 *
// *****
// The 'Certificate' after attending course
//protocol AdvancedLifeSupport {
//    func performCPR()
//}
//
//class EmergencyCallHandler {
//    // Delegate has a data type. Whoever sets themselves as delegate must know how to performCPR
//    var delegate: AdvancedLifeSupport?
//
//    func assessSituation() {
//        print("Can you tell me what happened?")
//    }
//
//    func medicalEmegency() {
//        // Whoever is oncall/carrying pager please perfomrCPR
//        delegate?.performCPR()
//    }
//}
//
//// Use Protocol as data type - Been on AdvancedLifeSupport course and can PerformCPR
//struct Paramendic: AdvancedLifeSupport {
//
//    // Get told who handler is/ who is going to give notifications
//    init(handler: EmergencyCallHandler) {
//        // I am delegate and will listen for pager
//        handler.delegate = self
//    }
//
//    // Must conform to AdvancedLifeSupport Protocol
//    func performCPR() {
//        print("The paramedic does chest compressions, 30 per second.")
//    }
//
//}
//
//let emilio = EmergencyCallHandler()
//let pete = Paramendic(handler: emilio)
//
//emilio.assessSituation()
//emilio.medicalEmegency()

// *****
// * 2 *
// *****
// The 'Certificate' after attending course
protocol AdvancedLifeSupport {
    func performCPR()
}

class DannyTest {
    
}

class EmergencyCallHandler {
    // Delegate has a data type. Whoever sets themselves as delegate must know how to performCPR
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmegency() {
        // Whoever is oncall/carrying pager please perfomrCPR
        delegate?.performCPR()
    }
}

// Use Protocol as data type - Been on AdvancedLifeSupport course and can PerformCPR
struct Paramendic: AdvancedLifeSupport {
    
    // Get told who handler is/ who is going to give notifications
    init(handler: EmergencyCallHandler) {
        // I am delegate and will listen for pager
        handler.delegate = self
    }
    
    // Must conform to AdvancedLifeSupport Protocol
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }

}

// Adopted AdvancedLifeSupport Protocol so can performCPR
class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler,
         djs: DannyTest) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per second.")
    }
    
    func useStethescope() {
        print("Listening for heart sounds")
    }
    
}

// Immediatly adopt the AdvancedLifeSupport - Inherited from Doctor CLass
class Surgeon: Doctor {
    
    override func performCPR() {
        // PerformCPR but also do extra
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }
    
    func useElectricDrill() {
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()

//let pete = Paramendic(handler: emilio)
let danny = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmegency()
