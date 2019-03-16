# SKFlipAnimation
Flip Coin Animation

[![SKFlip-Animation-Img.gif](https://i.postimg.cc/NjwG54Lg/SKFlip-Animation-Img.gif)](https://postimg.cc/WhXcy0MK)


Usage

Assign SKCoinFlipAnimation Class to UIView

@IBOutlet weak var rotatedView: SKCoinFlipAnimation!

override func viewDidLoad() {
        super.viewDidLoad()
        rotatedView.firstImage = UIImage(named: "SKImage")!
        rotatedView.secondImage = UIImage(named: "SKImage")!
        rotatedView.animationType = .fromLeft
    }

