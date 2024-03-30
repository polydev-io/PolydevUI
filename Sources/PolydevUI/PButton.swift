import UIKit

open class PButton: UIButton, PViewSizesProtocol {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    open func setup() {
        //object configuration:
    }
}
