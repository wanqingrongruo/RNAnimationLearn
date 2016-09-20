//
//  RNCustomView.swift
//  RNCaLayerLearn
//
//  Created by 婉卿容若 on 16/9/18.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//

import UIKit

class RNCustomView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var _center:CGPoint = CGPoint(x: 0, y: 0)
    override var center: CGPoint{
        set{
        
            _center = center
        }
        
        get{
            
            return _center
        }
    }
    
    
      
}
