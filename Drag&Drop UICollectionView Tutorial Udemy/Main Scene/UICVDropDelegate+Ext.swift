//
//  File.swift
//  Drag&Drop UICollectionView Tutorial Udemy
//
//  Created by macintosh on 16/02/2021.
//

import UIKit

extension ViewController : UICollectionViewDropDelegate {
    
    func collectionView(_ collectionView: UICollectionView, dropSessionDidUpdate session: UIDropSession, withDestinationIndexPath destinationIndexPath: IndexPath?) -> UICollectionViewDropProposal {
        if collectionView.hasActiveDrag {
            return UICollectionViewDropProposal(operation: .move, intent: .insertAtDestinationIndexPath)
        }
        return UICollectionViewDropProposal(operation: .forbidden)
    }
    
    func collectionView(_ collectionView: UICollectionView, performDropWith coordinator: UICollectionViewDropCoordinator) {
        var destinationIndexPath : IndexPath
        
        if let existingIndexPath = coordinator.destinationIndexPath {
            destinationIndexPath = existingIndexPath
        } else {
            let lastRow = collectionView.numberOfItems(inSection: 0) - 1
            destinationIndexPath = IndexPath(row: lastRow, section: 0)
        }
        
        if coordinator.proposal.operation == .move {
            self.reorderImages(collectionView: collectionView, coordinator: coordinator, destinationIndexPath: destinationIndexPath)
        }
    }
    
    private func reorderImages(collectionView: UICollectionView, coordinator: UICollectionViewDropCoordinator, destinationIndexPath: IndexPath) {
        if let itemBeingDragged = coordinator.items.first,
           let departureIndexPath = itemBeingDragged.sourceIndexPath {
            collectionView.performBatchUpdates({
                        Images.imageNames.remove(at: departureIndexPath.row)
                        Images.imageNames.insert(itemBeingDragged.dragItem.localObject as! String, at: destinationIndexPath.row)
            
                        collectionView.deleteItems(at: [departureIndexPath])
                        collectionView.insertItems(at: [destinationIndexPath])
            }, completion: nil)
            coordinator.drop(itemBeingDragged.dragItem, toItemAt: destinationIndexPath)
        }
    }
}
