//
//  School.swift
//  Hospital
protocol Payable {
    func wages() -> Double
}

extension Payable {
    func wages() -> Int {
        return 50_000
    }
}

protocol TimeOff {
    var vacationDays: Int {
        get
        set
        }
    func requestForVacation(days: Int) -> Bool
}

extension TimeOff {
    func requestForVacation(days: Int) -> Bool {
        guard vacationDays >= days else {return false}
        return true
    }
}

enum Punishment {
    case severe, light, medium
}

protocol Reprimand {
    func disciplineStudent(scale: Punishment) -> String
    func callParentDeliveringMessage(scale: Punishment) -> String
}

extension Reprimand {
    func disciplineStudent(scale: Punishment) -> String {
        switch scale {
        case .severe:
            return "We are expelling you from the school!"
        case .light:
            return "You're to go back to class, don't do it again."
        case .medium:
            return "Why would you think that's a good idea?! You're going to detention."
        }
    
    }
    func callParentDeliveringMessage(scale: Punishment) -> String {
        switch scale {
        case .severe:
            return "Your child has been expelled from school."
        case .light:
            return "Your child thought it was funny to put gum in Amy's hair."
        case .medium:
            return "Your child has become a terror in the classroom."
        }
    }
}

enum Subject {
    case math, science, english
}

protocol Teach {
    func teachSubject(subject: Subject) -> String
}

extension Teach {
    func teachSubject(subject: Subject) -> String {
        switch subject {
        case .math:
            return "Take out your math books please."
        case .science:
            return "Time to learn the best subject of all! Science!!"
        case .english:
            return "To read or not to read. Everyone take out your english books."
        }
    }
}

protocol Employee: Payable, TimeOff { }


/*

 (8) - Create an enum called Subject which has three cases. math, science and english.
 (9) - Create a protocol called Teach which requires that there be one function. That one function should be called teachSubject(_:) which takes in one argument called subject of type Subject. It will return a String.
 (10) - Create an extension on Teach and provide a default implementation of the teachSubject(_:) function.
 In your implementation, you should switch on the subject argument and return the following String based upon the specific case.
 If the case is .math - "Take out your math books please."
 
 If the case is .science - "Time to learn the best subject of all! Science!!"
 
 If the case is .english - "To read or not to read. Everyone take out your english books.
 
 (17) - There's one more neat thing you can do here. If you notice something, each struct here shares the Payable and TimeOff protocol. Those seem to be something inherit to every single employee. Well, we can create an Employee protocol which adopts the Payable & TimeOff protocols. Crazy stuff, lets do it.
 Going back to the School.swift file, lets type this in:
 protocol Employee: Payable, TimeOff { }
 So anyone that adopts this Employee protocol must also conform to the Payable and TimeOff protocols as well! So we can now go back to our SchoolEmployees.swift file and take out where each struct is adopting the Payable and TimeOff protocol and replace it with the Employee protocol (which now accounts for both of those).
 You can test out your code in the ViewController.swift file, writing code in the viewDidLoad() function.
 ALSO!, there are two test files which are making sure you implement everything correctly. You can look at these tests in the ProtocolTests.swift file and the SchoolEmployeeTests.swift file.

*/













