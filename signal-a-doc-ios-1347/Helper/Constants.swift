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

enum AppInfo {
    static let mode = "development"
    static let appName = Bundle.main.infoDictionary![kCFBundleNameKey as String] as! String
    static let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
    static let userAgent = "\(mode)/\(appName)/\(version)"
}

enum DeviceInfo{
    static let deviceType = "2"
    static let deviceName = UIDevice.current.name
   // static let deviceToken = Proxy.shared.accessTokenNil()
}

enum StoryBoardType: String {
    case patient = "Main"
    case doctor = "Doctor"
    var storyboard: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
}

enum Colors {
    static let appColor = UIColor(red: 0/255.0, green: 186/255.0, blue: 36/255.0, alpha: 1.0)
    static let fadeColor = UIColor(red: 93/255.0, green: 148/255.0, blue: 255/255.0, alpha: 1.0)
    static let lightGray = UIColor(red: 159/255.0, green: 159/255.0, blue: 159/255.0, alpha: 1.0)
}

enum Apis {
    #if Debug
    static let serverUrl = ""
    #else
    static let serverUrl = ""
    #endif
}

struct ApiResponse {
    var data: NSDictionary?
    var success: Bool
    var message: String?
}

enum TitleValue {
    static let loationProblem = "Location problem"
    static let connectionProblem = "Connection problem"
    static let setting = "Settings"
    static let cancel = "Cancel"
    static let alert = "Alert"
    static let done = "Done"
    static let deletePhoto = "Delete Photo"
    static let choosePhoto = "Choose Photo"
    static let takePhoto = "Take Photo"
    static let gallery = "Gallery"
    static let camera = "Camera"
    static let ok = "Ok"
    static var determineLocation = "Location services are not able to determine your location"
    static var locationServicesSettings = "To use this service efficiently, you must turn on location services from settings"
    static var servicesOff = "Location services are off"
}

enum ErrorHandler{
    static let checkUrl = 400
    static let urlNotExist = 404
    static let serverError = 408
    static let checkInternet = 401
    static let otherLogin = 403
    static let internetError = 500
    static let checkInter =   -1009
    static let serverTimedOut = -1001
}

enum AlertMessage {
    static let enableLocation = "Please enable your location"
    static let sessionExpired = "Session expired"
    static let notImplement = "Not implemented yet"
    static let checkUrl = "Please check the URL : 400"
    static let urlNotExist = "URL does not exists : 404"
    static let serverError = "Server error, Please try again.."
    static let yesTitle = "Yes"
    static let noTitle = "No"
    static let connectionProblem = "Connection problem"
    static let internetConnection = "Please check your internet connection"
    static let cancelTitle = "Cancel"
    static let settingTitle = "Settings"
    static let networkSetting = "Please review your network settings"
    static let success = "Success"
    static let error = "Error"
    static let encodeError = "Error: Unable to encode JSON Response"
    static let pageNotFound = "Page not found"
    static let address = "Please enter address"
    static let location = "Please enter location"
    static let enquirySubmitted = "Warm Greetings!! Thank you for contacting us. we have received your request. Our representative will contact you soon"
    static let cammeraNotAccess = "Unable to access the Camera"
    static let cameraNotSupport = "Camera ilets not supported"
    static let openSettingCamera = "To enable access, go to Settings > Privacy > Camera and turn on Camera access for this app."
}

enum SetTitle {
    static let generalSymptom = "GENERAL SYMPTOMS"
    static let head = "HEAD / NECK"
    static let chest = "CHEST"
    static let chat = "Chat, call(video or audio) and have a consultation with a Medical Professional."
    static let getAccess = "Get access to a pool of medical professionals at anytime"
    static let faceConsult = "Easily schedule an appointment for a face to face consultation"
    static let emailSent = "Email sent"
    static let emailSentDesc = "An email with a reset link has been \n sent to the provided email address"
    static let goBack = "GO BACK"
    static let congratulation = "Congratulations"
    static let accountCreated = "Your account has been created"
    static let getStarted = "GET STARTED"
    static let cardAdded = "Card Added"
    static let card = "Your card was added successfully"
    static let cont = "CONTINUE"
    static let booked = "Successfull Booked"
    static let bookedDesc = "Your appointment has been booked \n with Dr, Adewale"
    static let viewAppoint = "VIEW APPOINTMENTS"
}
