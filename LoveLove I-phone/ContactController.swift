import UIKit

class ContactController: UIViewController, UITextFieldDelegate{
    
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
    var characterVar = String()
    var platformVar = String()
    var budgetVar = String()
    var emailVar = String()
    var phoneNumberVar = String()
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var clientName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name: UIKeyboardWillHideNotification, object: nil)
        
        clientName.text! = clientNameVar
        emailVar = email.text!
        phoneNumberVar = phoneNumber.text!
        
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
        contentInset.bottom = keyboardFrame.size.height/4
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
        
        let projectTitle : SummaryController = segue.destinationViewController as! SummaryController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : SummaryController = segue.destinationViewController as! SummaryController
        clientName.clientNameVar = clientNameVar
        
        let videoType : SummaryController = segue.destinationViewController as! SummaryController
        videoType.videoTypeVar = videoTypeVar
        
        let videoNumber : SummaryController = segue.destinationViewController as! SummaryController
        videoNumber.videoNumberVar = videoNumberVar
        
        let videoRunTime : SummaryController = segue.destinationViewController as! SummaryController
        videoRunTime.videoRunTimeVar = videoRunTimeVar
        
        let deadline : SummaryController = segue.destinationViewController as! SummaryController
        deadline.deadlineVar = deadlineVar
        
        let description : SummaryController = segue.destinationViewController as! SummaryController
        description.descriptionVar = descriptionVar
        
        let partProduction : SummaryController = segue.destinationViewController as! SummaryController
        partProduction.partVar = partVar
        
        let location : SummaryController = segue.destinationViewController as! SummaryController
        location.locationVar =  locationVar
        
        let character : SummaryController = segue.destinationViewController as! SummaryController
        character.characterVar =  characterVar
        
        let platform : SummaryController = segue.destinationViewController as! SummaryController
        platform.platformVar =  platformVar
        
        let budget : SummaryController = segue.destinationViewController as! SummaryController
        budget.budgetVar = budgetVar
        
        let emails : SummaryController = segue.destinationViewController as! SummaryController
        emails.emailVar = email.text!
        
        let phone : SummaryController = segue.destinationViewController as! SummaryController
        phone.phoneNumberVar =  phoneNumber.text!
        
    }


}