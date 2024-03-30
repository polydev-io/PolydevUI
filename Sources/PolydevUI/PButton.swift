import UIKit

public class PButton: UIButton, PViewSizesProtocol {

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
