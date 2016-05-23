import Foundation
import UIKit

class PlatformController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
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
    
    
    @IBOutlet weak var platformPicker: UIPickerView!
    
    var videoPlatform = 0
    
    var platformPick: [String] = [String]()

    
    var platform = ["Promotional/Intro", "Product/Explainer", "Testimonial Video", "Viral"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.platformPicker.delegate=self
        self.platformPicker.dataSource=self
      
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return platform.count
    }
    
    func pickerView(pickerView: UIPickerView,titleForRow row: Int, forComponent component: Int) -> String? {
        return platform [row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        videoPlatform = row
        platformVar = platform[row]
        print(platform[row])
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let projectTitle : BudgetController = segue.destinationViewController as! BudgetController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : BudgetController = segue.destinationViewController as! BudgetController
        clientName.clientNameVar = clientNameVar
        
        let videoType : BudgetController = segue.destinationViewController as! BudgetController
        videoType.videoTypeVar = videoTypeVar
        
        let videoNumber : BudgetController = segue.destinationViewController as! BudgetController
        videoNumber.videoNumberVar = videoNumberVar
        
        let videoRunTime : BudgetController = segue.destinationViewController as! BudgetController
        videoRunTime.videoRunTimeVar = videoRunTimeVar
        
        let deadline : BudgetController = segue.destinationViewController as! BudgetController
        deadline.deadlineVar = deadlineVar
        
        let description : BudgetController = segue.destinationViewController as! BudgetController
        description.descriptionVar = descriptionVar
        
        let partProduction : BudgetController = segue.destinationViewController as! BudgetController
        partProduction.partVar = partVar
        
        let location : BudgetController = segue.destinationViewController as! BudgetController
        location.locationVar =  locationVar
        
        let character : BudgetController = segue.destinationViewController as! BudgetController
        character.characterVar =  characterVar
        
        let platform : BudgetController = segue.destinationViewController as! BudgetController
        platform.platformVar =  platformVar
        
        
    }
    
}