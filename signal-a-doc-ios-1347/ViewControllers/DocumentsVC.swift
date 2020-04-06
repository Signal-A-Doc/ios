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

class DocumentsVC: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var tblVwDocument: UITableView!
    @IBOutlet weak var btnAddDoc: UIButton!
    
    //MARK: - Variable
    let objDocumentsVM  = DocumentsVM()
    
    //MARK: - ViewLifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    @IBAction func actionMenu(_ sender:UIButton){
        KAppDelegate.sideMenuVC.openLeft()
    }

    @IBAction func actionAddDocument(_ sender: Any) {
        
    }
}
