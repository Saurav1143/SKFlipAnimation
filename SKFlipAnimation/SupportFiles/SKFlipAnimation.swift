//
//  SKFlipAnimation.swift
//  SKFlipAnimation
//
//  Created by Saurav on 3/9/19.
//  Copyright © 2019 Saurav. All rights reserved.
//

import UIKit

class SKCoinFlipAnimation: UIView {
    
    //MARK:- Variables.....
    var firstImage = UIImage()
    var secondImage = UIImage()
    private var timer = Timer()
    private var switchImage:Bool = true
    private var skImageView:UIImageView = UIImageView()
    private var duration:Double = 0.8//Duration
    
    //MARK:- App Life Cycle....
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        intializeData()
    }
    
    deinit {
        timer.invalidate()
    }
    
    
    //MARK:- Custom Methods....
    private func intializeData() {
        //This Loop Will remove All add SubViews...
        for subView in self.subviews {
            subView.removeFromSuperview()
        }
        skImageView.frame = self.bounds
        skImageView.contentMode = .scaleAspectFit
        self.backgroundColor = UIColor.clear
        skImageView.image = firstImage
        self.addSubview(skImageView)
        scheduledTimerWithTimeInterval()
    }
    
    
    func scheduledTimerWithTimeInterval(){
        // Scheduling timer to Call the function "updateCounting" with the interval of 1 seconds
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(duration), target: self, selector: #selector(flipView), userInfo: nil, repeats: true)
    }
    
    @objc func flipView() {
        let coinFlip = CATransition()
        coinFlip.startProgress = 0
        coinFlip.endProgress = 1.0
        coinFlip.type = CATransitionType(rawValue: "flip")
        coinFlip.subtype = CATransitionSubtype(rawValue: "fromLeft")
        coinFlip.duration = CFTimeInterval(duration)
        coinFlip.repeatCount = 2
        self.layer.add(coinFlip, forKey: "transition")
        
        //This Function will call to change the image during rotation
        changeImage()
        
    }
    
    //This Function will change the image during rotation...
    func changeImage() {
        if (switchImage) {
            skImageView.image = secondImage
            switchImage  = !switchImage
        } else {
            skImageView.image = firstImage
            switchImage  = !switchImage
        }
    }
    
}//Class....
