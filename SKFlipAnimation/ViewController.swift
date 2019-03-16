//
//  ViewController.swift
//  SKFlipAnimation
//
//  Created by Sourav on 3/9/19.
//  Copyright © 2019 Saurav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var rotatedView: SKCoinFlipAnimation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rotatedView.firstImage = UIImage(named: "SKImage")!
        rotatedView.secondImage = UIImage(named: "SKImage")!
        // Do any additional setup after loading the view, typically from a nib.
    }

    

}

