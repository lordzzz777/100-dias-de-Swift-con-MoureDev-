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
        tableView.delegate = self
       
        tableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
    }


}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0{
            return "celdas simples"
        }
        return "Celdas custom"
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Footer para celdas simples simples"
        }
        
        return "Caldas para celdas custon"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCountries.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 50
        }
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
            var cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "mycell")
                cell?.backgroundColor = .gray
                cell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
                cell?.selectionStyle = .blue
                cell?.accessoryType = .disclosureIndicator
            }
            
            cell!.textLabel?.text = myCountries[indexPath.row]
            return cell!
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as? MyCustomTableViewCell
            
            cell?.myFirsLabel.text = String(indexPath.row + 1)
            cell!.mySecondLabel.text = myCountries[indexPath.row]
            
            if indexPath.row == 2{
                cell?.mySecondLabel.text = "Hola mundojfjfjfjfjfjfjfjfjfjjfjfjf"
            }
            
            return cell!
        }
    }
    
    
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(myCountries[indexPath.row])
        
    }
}
