//
//  ViewController.swift
//  RNCaLayerLearn
//
//  Created by 婉卿容若 on 16/9/18.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - properties - 即定义的各种属性
    
    var layerView: UIView!
    var myLayer: CALayer!
    
    // MARK: -  Life cycle - 即生命周期
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.gray
        
        setupView()
        
        setLayer()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    deinit{
        
        
    }
    
}

// MARK: - Public Methods - 即系统提供的方法

extension ViewController{
    
    func setupView() {
    
        layerView = UIView()
        layerView.frame.size = CGSize(width: 300, height: 300)
        layerView.center = view.center
        layerView.backgroundColor = UIColor.white
        view.addSubview(layerView)
    }
    
    func setLayer() {
        
        myLayer = CALayer()
        myLayer.frame.size = CGSize(width: 100, height: 100)
        myLayer.frame.origin = CGPoint(x: 100, y: 100)
        myLayer.backgroundColor = UIColor.blue.cgColor
        layerView.layer.addSublayer(myLayer)
    }
}

// MARK: - Private Methods - 即私人写的方法

extension  ViewController{
    
}

// MARK: - Event response - 按钮/手势等事件的回应方法

extension  ViewController{
    
}

// MARK: - Delegates - 即各种代理方法


