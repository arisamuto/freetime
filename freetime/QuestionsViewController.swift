//
//  QuestionsViewController.swift
//  freetime
//
//  Created by Arisa Muto on 2019/06/28.
//  Copyright © 2019 Arisa Muto. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var choiceButtons: [UIButton]!
   
    
    var quiznumber = 0
    var correctanswers = 0
    
    var csvArray: [AnyObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func csvPath() {
        if let csvPath = Bundle.main.path(forResource: "問題", ofType: "csv"){
            do{
                let csvStr = try
                    String(contentsOfFile: csvPath, encoding: String.Encoding.utf8)
                let csvArr = csvStr.split(separator: "\n").map(String.init)
                
                for csvFile in csvArr {
                    let csvSplit = csvFile.components(separatedBy: ",")
                    csvArray.append(csvSplit as AnyObject)
                }
                print(csvArray)
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }
    
    func questions () {
        if quiznumber >= csvArray.count {
            let alert = UIAlertController(title: "", message: "", preferredStyle:.alert)
            let action = UIAlertAction(title: "", style: .default, handler: { (_) in self.dismiss(animated: true, completion: nil)})
            alert.addAction(action)
            present(alert, animated: true,completion: nil)
            return
        }
        
        let quizdata = csvArray[quiznumber]
        label1.text = "第" + "\(quiznumber+1)問"
        label2.text = (quizdata[0] as AnyObject as! String)
        
        let number1 = numberlist()
        for i in 0...30 {
            choiceButtons[i].setTitle(quizdata[number1[i]] as AnyObject as? String, for: .normal)
        }
        
    }
    
    func numberlist () -> [Int] {
        var list = [1,2,3,4]
        for _ in 1...10 {
            let i1 = Int(arc4random() % 4)
            let i2 = Int(arc4random() % 4)
            if i1 != i2 {
                list.swapAt(i1,i2)
            }
        }
        return list
    }
   
    @IBAction func ButtonCheck(_ sender: Any) {
    }

}
