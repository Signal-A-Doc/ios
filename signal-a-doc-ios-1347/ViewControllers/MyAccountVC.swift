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

class MyAccountVC: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var vwBottomForMyDetail: UIView!
    @IBOutlet weak var btnMyDetail: UIButton!
    @IBOutlet weak var btnMedicalInfo: UIButton!
    @IBOutlet weak var tblVwMyAccount: UITableView!
    
    //MARK:- Variables
    let objAccountVM = MyAccountVM()
    
    //MARK:- View lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        btnMyDetail.isSelected = true
    }
    
    //MARK:- Actions
    @IBAction func actionBack(_ sender: Any) {
    }
    @IBAction func actionMyDetails(_ sender: UIButton) {
        btnMedicalInfo.isSelected = false
        btnMyDetail.isSelected = false
        sender.isSelected = !sender.isSelected
        animateSegments(sender)
        tblVwMyAccount.reloadData()
    }
    func animateSegments(_ sender: UIButton) {
        UIView.animate(withDuration: 0.7) {
            let originX = sender.frame.origin.x
            self.vwBottomForMyDetail.frame.origin = CGPoint(x: originX, y: self.vwBottomForMyDetail.frame.origin.y)
            self.view.layoutIfNeeded()
        }
    }
}
