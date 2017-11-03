//
//  ClassificationJSONLoader.swift
//  FieldSurvey
//
//  Created by Liam Flaherty on 11/3/17.
//  Copyright © 2017 Liam Flaherty. All rights reserved.
//

import Foundation

import Foundation

class TitlesJSONLoader{
    //might need to change title to Title or Titles
    class func load(fileName: String) -> [title]{
        var observations = [title]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            observations = ClassificationJSONParser.parse(data)
        }
        return observations
    }
    
}
