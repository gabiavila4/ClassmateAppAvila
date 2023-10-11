//
//  Classmate.swift
//  ClassmateAppAvila
//
//  Created by GABRIELA AVILA on 10/11/23.
//

import Foundation
public class Classmate{
    
    var name : String
    var nickname : String
    
    
    enum Rating{
        case fire
        case mid
        case trash
    }
    
    var nameRating: Rating
    
    init(name: String, nickname: String, nameRating: Rating) {
        self.name = name
        self.nickname = nickname
        self.nameRating = nameRating
    }
    
    
    
    
}
