//
//  DirectionsViewController.swift
//  SafeWalk
//
//  Created by Jenna Brandt on 3/10/20.
//  Copyright © 2020 Ilana Shapiro. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces
import Firebase

// view controller for directions page and emergency contact calling
class DirectionsViewController: UIViewController {
    
    // goes back to choose path maps page
    @objc func backButtonTapped() {
        performSegue(withIdentifier: "backSegue", sender: self)
        
    }

    // goes to profile page
    @objc func profileButtonTapped() {
        performSegue(withIdentifier: "profileSegue", sender: self)
    }

    // loading the segue
    override func loadView() {
        super.loadView()
        
        let profileButton = UIBarButtonItem(title: "Go to Profile", style: UIBarButtonItem.Style.plain, target: self, action:#selector(profileButtonTapped))

        self.navigationItem.rightBarButtonItem = profileButton
    }
    
    // button to call 911
    @IBAction func call911(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://911")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
}
