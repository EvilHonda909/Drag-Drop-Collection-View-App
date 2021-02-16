//
//  ViewController.swift
//  Drag&Drop UICollectionView Tutorial Udemy
//
//  Created by macintosh on 15/02/2021.
//

import UIKit

class ViewController: UIViewController {
    var collectionView : UICollectionView!
    
    let collectionViewContentInsetValue : CGFloat = 4.0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "White Scene"
        self.view.backgroundColor = .white
        
        self.configureCollectionView()
        
    }
    
    func configureCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 0
        self.collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        self.collectionView.delegate = self
        
        self.collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CELL")
        self.collectionView.dataSource = self
        
        self.collectionView.dragDelegate = self
        self.collectionView.dragInteractionEnabled = true
        
        self.collectionView.dropDelegate = self
        
        self.view.addSubview(self.collectionView)
        self.collectionView.pin(to: self.view)
        self.collectionView.contentInset = UIEdgeInsets(top: self.collectionViewContentInsetValue,
                                                        left: self.collectionViewContentInsetValue,
                                                        bottom: self.collectionViewContentInsetValue,
                                                        right: self.collectionViewContentInsetValue)
        self.collectionView.backgroundColor = .clear
    }
}






