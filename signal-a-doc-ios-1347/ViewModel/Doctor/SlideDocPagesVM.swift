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

class SlideDocPagesVM: NSObject {
    
    // MARK: Variables
    var visibleIndex = -1
    var arrForSlides = [("",""),("ic_get_start_bg","Work more flexibly. Work when it suits you. Extend your hours"),("ic_get_start_bg","Help lots of people anywhere anytime"),("ic_get_start_bg","Let's save lives and be part of something bugger.")]
}
extension SlideDocPagesVC: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return objSlidePagesVM.arrForSlides.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    var collCell = UICollectionViewCell()
    if indexPath.row == 0 {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GetStartedCVC", for: indexPath) as! GetStartedCVC
        cell.btnGetStarted.addTarget(self, action: #selector(actionSignIn(_:)), for: .touchUpInside)
        collCell = cell
    } else {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CreateAccountCVC", for: indexPath) as! CreateAccountCVC
        let dictData = objSlidePagesVM.arrForSlides[indexPath.row]
        cell.imgVwSlides.image = UIImage(named: dictData.0)
        cell.lblTitle.text = dictData.1
        cell.btnCreateAccount.isHidden = indexPath.row != objSlidePagesVM.arrForSlides.count-1
        collCell = cell
    }
    return collCell
}
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: self.view.frame.width, height: self.view.frame.height+20)
}

@objc func activityState(_ sender:UIButton) {
    
}
}
