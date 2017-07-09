//
//  ViewController.swift
//  Lecture8MultiThreading
//
//  Created by bws2007 on 09.07.17.
//  Copyright © 2017 bws2007. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("dispath from main queue")
        
        DispatchQueue.global(qos: .background).async {
            for _ in 0...100 {
                print("🚁🚁")
            }
            
            DispatchQueue.main.async {
                for _ in 0...100 {
                    print("🚕🚕")
                }
            }
            
        }
        
        for _ in 0...100 {
            print("🚗🚗")
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

