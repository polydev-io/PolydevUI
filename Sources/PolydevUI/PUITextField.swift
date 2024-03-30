import UIKit

open class PUITextField: UITextField, PViewSizesProtocol {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    open func setup() {
        //object configuration:
    }
}
