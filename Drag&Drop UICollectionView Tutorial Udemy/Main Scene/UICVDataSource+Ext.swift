//
//  UICVDataSource+Ext.swift
//  Drag&Drop UICollectionView Tutorial Udemy
//
//  Created by macintosh on 16/02/2021.
//

import UIKit

extension ViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Images.imageNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CELL", for: indexPath)

        let image = UIImage(named: Images.imageNames[indexPath.row])
        let cellImageView = UIImageView(image: image)
        cell.contentView.addSubview(cellImageView)
        cell.contentView.clipsToBounds = true
        cell.contentMode = .scaleAspectFill
        cellImageView.pin(to: cell.contentView, inset: 4.0)
        
        cell.backgroundColor = .white
        return cell
    }
    
}
