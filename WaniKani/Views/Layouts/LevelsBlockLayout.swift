//
//  LevelsBlockLayout.swift
//  WaniKani
//
//  Created by Andriy K. on 1/11/16.
//  Copyright © 2016 Andriy K. All rights reserved.
//

import UIKit

class LevelsBlockLayout: UICollectionViewFlowLayout {
  
  private let horizontalCellInset: CGFloat = 15
  private let verticalCellInset: CGFloat = 10
  
  override func prepareLayout() {
    
    guard let collectionView = collectionView else { return }
    
    sectionInset = UIEdgeInsets(top: verticalCellInset, left: horizontalCellInset, bottom: verticalCellInset, right: horizontalCellInset)
    
    let width = (collectionView.bounds.width * 0.5) - (1.5 * horizontalCellInset)
    itemSize = CGSize(width: width, height: width)
    
    minimumInteritemSpacing = verticalCellInset
    minimumLineSpacing = verticalCellInset
  }
  
  override func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool {
    return true
  }
  
}
