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
class EditDetailsPopupVC: UIViewController {
    
    //MARK:- Outlets
    
    @IBOutlet weak var txtFldName: SkyFloatingLabelTextField!
    
    // MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- Actions
    @IBAction func actionClose(_ sender: UIButton) {
        dismiss()
    }
}
