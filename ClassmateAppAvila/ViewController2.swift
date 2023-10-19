//
//  ViewController2.swift
//  ClassmateAppAvila
//
//  Created by GABRIELA AVILA on 10/11/23.
//

import UIKit

class ViewController2: UIViewController {
    
    var classmates2 : [Classmate] = []
    var i = 0
    var delegate : ViewControllerDelegate!
    
    @IBOutlet weak var classmateOutlet: UILabel!
    
    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var nicknameOutlet: UITextField!
    
    @IBOutlet weak var ratingOutlet: UITextField!
    
    @IBOutlet weak var overOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        var c1 = Classmate(name: "Gabi", nickname: "Grab-and-Go Gabi", nameRating: .fire)
        var c2 = Classmate(name: "Annahlu", nickname: "Amerilu", nameRating: .fire)
        var c3 = Classmate(name: "Avery", nickname: "Kevin", nameRating: .fire)
        classmates2.append(c1)
        classmates2.append(c2)
        classmates2.append(c3)
        
    }
    

    @IBAction func classmateAction(_ sender: UIButton) {
        
       //while(i < classmates.count)
       // {
            i = 0
            classmateOutlet.text = "\(classmates2[i].name) ~ \(classmates2[i].nickname) ~ \(classmates2[i].nameRating) "
           
        //}
    }
    
    @IBAction func nextCMAction(_ sender: UIButton) {
        
        if(i < classmates2.count - 1)
        {
            i = i + 1
            classmateOutlet.text = "\(classmates2[i].name) ~ \(classmates2[i].nickname) ~ \(classmates2[i].nameRating) "
            overOutlet.text = ""
           
        }else
        {
            overOutlet.text = "No more!"
        }
    }
    
    @IBAction func backCMAction(_ sender: UIButton) {
    
        if(i > 0)
        {
            i = i - 1
            classmateOutlet.text = "\(classmates2[i].name) ~ \(classmates2[i].nickname) ~ \(classmates2[i].nameRating) "
            overOutlet.text = ""
           
        }else
        {
            overOutlet.text = "No more!"
        }
    }
    
    @IBAction func addAction(_ sender: UIButton) {
        //might have to make thre seperate buttons for ratings
        
         classmates2.append(Classmate(name: nameOutlet.text!, nickname: nicknameOutlet.text!, nameRating: .mid))
    }
    
    @IBAction func sortAction(_ sender: UIButton) {
        
        classmates2.sort(by: { $0.name < $1.name })
        
    }
    
    
}
