//
//  Classification.JSONParser.swift
//  FieldSurvey
//
//  Created by Liam Flaherty on 11/3/17.
//  Copyright © 2017 Liam Flaherty. All rights reserved.
//

import Foundation

class ClassificationJSONParser{
    
    static let dateFormatter = DateFormatter()
    
    //switched type Classicication to title
    class func parse(_ data: Data) -> [title]{
        var Titles = [title]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok"
            {
                if let observations = root["observations"] as? [Any]{
                    for observation in observations{
                        if let observation = observation as? [String: String]{
                            //might need to fix he did sport name here
                            if let classification1 = observation["classification"],
                                let title1 = observation["title"],
                                let description1 = observation["description"],
                                let dateString = observation["date"],
                                let date = dateFormatter.date(from: dateString)
                                {
                                
                                    if let Title = title(animalName: classification1, title: title1, description: description1, date: date){
                                            Titles.append(Title)
                                    }
                                }
                        }
                    }
                }
            }
        return Titles
    }
    
}
