//
//  ViewController.swift
//  TableViews
//
//  Created by Esteban Perez Castillejo on 18/2/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let myCountries = ["España", "Mexico", "Perú", "Colombia", "Argentina"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCountries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "myCell")
            cell?.backgroundColor = .gray
            cell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
        }
      
        cell!.textLabel?.text = myCountries[indexPath.row]
        return cell!
    }
    
    
}
