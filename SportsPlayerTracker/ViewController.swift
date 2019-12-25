//
//  ViewController.swift
//  SportsPlayerTracker
//
//  Created by Justin Gluska on 12/24/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit
import SwiftVideoBackground
import GoogleMobileAds

class ViewController: UIViewController, GADInterstitialDelegate {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 20
        helpButton.layer.cornerRadius = 20
        try? VideoBackground.shared.play(view: view, videoName: "space", videoType: "mp4")
        
    }

    //let videoBackground1 = VideoBackground()
    
    @IBAction func startClicked(_ sender: Any) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //try? VideoBackground.shared.play(view: view, videoName: "space", videoType: "mp4")
        //videoBackground1.resume()
    }

    @IBAction func helpClicked(_ sender: Any) {
        let alert = UIAlertController(title: "Instructions:", message: "Enter player names and change the points by pressing the 1-5 buttons. The '+' and '-' slider at the top denotes if you are adding or subtracting points.", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))

        self.present(alert, animated: true)
    }
    
}

