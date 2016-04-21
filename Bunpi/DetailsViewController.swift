//
//  DetailsViewController.swift
//  Bunpi
//
//  Created by Bechir Arfaoui on 16/04/16.
//  Copyright © 2016 Bechir Arfaoui. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var TitleLabel: UILabel!
    var cellModel: CellModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        switch self.cellModel.CellType {
        case .CellWithMapView:
            TitleLabel.text = "Map Cell Clicked"
        case .CellWithImageView:
            TitleLabel.text = "Image Cell Clicked"
            
        default:
            TitleLabel.text = "Audio Cell Clicked"
        }
    }
    
}
