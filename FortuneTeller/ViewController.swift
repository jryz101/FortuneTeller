//  ViewController.swift
//  FortuneTeller
//  Created by Jerry Tan on 01/06/2019.
//  Copyright © 2019 Starknet Technologies®. All rights reserved.


import UIKit
import GameKit
import AudioToolbox

class ViewController: UIViewController {
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    

    
    //MARK: - IMAGE OUTLET.
    @IBOutlet weak var FortuneImage: UIImageView!
    
    //MARK: -  VIEW DID LOAD SECTION.
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK: - PRESS BUTTON FUNCTION.
    @IBAction func PressButton(_ sender: UIButton) {
        showAnswer()
    }
    //Tells the receiver that a motion event has ended.
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        showAnswer()
    }
    
    //MARK: - FUNCTION BLOCK.
    func showAnswer ( ) {
        
        if FortuneImage.isHidden == true {
            //The superclass for all basic randomization classes in GameplayKit.
            let answer = GKRandomSource.sharedRandom( ).nextInt(upperBound: 6) + 1
            FortuneImage.image =  UIImage(named: "\(answer)")
            FortuneImage.isHidden = false
            
            //Plays a system sound object.
            AudioServicesPlaySystemSound(1000)
            
            } else {
            FortuneImage.isHidden = true
            }
        }
    
}

