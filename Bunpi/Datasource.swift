//
//  Datasource.swift
//  Bunpi
//
//  Created by Bechir Arfaoui on 16/04/16.
//  Copyright © 2016 Bechir Arfaoui. All rights reserved.
//

import UIKit

class Datasource: NSObject {
    
    func myArrayOfCells() -> NSMutableArray {
        
        let myCellsArray: NSMutableArray? = []
        
        let mapCell =  CellModel(cellType : CellTypesIndex.CellWithMapView)
        mapCell.cellTitle = "this is my location"
        mapCell.cellHeight = 150;
        mapCell.cellIdentifier = IDENTIFIERFORMAPCELL
        myCellsArray!.addObject(mapCell)
        
        let AudioCell3 =  CellModel(cellType : CellTypesIndex.CellWithButton)
        AudioCell3.cellTitle = "An other audio"
        AudioCell3.cellHeight = 90;
        AudioCell3.cellIdentifier = IDENTIFIERFORAUDIOCELL
        myCellsArray!.addObject(AudioCell3)
        
        let mapCell1 =  CellModel(cellType : CellTypesIndex.CellWithMapView)
        mapCell1.cellTitle = "my location"
        mapCell1.cellHeight = 150;
        mapCell1.cellIdentifier = IDENTIFIERFORMAPCELL
        myCellsArray!.addObject(mapCell1)
        
        
        let PhotoCell1 =  CellModel(cellType : CellTypesIndex.CellWithImageView)
        PhotoCell1.cellTitle = "An other one"
        PhotoCell1.cellHeight = 150;
        PhotoCell1.cellFile = "djkhaled.png"
        PhotoCell1.cellIdentifier = IDENTIFIERFORIMAGECELL
        myCellsArray!.addObject(PhotoCell1)
        
        let AudioCell1 =  CellModel(cellType : CellTypesIndex.CellWithButton)
        AudioCell1.cellTitle = "An other audio"
        AudioCell1.cellHeight = 90;
        AudioCell1.cellIdentifier = IDENTIFIERFORAUDIOCELL
        myCellsArray!.addObject(AudioCell1)
        
        let AudioCell2 =  CellModel(cellType : CellTypesIndex.CellWithButton)
        AudioCell2.cellTitle = "play my audio"
        AudioCell2.cellHeight = 90;
        AudioCell2.cellIdentifier = IDENTIFIERFORAUDIOCELL
        myCellsArray!.addObject(AudioCell2)
        
        let PhotoCell2 =  CellModel(cellType : CellTypesIndex.CellWithImageView)
        PhotoCell2.cellTitle = "An other one"
        PhotoCell2.cellHeight = 150;
        PhotoCell2.cellFile = "djkhaled.png"
        PhotoCell2.cellIdentifier = IDENTIFIERFORIMAGECELL
        myCellsArray!.addObject(PhotoCell2)
        
        let mapCell2 =  CellModel(cellType : CellTypesIndex.CellWithMapView)
        mapCell2.cellTitle = "my location"
        mapCell2.cellHeight = 150;
        mapCell2.cellIdentifier = IDENTIFIERFORMAPCELL
        myCellsArray!.addObject(mapCell2)
        
        
        return myCellsArray!
    }
}

