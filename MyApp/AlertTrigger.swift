//
//  AlertTrigger.swift
//  WhatCoatShouldIWear
//
//  Created by Alexandra Klufas on 9/2/20.
//  Copyright © 2020 Alexandra Klufas. All rights reserved.
//


import UIKit

func triggerAlert(_ sender: Any) {
    let alertController = UIAlertController(title: "Invalid Zip Code", message:
        "Please enter a valid zip code within the United States", preferredStyle: .alert)
    alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

    // self.present(alertController, animated: true, completion: nil)
    
}
