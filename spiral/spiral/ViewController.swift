//
//  ViewController.swift
//  spiral
//
//  Created by chandni chaudhari on 02/11/22.
//

import UIKit

class ViewController: UIViewController {
    //made globle to tracklayer
    var trackLayer = CAShapeLayer()
    
    var circleIsShown: Bool = true
    
    @IBAction func clickAction(_ sender: UIButton) {
       
        if circleIsShown {
            
            hideCircle()
            
        } else {
            
            showCircle()
        }
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        showCircle()
        
    }
  
    func showCircle() {
        circleIsShown = true
        drawCircleObject()
        view.layer.addSublayer(trackLayer)
        
    }
    
    func hideCircle() {
        circleIsShown = false
        //remove by superlayer means hide
        trackLayer.removeFromSuperlayer()
        trackLayer = CAShapeLayer()
        
    }
    
    func drawCircleObject() {
        
        let centre = view.center
        
        let circularPath = UIBezierPath(arcCenter: centre, radius: 100, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        trackLayer.path = circularPath.cgPath
        
        trackLayer.strokeColor = UIColor.red.cgColor
        trackLayer.lineWidth = 10
        trackLayer.fillColor = UIColor.clear.cgColor
        
    }
    
    
    
}




