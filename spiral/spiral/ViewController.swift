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
            
            hideImage()
            
        } else {
            
            showImage()
        }
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        showImage()
        
    }
  
    func showImage() {
        
        hideShowImage.isHidden = true
      
       
        
    }
    
    func hideImage() {
        
        hideShowImage.isHidden = false
        //remove by superlayer means hide
        
    }
    
    
    
    
}




