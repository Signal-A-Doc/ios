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

import Foundation
import UIKit

let KAppDelegate = UIApplication.shared.delegate as! AppDelegate
let storboard = UIStoryboard(name: "Main", bundle: nil)
class Proxy {
    static var shared: Proxy {
        return Proxy()
    }
    fileprivate init(){}
    
    func authNil() -> String {
        if let authCode = UserDefaults.standard.object(forKey:"access-token") as? String {
            return authCode
        } else {
            return ""
        }
    }
    
    //MARK:- Get Device Token
    func deviceToken() -> String {
        var deviceTokken =  ""
        if UserDefaults.standard.object(forKey: "device_token") == nil {
            deviceTokken = "00000000055"
            
        } else {
            deviceTokken = UserDefaults.standard.object(forKey: "device_token")! as! String
        }
        return deviceTokken
    }
    
    func deviceName() -> String {
        return UIDevice.current.name
    }
    func registerNib(_ tblView: UITableView,_ identifierCell:String){
        let nib = UINib(nibName: identifierCell, bundle: nil)
        tblView.register(nib, forCellReuseIdentifier: identifierCell)
    }
    func registerNibForCollectionView(_ clcVw: UICollectionView, cellIdentifier: String) {
        let nib = UINib(nibName: cellIdentifier, bundle: nil)
        clcVw.register(nib, forCellWithReuseIdentifier: cellIdentifier)
    }
    func isValueString(_ value: Any) -> String{
        var finalVal = "0"
        if let idVal = value as? Int{
            finalVal = "\(idVal)"
        } else if let  idVal   = value as? Double{
            finalVal = "\(idVal)"
        } else if let idVal = value as? String{
            finalVal = idVal
        }
        return finalVal
    }
    
    func isValueInt(_ value: Any) -> Int{
        var finalVal = Int()
        finalVal = 0
        if let  idVal   = value as? Int{
            finalVal = idVal
        } else if let  idVal   = value as? Double{
            finalVal = Int(idVal)
        } else  if let idVal = value as? String{
            if idVal != "" {
                finalVal = Int(Double(idVal)!)
            }
        }
        return finalVal
    }
    
    
    //MARK:- Check Valid Email Method
    func isValidEmail(_ testStr:String) -> Bool  {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        return (testStr.range(of: emailRegEx, options:.regularExpression) != nil)
    }
    
    func openSettingApp() {
        let settingAlert = UIAlertController(title: AlertMessage.connectionProblem, message: AlertMessage.internetConnection , preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: AlertMessage.cancelTitle , style: UIAlertAction.Style.default, handler: nil)
        settingAlert.addAction(okAction)
        let openSetting = UIAlertAction(title:"Settings", style:UIAlertAction.Style.default, handler:{ (action: UIAlertAction!) in
            let url:URL = URL(string: UIApplication.openSettingsURLString)!
            if #available(iOS 10, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: {
                    (success) in })
            } else {
                guard UIApplication.shared.openURL(url) else {
                    //Proxy.shared.displayStatusCodeAlert(AlertMessage.networkSetting, MsgHandler.error)
                    return
                }
            }
        })
        settingAlert.addAction(openSetting)
        UIApplication.shared.keyWindow?.rootViewController?.present(settingAlert, animated: true, completion: nil)
    }
    
    //MARK:-   LOCATION SETTING
    func openLocationSettingApp() {
        let settingAlert = UIAlertController(title: TitleValue.loationProblem, message: TitleValue.loationProblem, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: TitleValue.cancel, style: UIAlertAction.Style.default, handler: nil)
        settingAlert.addAction(okAction)
        let openSetting = UIAlertAction(title:TitleValue.setting, style:UIAlertAction.Style.default, handler:{ (action: UIAlertAction!) in
            let url:URL = URL(string: UIApplication.openSettingsURLString)!
            if #available(iOS 10, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: {
                    (success) in })
            } else {
                guard UIApplication.shared.openURL(url) else {
                    // Proxy.shared.displayStatusCodeAlert(AlertValue.pleaseReviewyournetworksettings)
                    return
                }
            }
        })
        settingAlert.addAction(openSetting)
        UIApplication.shared.keyWindow?.rootViewController?.present(settingAlert, animated: true, completion: nil)
    }
    
    func expiryDateCheckMethod(expiryDate: String) ->Bool  {
        let dateInFormat = DateFormatter()
        dateInFormat.dateFormat = "yyyy-MM-dd"
        let expiryDate = dateInFormat.date(from: expiryDate)
        if Date().compare(expiryDate!) == .orderedDescending {
            displayDateCheckAlert()
            return false
        }
        return true
    }
    
    func displayDateCheckAlert() {
        let alertController = UIAlertController(title: "Demo Expired", message:  "Please contact with the team", preferredStyle: .alert)
        let cancelBtnAction = UIAlertAction(title: "Ok", style: .destructive) { (action) in}
        alertController.addAction(cancelBtnAction)
        KAppDelegate.window?.rootViewController?.present(alertController, animated: true, completion: nil)
    }
}

