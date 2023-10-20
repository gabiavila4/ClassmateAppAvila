//
//  ViewController.swift
//  ClassmateAppAvila
//
//  Created by GABRIELA AVILA on 10/11/23.
//
protocol ViewControllerDelegate{
    func addClassmate(_cArray: [Classmate])
}
import UIKit

class ViewController: UIViewController, ViewControllerDelegate {
    
    

    var classmates : [Classmate] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMain"
        {
            
        }else if segue.identifier == "toTV"
        {
            let nvc = segue.destination as! ViewController4
               nvc.classmates3 = classmates
               nvc.delegate = self
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
    
    @IBAction func listAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toTV", sender: self)
    }
    
    
    
    func addClassmate(_cArray cArray: [Classmate]) {
        classmates = cArray
    }
}

