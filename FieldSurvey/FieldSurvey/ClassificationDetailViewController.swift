//
//  ClassificationDetailViewController.swift
//  FieldSurvey
//
//  Created by Liam Flaherty on 11/3/17.
//  Copyright © 2017 Liam Flaherty. All rights reserved.
//

import UIKit

class ClassificationDetailViewController: UIViewController {
//might be type Title or classification
    var classific: title?
    
    var dateFormatteer = DateFormatter()
    
    @IBOutlet weak var animalIconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
     @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var actualName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatteer.dateStyle = .medium
        dateFormatteer.timeStyle = .medium
        
        self.title = "Observations"
        
        animalIconImageView.image = classific?.classification.image
        nameLabel.text = classific?.description
        actualName.text = classific?.title
        
        if let date = classific?.date {
            dateLabel.text = dateFormatteer.string(from: date)
        }
        else {
            dateLabel.text = ""
        }
        
        // Do any additional setup after loading the view.
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
