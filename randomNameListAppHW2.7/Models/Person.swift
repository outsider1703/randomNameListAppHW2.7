//
//  Person.swift
//  randomNameListAppHW2.7
//
//  Created by Macbook on 09.06.2020.
//  Copyright © 2020 Igor Simonov. All rights reserved.
//

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    var fullName: String
    
    static func personInfo() -> [Person] {

        var perstns: [Person] = []
        let persenInfo = DataManager()

        let name = persenInfo.namePerson.shuffled()
        let surname = persenInfo.surnamePerson.shuffled()
        let email = persenInfo.emailFoPerson.shuffled()
        let phone = persenInfo.phoneNumberFoPerson.shuffled()

        for value in 0..<name.count {
        let persen = Person(name: name[value],
                            surname: surname[value],
                            email: email[value],
                            phone: phone[value],
                            fullName: name[value] + " " + surname[value])
            perstns.append(persen)
        }
        return perstns
    }
}


