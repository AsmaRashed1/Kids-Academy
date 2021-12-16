//
//  LettersViewController.swift
//  Kids Academy
//
//  Created by Asma Rasheed on 10/05/1443 AH.
//

import AVFoundation
import UIKit
class Letters: UIViewController {


    var audioPlayer = AVAudioPlayer()
    let AudioX = ["A", "B", "C", "D", "E", "F", "G","H","I", "J", "K", "L", "M", "N", "O", "P","Q", "R", "S", "T", "U", "V", "W", "X","Y","Z"]
    
    @IBOutlet var letter: [UIButton]!
    
    @IBAction func letterPress(_ sender: UIButton) {
  
    
            print("done")
        play(note: letter.firstIndex(of: sender)! + 1 )

    }
    func play(note: Int) {
        print(note,AudioX[note - 1])
        let Au = AudioX[note - 1]
        if let path = Bundle.main.path(forResource: Au, ofType: "wav") {
            let url = URL(fileURLWithPath: path)
            print(Au)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer.prepareToPlay()
                audioPlayer.play()
                
            }catch {
                print(error)
            }
        }
    }
    
    
    
    
    
}

