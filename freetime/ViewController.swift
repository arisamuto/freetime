//
//  ViewController.swift
//  freetime
//
//  Created by Arisa Muto on 2019/06/27.
//  Copyright © 2019 Arisa Muto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var topic: UILabel!
    @IBOutlet var readybutton:UIButton!
    @IBOutlet var ready2button:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topic.layer.borderColor = UIColor.red.cgColor
        topic.layer.borderWidth = 1.0
        topic.layer.cornerRadius = 5
        
    }
    
    
}

