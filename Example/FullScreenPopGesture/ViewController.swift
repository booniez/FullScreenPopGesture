//
//  ViewController.swift
//  FullScreenPopGesture
//
//  Created by booniez on 06/11/2024.
//  Copyright (c) 2024 booniez. All rights reserved.
//

import UIKit
import FullScreenPopGesture

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Home"
        
        let pushButton = UIButton(type: .system)
        pushButton.setTitle("Push", for: .normal)
        pushButton.addTarget(self, action: #selector(pushNext), for: .touchUpInside)
        pushButton.sizeToFit()
        pushButton.center = view.center
        
        view.addSubview(pushButton)
                
//        navigationController?.fullscreenPopGestureRecognizer.isEnabled = false
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc private func pushNext() {
        let nextViewController = UIViewController()
        nextViewController.view.backgroundColor = .blue
        nextViewController.title = "Next"
        // 添加示例设置
        nextViewController.interactivePopDisabled = false
//        nextViewController.prefersNavigationBarHidden = false
//        nextViewController.interactivePopMaxAllowedInitialDistanceToLeftEdge = 50
        navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

