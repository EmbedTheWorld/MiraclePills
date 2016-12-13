//
//  ViewController.swift
//  MiraclePills
//
//  Created by Lucas Loughner on 12/7/16.
//  Copyright © 2016 Lucas Industries. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var pillsTitle: UILabel!
    @IBOutlet weak var pillsPrice: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var fullNametxtField: UITextField!
    @IBOutlet weak var streetAddressLabel: UILabel!
    @IBOutlet weak var streetAddressTxtField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTxtField: UITextField!
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTxtField: UITextField!
    
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipCodeTxtField: UITextField!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successIndImage: UIImageView!
    

    
    let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "District of Columbia", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTxtField.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTxtField.isHidden = true
        buyNowBtn.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTxtField.isHidden = false
        zipCodeLabel.isHidden = false
        zipCodeTxtField.isHidden = false
        buyNowBtn.isHidden = false
    }
    
    
    @IBAction func buyNowPressed(_ sender: Any) {
        
        statePicker.isHidden = true
        countryLabel.isHidden = true
        countryTxtField.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTxtField.isHidden = true
        buyNowBtn.isHidden = true
        pillImage.isHidden = true
        pillsPrice.isHidden = true
        pillsTitle.isHidden = true
        divider.isHidden = true
        fullName.isHidden = true
        fullNametxtField.isHidden = true
        streetAddressLabel.isHidden = true
        streetAddressTxtField.isHidden = true
        cityLabel.isHidden = true
        cityTxtField.isHidden = true
        statePickerBtn.isHidden = true
        stateLabel.isHidden = true
        
        successIndImage.isHidden = false
    }
    

}

