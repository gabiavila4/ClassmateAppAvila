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
    
    var c1 = Classmate(name: "Gabi", nickname: "Grab-and-Go Gabi", nameRating: .fire)
    var c2 = Classmate(name: "Annahlu", nickname: "Amerilu", nameRating: .fire)
    var c3 = Classmate(name: "Avery", nickname: "Kevin", nameRating: .fire)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        classmates.append(c1)
        classmates.append(c2)
        classmates.append(c3)
        // Do any additional setup after loading the view.
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMain"
        {
            let nvc = segue.destination as! ViewController2
               nvc.classmates2 = classmates
               nvc.delegate = self
        }else if segue.identifier == "toTV"
        {
            let nvc2 = segue.destination as! ViewController4
               nvc2.classmates3 = classmates
               nvc2.delegate = self
        }else if segue.identifier == "toQuiz"
        {
            let nvc3 = segue.destination as! ViewController3
               nvc3.classmatesquiz = classmates
               nvc3.delegate = self
        }
        //nvc = new view controller giving access to it
     
        
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

