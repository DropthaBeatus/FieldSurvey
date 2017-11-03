//
//  Animal.swift
//  FieldSurvey
//
//  Created by Liam Flaherty on 11/3/17.
//  Copyright © 2017 Liam Flaherty. All rights reserved.
//

import UIKit

enum Classification: String{
    case bird
    case amphibian
    case mammal
    case plant
    case reptile
    case insect
    case fish
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
