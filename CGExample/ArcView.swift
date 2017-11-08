import UIKit

@IBDesignable
class ArcView: UIView {

    @IBInspectable var arcViewBackgroundColor: UIColor = UIColor.blue
    @IBInspectable var lineColor: UIColor = UIColor.black
    @IBInspectable var angle: CGFloat = .pi
 
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        arcViewBackgroundColor.setFill()
        UIRectFill(rect)
        
        let path = UIBezierPath()
        let center = CGPoint(x: rect.width/2, y: rect.height - 20)
        path.move(to: center)
        path.addArc(withCenter: center, radius: rect.width/2 - 50 , startAngle: 0, endAngle: .pi * (angle / 2), clockwise: false)
        path.lineWidth = 3
        lineColor.setStroke()
        path.close()
        path.stroke()
        
        
        
    }


}
