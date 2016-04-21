//
//  ViewController.swift
//  Bunpi
//
//  Created by Bechir Arfaoui on 15/04/16.
//  Copyright © 2016 Bechir Arfaoui. All rights reserved.
//

import UIKit

class ViewController: BunpiCollectionView,CollectionCustomDelegate {
    var DetailsView: DetailsViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Bunpi"
        self.CustomDelegate = self
        self.view.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(self.collectionView)
        cellsArray.addObjectsFromArray(Datasource().myArrayOfCells() as Array)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func openDetailsView(itemCell: CellModel) {
       self.DetailsView = DetailsViewController()
        self.DetailsView?.cellModel = itemCell;
       self.navigationController?.pushViewController(self.DetailsView!, animated:true)
    }
}


