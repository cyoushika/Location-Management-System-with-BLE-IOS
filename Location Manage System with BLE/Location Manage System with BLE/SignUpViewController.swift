import UIKit

class SignUpTableViewController : UITableViewController
{
    
    var flag = 1
    var pickerData: [String] = [String]()
    
    
    @IBOutlet weak var PhotoImage: UIImageView!
    @IBOutlet weak var PhotoCell: UITableViewCell!
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    
    @IBOutlet weak var SexSegement: UISegmentedControl!
    
    @IBAction func Accept(_ sender: UIButton) {
        // When user tap the Accept Button, upload all the information
        if (NameTextField.text != nil && EmailTextField.text != nil && SexSegement.titleForSegment(at: SexSegement.selectedSegmentIndex) != nil)
        {
            print(NameTextField.text)
            print(EmailTextField.text)
            print(SexSegement.titleForSegment(at: SexSegement.selectedSegmentIndex))
            print("Accept!")
        }
        else {
            print("Error!")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerData = ["Male","Female"]
        PhotoImage.image = UIImage(named: "photo-icon.png")
        NameTextField.placeholder = "Please input your name"
        EmailTextField.placeholder = "Please input your Email"
        // Only when User is trying edit SexCell, the PickerView will show up
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0
        {
            //When user tap the PhotoCell, Take or upload a picture
            print("Photo")
            PhotoCell.isSelected = false
        }
        
    }
}
