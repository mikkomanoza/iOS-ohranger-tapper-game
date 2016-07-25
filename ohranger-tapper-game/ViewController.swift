//
//  ViewController.swift
//  ohranger-tapper-game
//
//  Created by Joseph Mikko Manoza on 24/07/2016.
//  Copyright © 2016 TeamOhrange. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties/Variables this is global variable
    
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    
    
    
    
    //3 main controls working on @IbOutlet
    
    @IBOutlet weak var  ohrangerLogo : UIImageView! //! means unwraped variables
    
    @IBOutlet weak var playBtn : UIButton!
    
    @IBOutlet weak var tapsTxt: UITextField!
    
    
    
    @IBOutlet weak var tapsCoin: UIButton!
    
    @IBOutlet weak var tapsLabel: UILabel!
    
    
    
    //@IBAction func for coinPressed
    
    @IBAction func onCoinTap(sender: UIButton!) {
    
        currentTaps = currentTaps + 1 //this is the original currentTaps++
        
        updateTapLbl() ///this is coolllll!!!
        
        
        //check if the is game is over and need to create new func
        
        if isGameOver() {
        
        
            restartGame()
            
            
        }
        
    
    
    }
    
    
    
    //action with func at 35mins working on action
    @IBAction func onPlayButtonPressed(sender: UIButton! ) {
        
       
        
        
        //validation
        
        if tapsTxt.text != nil && tapsTxt.text != "" { //nil means null
            
            
            ohrangerLogo.hidden = true
            
            playBtn.hidden = true
            
            tapsTxt.hidden = true
            
            
            
            tapsCoin.hidden = false
            
            tapsLabel.hidden = false
            
            
            
            maxTaps = Int(tapsTxt.text!)! //grabing the text of it converting it to INT and putting it to maxTaps var
            currentTaps = 0
            
            updateTapLbl() ///this is coollll !!!!
            
            
            }
        
        
        }
        
    //important principle ////////// 
    /// DRY means dont repeat yourself code for that create another func
    
    
    func updateTapLbl(){
    
        tapsLabel.text = "\(currentTaps) taps"
    
         }
    
    
    //another func cool and return to bool
    
    func isGameOver() -> Bool {
        
        if currentTaps >= maxTaps {
            
                return true
        
        } else {
            
                return false
        
        }

    


    }
    
    //new func for restart
    
    func restartGame() {
        
        maxTaps = 0
        tapsTxt.text = ""
        
        
        //i must create func
        
        ohrangerLogo.hidden = false
        
        playBtn.hidden = false
        
        tapsTxt.hidden = false
        
        
        
        tapsCoin.hidden = true
        
        tapsLabel.hidden = true
        
        
        
    }


}
