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

class AddCardDetailVC: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var txtFldCardNo: SkyFloatingLabelTextField!
    @IBOutlet weak var txtFldCvv: SkyFloatingLabelTextField!
    @IBOutlet weak var txtFldExpDate: SkyFloatingLabelTextField!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFldCardNo.titleFormatter = {$0}
        txtFldExpDate.titleFormatter = {$0}
    }
    
    //MARK:- IBActions

    @IBAction func actionAddCard(_ sender: Any) {
        moveToNext(SuccessVC.className, titleVal: SetTitle.congratulation)
    }
    @IBAction func actionBack(_ sender: Any) {
           pop()
    }
}
