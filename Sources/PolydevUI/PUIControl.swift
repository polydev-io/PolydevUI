import UIKit

open class PUIControl: UIControl, PViewSizesProtocol {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    public func setup() {
        //object configuration:
    }
}
