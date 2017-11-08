import UIKit

@IBDesignable
class NumberView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    @IBInspectable var lineColor = UIColor.red
    @IBInspectable var filColor = UIColor.orange
    @IBInspectable var lineWidth:CGFloat = 3
    override func draw(_ rect: CGRect) {
        // Drawing code
        let insetRect = rect.insetBy(dx: lineWidth/2, dy: lineWidth/2)
        let path = UIBezierPath(ovalIn: insetRect)
        filColor.setFill()
        lineColor.setStroke()
        path.fill()
        path.lineWidth = lineWidth
        path.stroke()
    }
 

}
