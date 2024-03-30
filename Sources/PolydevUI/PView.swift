import UIKit


public final class PView: UIView, PViewSizesProtocol {
    
    public var isScalable = false

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        //object configuration:
        
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        animate(isTouching: true)
    }

    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        animate(isTouching: false)
    }

    public override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        animate(isTouching: false)
    }

    private func animate(isTouching: Bool) {
        if isScalable {
            UIView.animate(withDuration: 0.2) {
                self.transform = isTouching ? CGAffineTransform(scaleX: 0.97, y: 0.97) : .identity
            }
        }
    }
}
