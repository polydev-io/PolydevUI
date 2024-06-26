import UIKit

open class PTableViewCell: UITableViewCell, PViewSizesProtocol {

    public static var id: String {
        return String(describing: self)
    }

    open class var height: CGFloat {
        return 0
    }

    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    open func setup() {
        //object configuration:
    }

    public static func register(_ tableView: UITableView) {
        tableView.register(Self.self, forCellReuseIdentifier: Self.id)
    }

    public static func getCell(_ tableView: UITableView, for indexPath: IndexPath) -> Self {
        return tableView.dequeueReusableCell(withIdentifier: Self.id, for: indexPath) as! Self
    }
}
