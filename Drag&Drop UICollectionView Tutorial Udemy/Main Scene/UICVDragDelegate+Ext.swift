//
//  UICVDragDelegate.swift
//  Drag&Drop UICollectionView Tutorial Udemy
//
//  Created by macintosh on 16/02/2021.
//

import UIKit

extension ViewController : UICollectionViewDragDelegate {
    func collectionView(_ collectionView: UICollectionView, itemsForBeginning session: UIDragSession, at indexPath: IndexPath) -> [UIDragItem]{
        print(indexPath)
        let item = Images.imageNames[indexPath.row]
        // this data uses for convey items in drag-drop process
        let itemProvider = NSItemProvider(object: item as NSString)
        let dragItem = UIDragItem(itemProvider: itemProvider)
        dragItem.localObject = item
        
        return [dragItem]
    }
}
