//
//  Extensions.swift
//  Zoho
//
//  Created by Abu Bakar on 10/29/20.
//

import Foundation
import UIKit


extension UIView {
    
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
      }
    
    func flipY() {
           transform = CGAffineTransform(scaleX: transform.a, y: -transform.d)
       }
    
    func pushTransition(_ duration:CFTimeInterval) {
        
         let animation:CATransition = CATransition()
         animation.timingFunction = CAMediaTimingFunction(name:
         CAMediaTimingFunctionName.default)
        animation.type = CATransitionType.push
         animation.subtype = CATransitionSubtype.fromBottom
         animation.duration = duration
         layer.add(animation, forKey: CATransitionType.push.rawValue)
     }
    
    func startRotation() {
                let rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
                rotation.toValue = NSNumber(value: Double.pi * 2)
                rotation.duration = 5
                rotation.isCumulative = true
                rotation.repeatCount = Float.greatestFiniteMagnitude
                self.layer.add(rotation, forKey: "rotationAnimation")
        }

        // Stop rotation
        func stopRotation() {
            self.layer.removeAnimation(forKey: "rotationAnimation")
        }
    
    func leftToRight() {
        
   
    }
 }



extension UIImage {
//    func createSelectionIndicator(color: UIColor, size: CGSize, lineWidth: CGFloat) -> UIImage {
//        UIGraphicsBeginImageContextWithOptions(size, false, 0)
//        color.setFill()
//        UIRectFill(CGRect(x: 0, y: size.height - lineWidth, width: size.width, height: lineWidth))
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//        return image!
//    }
    
    func getImageWithColorPosition(color: UIColor, size: CGSize, lineSize: CGSize) -> UIImage {
            let rect = CGRect(x:0, y: 0, width: size.width, height: size.height)
            let rectLine = CGRect(x:0, y:size.height-lineSize.height,width: lineSize.width,height: lineSize.height)
            UIGraphicsBeginImageContextWithOptions(size, false, 0)
            UIColor.clear.setFill()
            UIRectFill(rect)
            color.setFill()
            UIRectFill(rectLine)
            let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
            return image
        }
}



extension Int {
    
      var autoSized : CGFloat{
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        let diagonalSize = sqrt((screenWidth * screenWidth) + (screenHeight * screenHeight))
        let percentage = CGFloat(self)/894*100 //987 is the diagonal size of iphone xs max
        return diagonalSize * percentage / 100
    }
}


extension UILabel {
    
    func setTextSpacingAndHeightBy(value: Double, lineHeight:CGFloat) {
      if let textString = self.text {
        let attributedString = NSMutableAttributedString(string: textString)
        attributedString.addAttribute(NSAttributedString.Key.kern, value: value, range: NSRange(location: 0, length: attributedString.length - 1))
        let style = NSMutableParagraphStyle()
        style.lineSpacing = lineHeight
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: style, range: NSMakeRange(0, attributedString.length))
        attributedText = attributedString
      }
    }
}

extension String {
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
}




extension UIColor {
    static var LightBlack:UIColor {
        return UIColor(red: 94/255, green: 116/255, blue: 137/255, alpha: 1)
    }
    
    static var BackgroundGrey:UIColor {
        return UIColor(red: 245/255, green: 249/255, blue: 250/255, alpha: 1)
    }
    
    static var pinkColor:UIColor {
        return UIColor(red: 247/255, green: 72/255, blue: 132/255, alpha: 1)
    }
    
    static var DarkGrey:UIColor {
        return UIColor(red: 97/255, green: 119/255, blue: 152/255, alpha: 1)
    }
    
    static var backGroundGrey:UIColor {
        return UIColor(red: 247/255, green: 250/255, blue: 253/255, alpha: 1)
    }
    static var veryLightGrey:UIColor {
        return UIColor(red: 94/255, green: 116/255, blue: 137/255, alpha: 0.5)
    }
    
    static var blueShade:UIColor {
        return UIColor(red: 71/255, green: 106/255, blue: 249/255, alpha: 1)
    }
    
    static var LightPink:UIColor {
        return UIColor(red: 237/255, green: 51/255, blue: 192/255, alpha: 1)
    }
    
    static var signupGreenColor:UIColor {
        return UIColor(red: 83/255, green: 212/255, blue: 197/255, alpha: 1)
    }
    
    static var LightBackgroundBlue:UIColor {
        return UIColor(red: 230/255, green: 242/255, blue: 252/255, alpha: 1)
    }
    
    static var LightWhite:UIColor {
        return UIColor(red: 254/255, green: 254/255, blue: 254/255, alpha: 1)
    }
    
    static var LightBrown:UIColor {
        return UIColor(red: 253/255, green: 242/255, blue: 240/255, alpha: 1)
    }
    
    static var progressViewBackgroundColor:UIColor {
        return UIColor(red: 239/255, green: 239/255, blue: 240/255, alpha: 1)
    }
    
    static var customRed:UIColor {
        return UIColor(red: 239/255, green: 110/255, blue: 112/255, alpha: 1)
    }
    
    static var randomColor: UIColor {
        return UIColor(red: .random(in: 0...1), green: .random(in: 0...1),blue: .random(in: 0...1), alpha: 1)
                        
        }
    
    static var veryLightBlack:UIColor {
        return UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.1)
    }
    
    static var buttonGreen:UIColor {
        return UIColor(red: 0/255, green: 219/255, blue: 197/255, alpha: 1)
    }
    
    static var profileHeaderBlue:UIColor {
        return UIColor(red: 137/255, green: 132/255, blue: 255/255, alpha: 1)
    }
    
    static var profileShadowBlue:UIColor {
        return UIColor(red: 120/255, green: 132/255, blue: 245/255, alpha: 1)

    }
    
    static var segmentControlGrey:UIColor {
        return UIColor(red: 234/255, green: 234/255, blue: 239/255, alpha: 1)

    }
    
    static var segmentControlGreen:UIColor {
        return UIColor(red: 74/255, green: 223/255, blue: 160/255, alpha: 1)

    }
    
    
    
}

