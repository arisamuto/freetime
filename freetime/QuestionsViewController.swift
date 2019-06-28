//
//  QuestionsViewController.swift
//  freetime
//
//  Created by Arisa Muto on 2019/06/28.
//  Copyright © 2019 Arisa Muto. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    var quizArray = [[Any]] ()
    var correctAnswer: Int = 0
    
    @IBOutlet var textview: UITextView!
    @IBOutlet var choiceButtons1: UIButton!
    @IBOutlet var choiceButtons2: UIButton!
    @IBOutlet var choiceButtons3: UIButton!
    @IBOutlet var choiceButtons4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func ButtonCheck(_ sender: Any) {
    }

}
