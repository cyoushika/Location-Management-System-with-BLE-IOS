import UIKit

class SignUpTableViewController : UITableViewController,UIPickerViewDataSource,UIPickerViewDelegate
{
    
    var flag = 1
    var pickerData: [String] = [String]()
    
    
    @IBOutlet weak var PhotoImage: UIImageView!
    @IBOutlet weak var PhotoCell: UITableViewCell!
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var SexLabel: UILabel!
    @IBOutlet weak var SexCell: UITableViewCell!
    @IBOutlet weak var PickerCell: UITableViewCell!
    @IBOutlet weak var Picker: UIPickerView!
    
    @IBAction func Accept(_ sender: UIButton) {
        // When user tap the Accept Button, upload all the information
        print("Accept")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerData = ["Male","Female"]
        Picker.delegate = self
        Picker.dataSource = self
        PhotoImage.image = UIImage(named: "photo-icon.png")
        NameTextField.placeholder = "Please input your name"
        EmailTextField.placeholder = "Please input your Email"
        // Only when User is trying edit SexCell, the PickerView will show up
        PickerCell.isHidden = true
        SexLabel.text = "Male/Female"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0
        {
            //When user tap the PhotoCell, Take or upload a picture
            print("Photo")
            PhotoCell.isSelected = false
        }
        
        if indexPath.section == 3
        {
            SexCell.isSelected = false
            
            if flag == 1
            {
                PickerCell.isHidden = false
                SexLabel.textColor = UIColor.red
                flag = 2
            }
            else if flag == 2
            {
                SexLabel.text = pickerData[Picker.selectedRow(inComponent: 0)]
                SexLabel.textColor = UIColor.black
                PickerCell.isHidden = true
                flag = 1
            }
        }
    }
}
