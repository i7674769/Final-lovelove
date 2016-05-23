import UIKit

class LocationController: UIViewController, UITextFieldDelegate{
    
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var videoNumberVar = String()
    var videoRunTimeVar = String()
    var deadlineVar = String()
    var descriptionVar = String()
    var partVar = String()
    var videoExampleVar = String()
    var locationVar = String()
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var locationText: UITextView!
    
    var location = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name: UIKeyboardWillHideNotification, object: nil)
        
        locationText.text = "Type Here..."
        locationText.textColor = UIColor.lightGrayColor()
        
    }
    
    func textViewDidBeginEditing(locationText: UITextView) {
        if locationText.textColor == UIColor.lightGrayColor() {
            locationText.text = nil
            locationText.textColor = UIColor.blackColor()
        }
    }
    
    func textViewDidEndEditing(locationText: UITextView) {
        if locationText.text.isEmpty {
            locationText.text = "Type Here..."
            locationText.textColor = UIColor.lightGrayColor()
        }
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        self.view.endEditing(true)
        
        return true
        
    }
    
    func keyboardWillShow(notification:NSNotification){
        
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).CGRectValue()
        keyboardFrame = self.view.convertRect(keyboardFrame, fromView: nil)
        
        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height/2
        self.scrollView.contentInset = contentInset
    }
    
    func keyboardWillHide(notification:NSNotification){
        
        let contentInset:UIEdgeInsets = UIEdgeInsetsZero
        self.scrollView.contentInset = contentInset
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let projectTitle : CharactersController = segue.destinationViewController as! CharactersController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : CharactersController = segue.destinationViewController as! CharactersController
        clientName.clientNameVar = clientNameVar
        
        let videoType : CharactersController = segue.destinationViewController as! CharactersController
        videoType.videoTypeVar = videoTypeVar
        
        let videoNumber : CharactersController = segue.destinationViewController as! CharactersController
        videoNumber.videoNumberVar = videoNumberVar
        
        let videoRunTime : CharactersController = segue.destinationViewController as! CharactersController
        videoRunTime.videoRunTimeVar = videoRunTimeVar
        
        let deadline : CharactersController = segue.destinationViewController as! CharactersController
        deadline.deadlineVar = deadlineVar
        
        let description : CharactersController = segue.destinationViewController as! CharactersController
        description.descriptionVar = descriptionVar
        
        let partProduction : CharactersController = segue.destinationViewController as! CharactersController
        partProduction.partVar = partVar
        
        let location : CharactersController = segue.destinationViewController as! CharactersController
        location.locationVar =  locationText.text!
        
        
    }

}