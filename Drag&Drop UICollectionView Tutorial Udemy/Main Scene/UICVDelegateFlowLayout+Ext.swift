//
//  UICVDelegateFlowLayout+Ext.swift
//  Drag&Drop UICollectionView Tutorial Udemy
//
//  Created by macintosh on 16/02/2021.
//

import UIKit

extension ViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let square = (collectionView.bounds.width - 2*self.collectionViewContentInsetValue) / 3
        return CGSize(width: square, height: square)
    }
}
