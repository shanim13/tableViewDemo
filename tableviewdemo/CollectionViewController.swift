//
//  CollectionViewController.swift
//  tableviewdemo
//
//  Created by IE06 on 17/09/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var labels = ["Contact","Calender","Maps","Mic"]
    var image = ["contacts","calender","map","mic"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

       // self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return labels.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath) as! CustomCollectionViewCell
        
        cell.mainLabel.text = labels[indexPath.row]
        cell.imageView.image = UIImage(named: image[indexPath.row])
        cell.layer.cornerRadius = 10
    
        return cell
    }
    

    private let sectionInsets = UIEdgeInsets(
       top: 50.0,
       left: 20.0,
       bottom: 50.0,
       right: 20.0)
    //    }
      private let itemsPerRow: CGFloat = 2
      func collectionView(   _ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,   sizeForItemAt indexPath: IndexPath  ) -> CGSize {
       let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
       let availableWidth = view.frame.width - paddingSpace
       let widthPerItem = availableWidth / itemsPerRow
       return CGSize(width: widthPerItem, height: widthPerItem)
      }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
       return sectionInsets
    }
      // 4
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       return sectionInsets.left
      }
    
    
    
//    private let sectionInsets = UIEdgeInsets(
//       top: 50.0,
//       left: 20.0,
//       bottom: 50.0,
//       right: 20.0)
//    //    }
//
//      private let itemsPerRow: CGFloat = 3
//
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let yourWidth = collectionView.bounds.width/3.0
//        let yourHeight = yourWidth
//        return CGSize(width: yourWidth - 0 , height: yourHeight - 0)
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {//Optional method
//        let sectionInsets = UIEdgeInsets(top: 20.0, left: 25.0, bottom: 20.0, right: 25.0)
//        return sectionInsets
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0 //This value is directly connected to above method sizeForItemAt you have to subtract same value to width and height in method sizeForItemAt
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 20 //No issue and can be anything
//    }
}
