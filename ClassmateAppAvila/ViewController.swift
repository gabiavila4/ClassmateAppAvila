//
//  ViewController.swift
//  ClassmateAppAvila
//
//  Created by GABRIELA AVILA on 10/11/23.
//

import UIKit

class ViewController: UIViewController {

    var classmates : [Classmate] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMain"
        {
            
        }else
        {
            
        }
        //nvc = new view controller giving access to it
     let nvc = segue.destination as! ViewController2
        nvc.classmates2 = classmates
        nvc.delegate = self
        
    }
    
    @IBAction func classmateAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toMain", sender: self)
    }
    
    @IBAction func quizAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toQuiz", sender: self)
    }
    
    
}

