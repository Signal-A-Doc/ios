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
import SkyFloatingLabelTextField

protocol DismissController {
    func passData()
}
var delegate:DismissController?

class AddCardPopVC: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var txtFldCardNumber: SkyFloatingLabelTextField!
    @IBOutlet weak var txtFldExpDate: SkyFloatingLabelTextField!
    @IBOutlet weak var txtFldCvv: SkyFloatingLabelTextField!
    
    // MARK: - ViewLifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFldCardNumber.titleFormatter = {$0}
        txtFldExpDate.titleFormatter = {$0}
    }

    // MARK: - IBAction
    @IBAction func actionAddCard(_ sender: UIButton) {
       dismiss()
       delegate?.passData()
    }
    @IBAction func actionCross(_ sender: UIButton) {
        dismiss()
    }
}
