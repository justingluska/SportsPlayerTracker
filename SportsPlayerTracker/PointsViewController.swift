//
//  PointsViewController.swift
//  SportsPlayerTracker
//
//  Created by Justin Gluska on 12/24/19.
//  Copyright © 2019 Justin Gluska. All rights reserved.
//

import UIKit
import SwiftVideoBackground
import GoogleMobileAds

class PointsViewController: UIViewController, UITextFieldDelegate, GADInterstitialDelegate {
    
    var interstitial: GADInterstitial!
    var binary:Int = 1
    var p1Score:Int = 0
    var p2Score:Int = 0
    var p3Score:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player1NameField.delegate = self
        player2NameField.delegate = self
        player3NameField.delegate = self
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-9134328104554845/2571872964")
        let request = GADRequest()
        interstitial.load(request)
        try? VideoBackground.shared.play(view: view, videoName: "background", videoType: "mp4")
        binaryStepper.layer.cornerRadius = 8
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) { // Change `2.0` to the desired number of seconds.
            if self.interstitial.isReady {
            self.interstitial.present(fromRootViewController: self)
           }
        }
    }
    
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         textField.resignFirstResponder()
         return true
     }

     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         self.view.endEditing(true)
     }
    @IBOutlet weak var binaryStepper: UIStepper!
    
    @IBAction func binaryStepperClicked(_ sender: UIStepper) {
        if (Int(sender.value) == 1){
            binary = 1
        }
        else if (Int(sender.value) == 0){
            binary = 0
        }
        print(binary)
    }
    
    /// PLAYER 1 SCORE CHANGES
    
    @IBAction func p1change1(_ sender: UIButton) {
        if (binary == 1){
            p1Score += 1
        }
        else if (binary == 0){
            p1Score -= 1
        }
        updateScores()
    }
    
    @IBAction func p1Change2(_ sender: UIButton) {
        if (binary == 1){
            p1Score += 2
        }
        else if (binary == 0){
            p1Score -= 2
        }
        updateScores()
    }
    
    @IBAction func p1Change3(_ sender: UIButton) {
        if (binary == 1){
            p1Score += 3
        }
        else if (binary == 0){
            p1Score -= 3
        }
        updateScores()
    }
    
    @IBAction func p1Change4(_ sender: UIButton) {
        if (binary == 1){
            p1Score += 4
        }
        else if (binary == 0){
            p1Score -= 4
        }
        updateScores()
    }
    
    @IBAction func p1Change5(_ sender: UIButton) {
        if (binary == 1){
            p1Score += 5
        }
        else if (binary == 0){
            p1Score -= 5
        }
        updateScores()
    }
    
    /// PLAYER 2 SCORE CHANGES
    
    @IBAction func p2Change1(_ sender: UIButton) {
        if (binary == 1){
            p2Score += 1
        }
        else if (binary == 0){
            p2Score -= 1
        }
        updateScores()
    }
    
    @IBAction func p2Change2(_ sender: UIButton) {
        if (binary == 1){
            p2Score += 2
        }
        else if (binary == 0){
            p2Score -= 2
        }
        updateScores()
    }
    
    @IBAction func p2Change3(_ sender: UIButton) {
        if (binary == 1){
            p2Score += 3
        }
        else if (binary == 0){
            p2Score -= 3
        }
        updateScores()
    }
    
    @IBAction func p2Change4(_ sender: UIButton) {
        if (binary == 1){
            p2Score += 4
        }
        else if (binary == 0){
            p2Score -= 4
        }
        updateScores()
    }
    
    @IBAction func p2Change5(_ sender: UIButton) {
        if (binary == 1){
            p2Score += 5
        }
        else if (binary == 0){
            p2Score -= 5
        }
        updateScores()
    }
    
    /// PLAYER 3 SCORE CHANGES
    
    @IBAction func p3Change1(_ sender: UIButton) {
        if (binary == 1){
            p3Score += 1
        }
        else if (binary == 0){
            p3Score -= 1
        }
        updateScores()
    }
    
    @IBAction func p3Change2(_ sender: UIButton) {
        if (binary == 1){
            p3Score += 2
        }
        else if (binary == 0){
            p3Score -= 2
        }
        updateScores()
    }
    
    @IBAction func p3Change3(_ sender: UIButton) {
        if (binary == 1){
            p3Score += 3
        }
        else if (binary == 0){
            p3Score -= 3
        }
        updateScores()
    }
    
    @IBAction func p3Change4(_ sender: UIButton) {
        if (binary == 1){
            p3Score += 4
        }
        else if (binary == 0){
            p3Score -= 4
        }
        updateScores()
    }
    
    @IBAction func p3Change5(_ sender: UIButton) {
        if (binary == 1){
            p3Score += 5
        }
        else if (binary == 0){
            p3Score -= 5
        }
        updateScores()
    }
    
    /// END OF SCORE CHANGES
    
    func updateScores(){
        player1PointLabel.text = "Points: \(p1Score)"
        player2PointLabel.text = "Points: \(p2Score)"
        player3PointLabel.text = "Points: \(p3Score)"
    }
    
    @IBOutlet weak var player1PointLabel: UILabel!
    @IBOutlet weak var player2PointLabel: UILabel!
    @IBOutlet weak var player3PointLabel: UILabel!
    
    @IBOutlet weak var player1NameField: UITextField!
    @IBOutlet weak var player2NameField: UITextField!
    @IBOutlet weak var player3NameField: UITextField!
    
    

}
