//
//  ClsTimeTableItemCell.swift
//  App
//
//  Created by Оля Миленина on 12.04.16.
//  Copyright © 2016 Екатерина. All rights reserved.
//

import UIKit

class ClsTimeTableItemCell: UITableViewCell {
    
    @IBOutlet weak var photoView :UIImageView!
    @IBOutlet weak var labelAuthor :UILabel!
    @IBOutlet weak var labelTimeStart :UILabel!
    @IBOutlet weak var labelTimeEnd :UILabel!
    @IBOutlet weak var labelPlace :UILabel!
    @IBOutlet weak var labelAudience :UILabel!

    
    @IBOutlet weak var photoViewAct :UIImageView!
    @IBOutlet weak var labelAuthorAct :UILabel!
    @IBOutlet weak var labelTimeStartAct :UILabel!
    @IBOutlet weak var labelTimeEndAct :UILabel!
    @IBOutlet weak var labelPlaceAct :UILabel!
    @IBOutlet weak var labelAudienceAct :UILabel!

    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
