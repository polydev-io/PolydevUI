import UIKit


class PView: UIView, PViewSizesProtocol {
    
    var isScalable = false

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        //object configuration:
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        animate(isTouching: true)
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        animate(isTouching: false)
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
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
