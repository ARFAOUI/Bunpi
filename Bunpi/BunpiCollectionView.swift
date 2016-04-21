//
//  BunpiCollectionView.swift
//  Bunpi
//
//  Created by Bechir Arfaoui on 15/04/16.
//  Copyright © 2016 Bechir Arfaoui. All rights reserved.
//

import UIKit

class BunpiCollectionView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate,UIGestureRecognizerDelegate {
    var cellsArray: NSMutableArray = []
    var CustomDelegate:CollectionCustomDelegate?
    override func viewDidLoad() {
        
    }
    
    lazy var collectionView:UICollectionView = {
        var cv = UICollectionView(frame: self.view.bounds, collectionViewLayout: self.flowLayout)
        cv.delegate = self
        cv.dataSource = self
        cv.bounces = true
        cv.alwaysBounceVertical = true
        cv.autoresizingMask = [UIViewAutoresizing.FlexibleHeight, UIViewAutoresizing.FlexibleWidth]
        cv.registerClass(MapViewCell.self, forCellWithReuseIdentifier: IDENTIFIERFORMAPCELL)
        cv.registerNib(UINib(nibName: "MapViewCell", bundle: nil), forCellWithReuseIdentifier: IDENTIFIERFORMAPCELL)
        cv.registerClass(PhotoCell.self, forCellWithReuseIdentifier: IDENTIFIERFORIMAGECELL)
        cv.registerNib(UINib(nibName: "PhotoCell", bundle: nil), forCellWithReuseIdentifier: IDENTIFIERFORIMAGECELL)
        cv.registerClass(AudioCell.self, forCellWithReuseIdentifier: IDENTIFIERFORAUDIOCELL)
        cv.registerNib(UINib(nibName: "AudioCell", bundle: nil), forCellWithReuseIdentifier: IDENTIFIERFORAUDIOCELL)
        cv.backgroundColor = UIColor.orangeColor()
        return cv
    }()
    
    lazy var flowLayout:UICollectionViewFlowLayout = {
        var flow = UICollectionViewFlowLayout()
        flow.sectionInset = UIEdgeInsetsMake(2.0, 2.0, 2.0, 2.0)
        return flow
    }()
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize{
        let width:CGFloat = self.view.bounds.size.width*0.98;
        let cellItem: CellModel = cellsArray.objectAtIndex(indexPath.row) as! CellModel
        let height:CGFloat =  CGFloat( cellItem.cellHeight as Float);
        return CGSizeMake(width, height)
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
        self.flowLayout.invalidateLayout()
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return cellsArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell: BasicCell
        
        let cellItem: CellModel = cellsArray.objectAtIndex(indexPath.row) as! CellModel
        
        switch cellItem.CellType {
        case .CellWithButton:
            cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellItem.cellIdentifier as String, forIndexPath: indexPath) as! AudioCell
            
        case .CellWithImageView:
            cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellItem.cellIdentifier as String, forIndexPath: indexPath) as! PhotoCell
        default:
            cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellItem.cellIdentifier as String, forIndexPath: indexPath) as! MapViewCell
        }
        cell.TitleLabel.text = cellItem.cellTitle as String
        cell.layer.borderWidth = 0.5
        cell.backgroundColor = UIColor.whiteColor()
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        CustomDelegate?.openDetailsView(cellsArray.objectAtIndex(indexPath.row) as! CellModel)
    }

}
