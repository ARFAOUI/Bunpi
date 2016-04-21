//
//  CellModel.swift
//  Bunpi
//
//  Created by Bechir Arfaoui on 16/04/16.
//  Copyright © 2016 Bechir Arfaoui. All rights reserved.
//

import Foundation

class CellModel {
   
    var CellType : CellTypesIndex
    var cellTitle : String = ""
    var cellHeight : Float = 150.0
    var cellFile : String = ""
    var cellIdentifier : String = ""

    init (cellType : CellTypesIndex) {
        self.CellType = cellType
    }
}
