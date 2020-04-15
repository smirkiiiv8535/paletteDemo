//
//  ViewController.swift
//  paletteDemo
//
//  Created by 林祐辰 on 2020/4/15.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var paletteView: UIView!
    
    
    @IBOutlet weak var paletteImageView: UIImageView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
           let paletteShape = UIView(frame:CGRect(x:57,y:102,width:300,height:300))
            
           let paletteLayer = CAGradientLayer()
            
            paletteLayer.colors = [CGColor(srgbRed: 2/255, green: 249/255, blue: 1/255, alpha: 1),CGColor(srgbRed: 248/255, green: 252/255, blue: 0/255, alpha: 1),CGColor(srgbRed: 255/255, green: 98/255, blue: 0, alpha: 1),CGColor(srgbRed: 255/255, green: 38/255, blue: 1/255, alpha: 1),CGColor(srgbRed: 255/255, green: 48/255, blue: 151/255, alpha: 1),CGColor(srgbRed: 255/255, green: 63/255, blue: 255/255, alpha: 1),CGColor(srgbRed: 166/255, green: 56/255, blue: 255/255, alpha: 1),CGColor(srgbRed: 18/255, green: 51/255, blue: 255/255, alpha: 1),CGColor(srgbRed: 0/255, green: 199/255, blue: 255/255, alpha: 1),CGColor(srgbRed: 5/255, green: 252/255, blue: 205/255, alpha: 1),CGColor(srgbRed: 3/255, green: 250/255, blue: 109/255, alpha: 1),CGColor(srgbRed: 15/255, green: 249/255, blue: 0/255, alpha: 1)]
            
            paletteLayer.frame = paletteShape.bounds
            paletteLayer.startPoint =  CGPoint(x: 0, y: 1)
            paletteLayer.endPoint =  CGPoint(x: 0, y: 0)
            paletteLayer.locations = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0,1.1,1.2]
        
            paletteShape.layer.addSublayer(paletteLayer)
            
            
          let paletteImage = UIImage(named:"notebook.png")
          let paletteImageView =  UIImageView(image:paletteImage)
            let paletteImageShape = UIView(frame:CGRect(x:57,y:502,width:450,height:450))
          let paletteImageLayer = CAGradientLayer()
            
            paletteImageLayer.frame = paletteImageShape.bounds
        
            paletteImageLayer.colors =  [CGColor(srgbRed: 2/255, green: 249/255, blue: 1/255, alpha: 1),CGColor(srgbRed: 248/255, green: 252/255, blue: 0/255, alpha: 1),CGColor(srgbRed: 255/255, green: 98/255, blue: 0, alpha: 1),CGColor(srgbRed: 255/255, green: 38/255, blue: 1/255, alpha: 1),CGColor(srgbRed: 255/255, green: 48/255, blue: 151/255, alpha: 1),CGColor(srgbRed: 255/255, green: 63/255, blue: 255/255, alpha: 1),CGColor(srgbRed: 166/255, green: 56/255, blue: 255/255, alpha: 1),CGColor(srgbRed: 18/255, green: 51/255, blue: 255/255, alpha: 1),CGColor(srgbRed: 0/255, green: 199/255, blue: 255/255, alpha: 1),CGColor(srgbRed: 5/255, green: 252/255, blue: 205/255, alpha: 1),CGColor(srgbRed: 3/255, green: 250/255, blue: 109/255, alpha: 1),CGColor(srgbRed: 15/255, green: 249/255, blue: 0/255, alpha: 1)]
            
            
            paletteImageShape.layer.addSublayer(paletteImageLayer)
      
            paletteImageShape.mask = paletteImageView

            
            view.addSubview(paletteShape)
            view.addSubview(paletteImageShape)
        }


    }
