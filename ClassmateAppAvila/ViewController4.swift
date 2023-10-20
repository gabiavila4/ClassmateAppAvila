//
//  ViewController4.swift
//  ClassmateAppAvila
//
//  Created by GABRIELA AVILA on 10/20/23.
//

import UIKit

class ViewController4: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var classmates3 : [Classmate] = []
    
    var delegate : ViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
}
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //
}

}
