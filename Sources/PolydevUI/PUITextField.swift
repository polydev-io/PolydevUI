import UIKit

open class PUITextField: UITextField, PViewSizesProtocol {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    public func setup() {
        //object configuration:
    }
}
