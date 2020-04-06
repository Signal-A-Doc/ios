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

class TransactionHistVC: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var btnDate: UIButton!
    @IBOutlet weak var tblVwTranscHist: UITableView!
    
    //MARK: - Properties
    var objTransactionHistVM = TransactionHistVM()
    
    //MARK: - ViewLifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - IBActions
    @IBAction func actionDate(_ sender: Any) {
    }
    @IBAction func actionBack(_ sender: Any) {
        pop()
    }
}
