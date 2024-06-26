import UIKit

open class PTableViewHeaderFooterView: UITableViewHeaderFooterView {

    public static var id: String {
        return String(describing: self)
    }

    open class var height: CGFloat {
        return 0
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setup()
    }

    open func setup() {
        //object configuration:
    }

    public static func register(_ tableView: UITableView) {
        tableView.register(Self.self, forHeaderFooterViewReuseIdentifier: Self.id)
    }

    public static func getView(_ tableView: UITableView) -> Self {
        return tableView.dequeueReusableHeaderFooterView(withIdentifier: Self.id) as! Self
    }
}
