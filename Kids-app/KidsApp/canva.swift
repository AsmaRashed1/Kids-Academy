//
//  canva.swift
//  KidsApp
//
//  Created by Asma Rasheed on 26/05/1443 AH.
//
import UIKit


class canva : UIViewController {
    
    @IBOutlet weak var canvasView: drawViewController!
    
    
            override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
        @IBAction func clear(_ sender: Any) {
            canvasView.clearCanvas()
        }
    
    
    
    //Color Change
        @IBAction func redColor(_ sender: Any) {
        canvasView.colorChange(c: 1)
            
        }
    
   
    
    @IBAction func greenColor(_ sender: Any) {
        canvasView.colorChange(c: 2)
    }
    
    //
    @IBAction func blueColor(_ sender: Any) {
        canvasView.colorChange(c: 3)
    }
    
    
    @IBAction func magentaColor(_ sender: Any) {
        canvasView.colorChange(c: 4)
    }
    
    //
    
      
    @IBAction func yellowColor(_ sender: Any) {
        canvasView.colorChange(c: 5)
    }
    
    @IBAction func whiteColor(_ sender: Any) {
        canvasView.colorChange(c: 6)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



