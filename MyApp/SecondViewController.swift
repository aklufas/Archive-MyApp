//
//  SecondViewController.swift
//  WhatCoatShouldIWear
//
//  Created by Alexandra Klufas on 7/2/20.
//  Copyright © 2020 Alexandra Klufas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    var finalZip = ""
    
    
    @IBOutlet weak var weatherIcon: UIImageView!
    
    @IBOutlet weak var currentTemp: UILabel!
    
    @IBOutlet weak var coatRec: UIImageView!
    
    @IBOutlet weak var cityName: UILabel!
    
    
    var accessWeather = WeatherObject()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //call action to find weather information
        accessWeather.enteredZip(num: finalZip)
        
        
        
        print(finalZip)
        print(accessWeather.tempObject.temp_min)
        
        
        //give time for API call
        do{
            sleep(2)
        }
        

        //pull correct coat image
        //in future - incorporate weather icons
        let coatImage = decideCoat(min: accessWeather.tempObject.temp_min)
        
        
        let far = kelvinToFarenheit(temp: accessWeather.tempObject.temp)
        self.currentTemp.text = String(far)
        
        //display coat image
        coatRec.image = UIImage.init(named: coatImage) 
        
        let icon = accessWeather.conditionDescription[0].icon
        weatherIcon.image = UIImage.init(named: icon)
        
        //cityName.text = String(finalZip.)
        // Do any additional setup after loading the view.
    }
    
    
    
    //@IBAction func zipSubmit(_ sender: Any) {
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


