
import Foundation
import UIKit

class RunningTimeController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var videoNumberVar = String()
    var videoRunTimeVar = String()
    
    var videoRunTime = 0

    @IBOutlet weak var TimerView: UIPickerView!
    
    var timePicker: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.TimerView.delegate=self
        self.TimerView.dataSource=self
        
        timePicker = ["5 minutes", "10 minutes", "15 minutes", "20 minutes", "25 minutes", "30 minutes +"]
        
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return timePicker.count
    }
    
    func pickerView(pickerView: UIPickerView,titleForRow row: Int, forComponent component: Int) -> String? {
        return timePicker [row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        videoRunTime = row
        videoRunTimeVar = timePicker[row]
        
        print(videoRunTimeVar)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let projectTitle : DeadlineController = segue.destinationViewController as! DeadlineController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : DeadlineController = segue.destinationViewController as! DeadlineController
        clientName.clientNameVar = clientNameVar
        
        let videoType : DeadlineController = segue.destinationViewController as! DeadlineController
        videoType.videoTypeVar = videoTypeVar
        
        let videoNumber : DeadlineController = segue.destinationViewController as! DeadlineController
        videoNumber.videoNumberVar = videoNumberVar
        
        let videoRunTime : DeadlineController = segue.destinationViewController as! DeadlineController
        videoRunTime.videoRunTimeVar = videoRunTimeVar
        
        
    }
    
}