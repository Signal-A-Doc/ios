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

class InfoDetailVC: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var txtFldThermoLocation: SkyFloatingLabelTextField!
    @IBOutlet weak var tctFldTemp: SkyFloatingLabelTextField!
    
    //MARK:- Variables
    let objInfoDetailVM = InfoDetailVM()
    
    //MARK:- View life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFldThermoLocation.titleFormatter = {$0}
        tctFldTemp.titleFormatter = {$0}
    }
    
    //MARK:- Actions
    @IBAction func actionBack(_ sender: UIButton) {
        pop()
    }
    @IBAction func actionNext(_ sender: UIButton) {
        moveToNext(AvailableDoctorsVC.className)
    }
    @IBAction func actionSkip(_ sender: UIButton) {
        moveToNext(AvailableDoctorsVC.className)
    }
}
