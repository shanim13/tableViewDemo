//
//  CustomCollectionView.swift
//  tableviewdemo
//
//  Created by IE06 on 17/09/22.
//

import UIKit

class CustomCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    var labels = ["Contact","Calender","Maps","Mic"]
    var image = ["contacts","calender","map","mic"]
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labels.count
    }
    
    required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            self.dataSource = self
            self.delegate = self
        }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellC", for: indexPath as IndexPath) as! CustomCollectionViewCell
        
        cell.mainLabel.text = labels[indexPath.row]
        cell.imageView.image = UIImage(named: image[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
        {
            return CGSize(width: 170, height: 150)
        }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
