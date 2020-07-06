//
//  TableViewCell.swift
//  MemeMePractice
//
//  Created by Dustin McGuire on 7/1/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit



class TableViewCell: UITableViewCell {
  
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var topTextView: UILabel!
 
    
override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setupCellWith(Meme:Meme){
        imageOutlet.image = Meme.editedImage
        let topText = Meme.topText
        let bottomText = Meme.bottomText
        topTextView.text = "\(topText) \n\n\(bottomText)"
    }

}
