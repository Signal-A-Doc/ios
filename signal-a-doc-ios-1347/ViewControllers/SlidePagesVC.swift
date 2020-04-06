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
import AdvancedPageControl

class SlidePagesVC: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var colVwSlidePages: UICollectionView!
    @IBOutlet weak var vwPageControl: UIView!
    @IBOutlet weak var pageControlAdvanced: AdvancedPageControlView!
    
    //MARK:- Variables
    var visibleIndex = -1
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControlAdvanced.drawer = ExtendedDotDrawer(numberOfPages: 4, space: 8, raduis: 8, height: 8, width: 8, currentItem: 0, dotsColor: Colors.fadeColor)
        colVwSlidePages.reloadData()
        
    }
    
    @IBAction func actionSignIn(_ sender: Any) {
        moveToNext(LoginVC.className)
    }
}

extension SlidePagesVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var collCell = UICollectionViewCell()
        switch indexPath.row {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GetStartedCVC", for: indexPath) as! GetStartedCVC
            collCell = cell
        case 1,2,3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CreateAccountCVC", for: indexPath) as! CreateAccountCVC
            cell.btnCreateAccount.isHidden = visibleIndex != 3
            switch visibleIndex {
            case 1:
                cell.lblTitle.text = SetTitle.getAccess
                cell.imgVwMsg.image = #imageLiteral(resourceName: "ic_doc_one")
                cell.imgVwCall.image = #imageLiteral(resourceName: "ic_doc_two")
                cell.imgVwVideoCall.image = #imageLiteral(resourceName: "ic_doc_three")
                cell.imgVwSlides.image = #imageLiteral(resourceName: "ic_access_bg")
            case 2:
                cell.lblTitle.text = SetTitle.chat
                cell.imgVwMsg.image = #imageLiteral(resourceName: "ic_message")
                cell.imgVwCall.image = #imageLiteral(resourceName: "ic_call")
                cell.imgVwVideoCall.image = #imageLiteral(resourceName: "ic_video")
                cell.imgVwSlides.image = #imageLiteral(resourceName: "img2")
            case 3:
                cell.lblTitle.text = SetTitle.faceConsult
                cell.imgVwMsg.image = #imageLiteral(resourceName: "ic_calendar")
                cell.imgVwCall.image = #imageLiteral(resourceName: "ic_user")
                cell.imgVwVideoCall.image = #imageLiteral(resourceName: "ic_faq")
                cell.imgVwSlides.image = #imageLiteral(resourceName: "ic_schedule_bg")
            default:
                break
            }
            collCell = cell
        default:
            break
        }
        return collCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offSet = scrollView.contentOffset.x
        let width = scrollView.frame.width
        let visiblePoint = CGPoint(x: offSet, y: width)
        guard let indexPath = colVwSlidePages.indexPathForItem(at: visiblePoint) else { return }
        pageControlAdvanced.setCurrentItem(offset: CGFloat(offSet),width: CGFloat(width))
        visibleIndex = indexPath.row
        colVwSlidePages.reloadData()
    }
}
