//
//  CharacterStructure.swift
//  CCv2
//
//  Created by Patrick Hardison on 2/23/21.
//

import Foundation
struct Character {
    var name: String
    var race: String
    var background: String
    var Cclass: String
    var stats = [
        "str" : 0,
        "dex" : 0,
        "con" : 0,
        "int" : 0,
        "wis" : 0,
        "cha" : 0
    ]
}
