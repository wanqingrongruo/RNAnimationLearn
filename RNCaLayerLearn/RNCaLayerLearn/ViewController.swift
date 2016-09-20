//
//  ViewController.swift
//  RNCaLayerLearn
//
//  Created by 婉卿容若 on 16/9/18.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//

import UIKit

enum EncryptionError: Error{
    case Empty
    case Short
    case Obvious(reason: String)
}

class ViewController: UIViewController {
    
    // MARK: - properties - 即定义的各种属性
    
    var layerView: UIView!
    var myLayer: CALayer!
    
    lazy var vae: String = {
       
        return "许嵩"
    }()
    
    // MARK: -  Life cycle - 即生命周期
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.gray
        
//        let customView: RNCustomView = RNCustomView()
//        customView.center = CGPoint(x: 0, y: 0)
        
        setupView()
        
        setLayer()
        
        do {
            let encrypted = try encryptString(str: "woshishuaige", withPassword: "123456")
            print(encrypted)
        } catch EncryptionError.Empty {
            print("You must provide a password")
        } catch EncryptionError.Short {
            print("Password must be at least six characters")
        } catch{
            print("Something went wrong!")
        }
        
             
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
        myLayer.frame.origin = CGPoint(x:100 , y:100)
        myLayer.backgroundColor = UIColor.blue.cgColor
        layerView.layer.addSublayer(myLayer)
    }
}

// MARK: - Private Methods - 即私人写的方法

extension  ViewController{
    
    func encryptString(str: String, withPassword password: String) throws -> String{
        
        guard password.characters.count > 0 else {
            throw EncryptionError.Empty
        }
        
        guard password.characters.count > 5 else {
            throw EncryptionError.Short
        }
        
        guard password != "123456" else {
            throw EncryptionError.Obvious(reason: "too simple")
        }
        
        let encrypted = password + str + password
        return String(encrypted.characters.reversed())
    }

}

// MARK: - Event response - 按钮/手势等事件的回应方法

extension  ViewController{
    
}

// MARK: - Delegates - 即各种代理方法


