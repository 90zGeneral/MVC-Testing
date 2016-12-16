//
//  RoundedImageView.swift
//  MVC-Testing
//
//  Created by Roydon Jeffrey on 12/15/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {
    
    //CORRECT WAY: Do this, then go change the class for the image in storyboard to RoundedImageView
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }
    
}
