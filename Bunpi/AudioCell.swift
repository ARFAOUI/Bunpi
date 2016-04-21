//
//  AudioCell.swift
//  Bunpi
//
//  Created by Bechir Arfaoui on 16/04/16.
//  Copyright © 2016 Bechir Arfaoui. All rights reserved.
//

import UIKit

class AudioCell: BasicCell {

    @IBOutlet weak var playButton: UIButton!
    @IBAction func OK(sender: UIButton){
        let alert = UIAlertView()
        alert.title = "Alert"
        alert.message = "Should play audio"
        alert.addButtonWithTitle("OK")
        alert.show()
    }
}
