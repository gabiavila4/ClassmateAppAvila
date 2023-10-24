//
//  ViewController4.swift
//  ClassmateAppAvila
//
//  Created by GABRIELA AVILA on 10/20/23.
//

import UIKit

class ViewController4: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var nameTFOutlet: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var nickTFOutlet: UITextField!
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var classmates3 : [Classmate] = []
    
    var delegate : ViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        print(classmates3.count)
        // Do any additional setup after loading the view.
    }
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return classmates3.count
}
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! Cell
    cell.nameOutlet.text = classmates3[indexPath.row].name
    cell.nicknameOutlet.text = classmates3[indexPath.row].nickname
    cell.ratingOutlet.text = "\(classmates3[indexPath.row].nameRating)"
    
    
    return cell
}
    
    

}
