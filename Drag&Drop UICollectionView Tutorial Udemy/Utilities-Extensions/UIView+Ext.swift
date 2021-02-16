//
//  UIView+Ext.swift
//  Drag&Drop UICollectionView Tutorial Udemy
//
//  Created by macintosh on 15/02/2021.
//

import UIKit

extension UIView {
    func pin(to superView: UIView, inset: CGFloat = 0.0) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: superView.topAnchor, constant: inset).isActive = true
        self.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: inset).isActive = true
        self.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -inset).isActive = true
        self.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -inset).isActive = true
    }
}

