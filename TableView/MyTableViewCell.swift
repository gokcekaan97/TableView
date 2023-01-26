//
//  MyTableViewCell.swift
//  TableView
//
//  Created by kaan gokcek on 24.01.2023.
//

import UIKit

class MyTableViewCell: UITableViewCell {
  @IBOutlet weak var myImageView: UIImageView!
  @IBOutlet weak var myLabel: UILabel!
  override func awakeFromNib() {
    super.awakeFromNib()
        // Initialization code
  }
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
}
