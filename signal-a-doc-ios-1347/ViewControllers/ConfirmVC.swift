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

class ConfirmVC: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var lblMsgCons: UILabel!
    @IBOutlet weak var lblDocName: UILabel!
    @IBOutlet weak var lblCardNum: UILabel!
    @IBOutlet weak var lblCharge: UILabel!
    @IBOutlet weak var imgVwCard: UIImageView!
    
    // MARK: - ViewLifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // MARK: - IBActions
    @IBAction func actionBack(_ sender: Any) {
    }
    
    @IBAction func actionCross(_ sender: Any) {
    }
    
    @IBAction func actionConfirm(_ sender: Any) {
    }
    
    @IBAction func actionDrop(_ sender: Any) {
    }
}
