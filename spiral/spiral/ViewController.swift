//
//  ViewController.swift
//  spiral
//
//  Created by chandni chaudhari on 02/11/22.
//

import UIKit

class ViewController: UIViewController {
    //made globle to tracklayer
   
    @IBOutlet weak var hideShowImage: UIImageView!
   
    
    
    @IBAction func clickAction(_ sender: UIButton) {
       
        if hideShowImage.isHidden {
            
            showImage()
            
        } else {
            
            hideImage()
        }
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        showImage()
        
    }
  
    func showImage() {
        
        hideShowImage.isHidden = false
      
       
        
    }
    
    func hideImage() {
        
        hideShowImage.isHidden = true
        //remove by superlayer means hide
        
    }
    
    
    
    
}




