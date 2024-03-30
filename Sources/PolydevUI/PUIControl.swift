import UIKit

public final class PUIControl: UIControl, PViewSizesProtocol {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        //object configuration:
    }
}
