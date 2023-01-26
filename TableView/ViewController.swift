//
//  ViewController.swift
//  TableView
//
//  Created by kaan gokcek on 19.01.2023.
//

import UIKit

class ViewController: UIViewController{
  @IBOutlet weak var myTableView: UITableView!
  var sectionText = [[String]]()
  var headerText = [String]()
  override func viewDidLoad() {
      super.viewDidLoad()
      sectionText = [["Wi-Fi","Bluetooth"],["General", "Control Center", "Focus"]]
      headerText = ["General","Notification"]
      myTableView.dataSource = self
      myTableView.delegate = self
      myTableView.register(MyTableViewCell.self, forCellReuseIdentifier: "cellId")
    }
  }
extension ViewController : UITableViewDelegate, UITableViewDataSource{
  func numberOfSections(in tableView: UITableView) -> Int {
    return sectionText.count
  }
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return sectionText[section].count
  }
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 48.0
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = myTableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
    cell.textLabel?.text = sectionText[indexPath.section][indexPath.row]
    return cell
  }
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let headerView = UILabel()
    headerView.text = headerText[section]
    headerView.backgroundColor = UIColor.red
    return headerView
  }
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("\(sectionText[indexPath.section][indexPath.row]) button pressed")
  }
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 120
  }
}
  
