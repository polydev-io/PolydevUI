import UIKit

public class PTableViewCell: UITableViewCell, PViewSizesProtocol {

    public static var id: String {
        return String(describing: self)
    }

    public class var height: CGFloat {
        return 0
    }

    private override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }

    internal required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        //object configuration:
    }

    public static func register(_ tableView: UITableView) {
        tableView.register(Self.self, forCellReuseIdentifier: Self.id)
    }

    public static func getCell(_ tableView: UITableView, for indexPath: IndexPath) -> Self {
        return tableView.dequeueReusableCell(withIdentifier: Self.id, for: indexPath) as! Self
    }
}
