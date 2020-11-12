//
//  ViewController.swift
//  WhatCoatShouldIWear
//
//  Created by Alexandra Klufas on 5/20/20.
//  Copyright © 2020 Alexandra Klufas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var zipCode: UITextField!
    
    
    ///CURRENT ISSUE AREA!!!!
    @IBAction func displayAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Invalid Zip Code", message:
            "Please enter a valid zip code within the United States", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func returnHome(unwindSegue: UIStoryboardSegue) {}
    
    
    var zip = ""
    
    var accessWeather = WeatherObject()
  
    /*
    @IBOutlet weak var coatRec: UIImageView!
    
    @IBOutlet weak var weatherIcon: UIImageView!
    
    @IBOutlet weak var currentTemp: UILabel!
 */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        zipCode.delegate = self
        
    }
    
    @IBAction func zipSubmit(_ sender: Any) {
        self.zip = zipCode.text!
        
        //do{
           // accessWeather.enteredZip(num: self.zip)
            performSegue(withIdentifier: "zipInfo", sender: self)
       // }
       // catch TempError.noDataAvailable {
       //     print("Error Caught")
       // }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let vc = segue.destination as! SecondViewController
        vc.finalZip = self.zip
    }
    
    
}



    /*
    //create weather object for API call
    var accessWeather = WeatherObject()
    
    @IBAction func zipSubmit(_ sender: Any) {
        
        //call action to find weather information
        accessWeather.enteredZip(num: zipCode.text!)
        
        //give time for API call
        do{
            sleep(2)
        }
        

        //pull correct coat image
        //in future - incorporate weather icons
        let coatImage = decideCoat(min: accessWeather.tempObject.temp_min)
        
        //display coat image
        coatRec.image = UIImage.init(named: coatImage) // why r u having issues :0
        
        let icon = accessWeather.conditionDescription[0].icon
        weatherIcon.image = UIImage.init(named: icon)
        
        let current_temp = kelvinToFarenheit(temp: accessWeather.tempObject.feels_like)
       
        currentTemp.text = String(current_temp)
        
        currentTime()
        
        coatScore(weatherInfo: accessWeather)
        
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        zipCode.resignFirstResponder()
   
    }
    
}


    
 extension ViewController : UITextFieldDelegate {
    func textFieldReturn (_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
    
        return true
    }
}

*/

