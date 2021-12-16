//
//  SongViewController.swift
//  Kids Academy
//
//  Created by Asma Rasheed on 10/05/1443 AH.
//

import UIKit
import AVFoundation


class SongViewController: UIViewController {

    @IBOutlet weak var displayLable: UILabel!
    
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = Bundle.main.url(forResource: "music", withExtension: "m4a")
       
        do {
            
        audioPlayer = try AVAudioPlayer(contentsOf: url!)
        audioPlayer.prepareToPlay()
        audioPlayer.currentTime = 0
        displayLable.text = "\(audioPlayer.currentTime)"
            
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block:{ (timer) in
                self.displayLable.text = "\(round(self.audioPlayer.currentTime*10)/10)"
            })
        } catch let error as NSError {
            print (error.debugDescription)
        }
    }
    @IBAction func playPressed(_ sender: UIButton) {
        audioPlayer.play()
    }

    @IBAction func pausePressed(_ sender: UIButton) {
        audioPlayer.pause()
    }

    @IBAction func stopPressed(_ sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
    }

}

