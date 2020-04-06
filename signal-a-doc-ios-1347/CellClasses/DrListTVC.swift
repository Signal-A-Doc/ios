//
/**
 *
 *@copyright : ToXSL Technologies Pvt. Ltd. < www.toxsl.com >
 *@author     : Shiv Charan Panjeta < shiv@toxsl.com >
 *
 * All Rights Reserved.
 * Proprietary and confidential :  All information contained herein is, and remains
 * the property of ToXSL Technologies Pvt. Ltd. and its partners.
 * Unauthorized copying of this file, via any medium is strictly prohibited.
 */

import UIKit

class DrListTVC: UITableViewCell {
    @IBOutlet weak var colVwDrList: UICollectionView!
    
    func reload() {
        colVwDrList.dataSource = self
        colVwDrList.delegate = self
        colVwDrList.reloadData()
    }
}
class LearnMoreTVC: UITableViewCell {
    @IBOutlet weak var colVwLearnMore: UICollectionView!
    func reload() {
        colVwLearnMore.dataSource = self
        colVwLearnMore.delegate = self
        colVwLearnMore.reloadData()
    }
}
class CategoryTVC: UITableViewCell {
    @IBOutlet weak var colVwCategory: UICollectionView!
    func reload() {
        colVwCategory.dataSource = self
        colVwCategory.delegate = self
        colVwCategory.reloadData()
    }
}
class HeaderTVC: UITableViewCell {

}
class DrListCVC: UICollectionViewCell {
    
}
class LearnMoreCVC: UICollectionViewCell {
    
}
class CategoryCVC: UICollectionViewCell {
    
}

extension DrListTVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DrListCVC", for: indexPath) as! DrListCVC
        return cell
    }
}
extension LearnMoreTVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LearnMoreCVC", for: indexPath) as! LearnMoreCVC
        return cell
    }
}
extension CategoryTVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCVC", for: indexPath) as! CategoryCVC
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width/4, height: 130)
    }
}
