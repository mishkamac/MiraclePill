//
//  ViewController.swift
//  MiraclePill
//
//  Created by Michael Mirochnik on 7/10/17.
//  Copyright © 2017 Michael Mirochnik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryTitle: UILabel!
    @IBOutlet weak var countryBox: UITextField!
    @IBOutlet weak var zipCodeTitle: UILabel!
    @IBOutlet weak var zipCodeBox: UITextField!
    @IBOutlet weak var buyNowButton: UIButton!
    
    @IBOutlet weak var pillPhoto: UIImageView!
    @IBOutlet weak var miraclePillsTitle: UILabel!
    @IBOutlet weak var dollar150: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var streetAddress: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterAddress: UITextField!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var enterCity: UITextField!
    @IBOutlet weak var stateCategory: UILabel!
    
    @IBOutlet weak var successImage: UIImageView!
    
    
    let states = ["Alaska",
                  "Alabama",
                  "Arkansas",
                  "Arizona",
                  "California",
                  "Colorado",
                  "Connecticut",
                  "District of Columbia",
                  "Delaware",
                  "Florida",
                  "Georgia",
                  "Hawaii",
                  "Iowa",
                  "Idaho",
                  "Illinois",
                  "Indiana",
                  "Kansas",
                  "Kentucky",
                  "Louisiana",
                  "Massachusetts",
                  "Maryland",
                  "Maine",
                  "Michigan",
                  "Minnesota",
                  "Missouri",
                  "Mississippi",
                  "Montana",
                  "North Carolina",
                  "North Dakota",
                  "Nebraska",
                  "New Hampshire",
                  "New Jersey",
                  "New Mexico",
                  "Nevada",
                  "New York",
                  "Ohio",
                  "Oklahoma",
                  "Oregon",
                  "Pennsylvania",
                  "Rhode Island",
                  "South Carolina",
                  "South Dakota",
                  "Tennessee",
                  "Texas",
                  "Utah",
                  "Virginia",
                  "Vermont",
                  "Washington",
                  "Wisconsin",
                  "West Virginia",
                  "Wyoming"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryTitle.isHidden = true
        countryBox.isHidden = true
        zipCodeTitle.isHidden = true
        zipCodeBox.isHidden = true
        buyNowButton.isHidden = true
      }
    
    @IBAction func buyNowPressed(_ sender: UIButton) {
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        countryTitle.isHidden = true
        countryBox.isHidden = true
        zipCodeTitle.isHidden = true
        zipCodeBox.isHidden = true
        buyNowButton.isHidden = true
        pillPhoto.isHidden = true
        miraclePillsTitle.isHidden = true
        dollar150.isHidden = true
        divider.isHidden = true
        fullName.isHidden = true
        streetAddress.isHidden = true
        enterName.isHidden = true
        enterAddress.isHidden = true
        city.isHidden = true
        enterCity.isHidden = true
        stateCategory.isHidden = true
        successImage.isHidden = false
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
        countryTitle.isHidden = false
        countryBox.isHidden = false
        zipCodeTitle.isHidden = false
        zipCodeBox.isHidden = false
        buyNowButton.isHidden = false
    }
    
    
    
}

