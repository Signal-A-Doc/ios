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

class SlideDocPagesVC: UIViewController {
    
    //MARK:-IBOutlets
    @IBOutlet weak var pageControlDoc: AdvancedPageControlView!
    @IBOutlet weak var colVwDocSlidePages: UICollectionView!
    
    //MARK:- Variables
    var objSlidePagesVM = SlideDocPagesVM()
    
    //MARK:- View life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControlDoc.drawer = ExtendedDotDrawer(numberOfPages: 4, space: 8, raduis: 8, height: 8, width: 8, currentItem: 0, dotsColor: Colors.fadeColor)
        colVwDocSlidePages.reloadData()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offSet = scrollView.contentOffset.x
        let width = scrollView.frame.width
        let visiblePoint = CGPoint(x: offSet, y: width)
        guard let indexPath = colVwDocSlidePages.indexPathForItem(at: visiblePoint) else { return }
        pageControlDoc.setCurrentItem(offset: CGFloat(offSet),width: CGFloat(width))
        objSlidePagesVM.visibleIndex = indexPath.row
        colVwDocSlidePages.reloadData()
    }
    
    //MARK:- Actions
    
    @IBAction func actionSignIn(_ sender: UIButton) {
        moveToNext(storyBoard: StoryBoardType.doctor, CreateDocAccountVC.className)
    }
}


