//
//  TableViewCell.swift
//  MemeMePractice
//
//  Created by Dustin McGuire on 7/1/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit



class TableViewCell: UITableViewCell {
    
override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setupCellWith(Meme:MemeStruct){
        imageOutlet.image = Meme.EditedImage
        topTextView.text = Meme.topText
    }

}
