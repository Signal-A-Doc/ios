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

class PaymentVC: UIViewController, DismissController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var tblVwPayment: UITableView!
    
    //MARK: - Properties
    let objPaymentVM = PaymentVM()
    
    //MARK: - ViewLifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    //MARK: - IBActions
    @IBAction func actionMenu(_ sender: Any) {
        KAppDelegate.sideMenuVC.openLeft()
    }
    @IBAction func actionAddNewCard(_ sender: Any) {
        presentWithAnimation(AddCardPopVC.className)
    }
    @IBAction func actionTransHistory(_ sender: Any) {
        moveToNext(TransactionHistVC.className)
    }
    func passData() {
        self.pushWithAnimation(SuccessVC.className, subType: .fromBottom, titleVal: SetTitle.cardAdded)
    }
}
