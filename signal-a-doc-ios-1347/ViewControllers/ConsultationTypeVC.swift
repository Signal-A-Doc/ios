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
protocol ConfirmBooking {
    func bookingConfirmed()
}
var confirmStatusDelegate : ConfirmBooking?
class ConsultationTypeVC: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var tblVwConsulationType: UITableView!
    @IBOutlet weak var vwMain: UIView!
    @IBOutlet weak var vwForTable: UIView!
    @IBOutlet weak var cnstHeightForTbl: NSLayoutConstraint!
    
    //MARK:- Variables
    let objConsTypeVM = ConsultationTypeVM()
    
    //MARK:- view lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        Proxy.shared.registerNib(tblVwConsulationType, "ConsultationTVC")
        tblVwConsulationType.reloadData()
        cnstHeightForTbl.constant = tblVwConsulationType.contentSize.height
    }
    
    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.async {
            self.setupViews()
        }
    }
    
    //MARK:- Actions
    @IBAction func actionClose(_ sender: UIButton) {
        self.dismiss()
    }
   
}

