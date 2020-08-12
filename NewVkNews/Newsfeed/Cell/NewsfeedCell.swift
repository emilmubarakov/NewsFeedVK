//
//  NewsfeedCell.swift
//  NewVkNews
//
//  Created by Emil Mubarakov on 11/08/2020.
//  Copyright © 2020 Emil Mubarakov. All rights reserved.
//

import Foundation
import UIKit

class NewsfeedCell: UITableViewCell {
    
    static let reuseId = "NewsfeedCell"
    
    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var postLabel: UILabel!
    @IBOutlet var likesLabel: UILabel!
    @IBOutlet var commentsLabel: UILabel!
    @IBOutlet var shareLabel: UILabel!
    @IBOutlet var viewLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
