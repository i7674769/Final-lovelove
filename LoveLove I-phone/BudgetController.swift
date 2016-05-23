
import Foundation
import UIKit

class BudgetController: UIViewController{
    
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
    
    
    @IBOutlet weak var budgetSlider: UISlider!
    @IBOutlet weak var budgetLabel: UILabel!
    let step: Float = 100
    
    @IBAction func BudgetChanged(sender: AnyObject) {
        let currentlVaule = round(budgetSlider.value / step) * step
        budgetLabel.text = "£\(currentlVaule)"
        budgetVar = budgetLabel.text!
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let projectTitle : ContactController = segue.destinationViewController as! ContactController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : ContactController = segue.destinationViewController as! ContactController
        clientName.clientNameVar = clientNameVar
        
        let videoType : ContactController = segue.destinationViewController as! ContactController
        videoType.videoTypeVar = videoTypeVar
        
        let videoNumber : ContactController = segue.destinationViewController as! ContactController
        videoNumber.videoNumberVar = videoNumberVar
        
        let videoRunTime : ContactController = segue.destinationViewController as! ContactController
        videoRunTime.videoRunTimeVar = videoRunTimeVar
        
        let deadline : ContactController = segue.destinationViewController as! ContactController
        deadline.deadlineVar = deadlineVar
        
        let description : ContactController = segue.destinationViewController as! ContactController
        description.descriptionVar = descriptionVar
        
        let partProduction : ContactController = segue.destinationViewController as! ContactController
        partProduction.partVar = partVar
        
        let location : ContactController = segue.destinationViewController as! ContactController
        location.locationVar =  locationVar
        
        let character : ContactController = segue.destinationViewController as! ContactController
        character.characterVar =  characterVar
        
        let platform : ContactController = segue.destinationViewController as! ContactController
        platform.platformVar =  platformVar
        
        let budget : ContactController = segue.destinationViewController as! ContactController
        budget.budgetVar = budgetVar
        
    }

}
  