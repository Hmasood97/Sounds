//
//  ViewController.swift
//  Soundz
//
//  Created by Hisham Masood on 9/21/19.
//  Copyright © 2019 Masood Inc. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
      var audioPlayer: AVAudioPlayer!
    let url = Bundle.main.url(forResource: "cow", withExtension: "wav")!
    let soundNameArray = ["cow","elephant","Bes1","flute","Bass","Recorder",]
    var fileName : String = "";

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func soundsPress(_ sender: UIButton) {
        fileName = soundNameArray[sender.tag-1]
                     playSoundz()
        
    }
    
        
        
    
    
    func  playSoundz() {
        let soundzURL = Bundle.main.url(forResource: fileName, withExtension: "wav")!
      do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundzURL)
        
                }
        
                catch {
                    print(error)
                }
                audioPlayer.play()
            }
        }
