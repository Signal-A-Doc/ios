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

class PaymentDeleteVC: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var btnDelete: UIButton!
    @IBOutlet weak var lblCardType: UILabel!
    @IBOutlet weak var lblCardNum: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    
    // MARK: - ViewLifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - IBActions
    @IBAction func actionDelete(_ sender: Any) {
       presentWithAnimation(CardDeleteMessageVC.className)
    }
    @IBAction func actionBack(_ sender: UIButton) {
        pop()
    }
}
