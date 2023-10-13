//
//  ViewController.swift
//  ClassmateAppAvila
//
//  Created by GABRIELA AVILA on 10/11/23.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // let nvc = segue.destination as! ViewController2
        
    }
    
    @IBAction func classmateAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toMain", sender: self)
    }
    
    @IBAction func quizAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toQuiz", sender: self)
    }
    

}

