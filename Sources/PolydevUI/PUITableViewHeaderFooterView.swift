import UIKit

class PTableViewHeaderFooterView: UITableViewHeaderFooterView {

    static var id: String {
        return String(describing: self)
    }

    class var height: CGFloat {
        return 0
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setup()
    }

    func setup() {
        //object configuration:
    }

    static func register(_ tableView: UITableView) {
        tableView.register(Self.self, forHeaderFooterViewReuseIdentifier: Self.id)
    }

    static func getView(_ tableView: UITableView) -> Self {
        return tableView.dequeueReusableHeaderFooterView(withIdentifier: Self.id) as! Self
    }
}
