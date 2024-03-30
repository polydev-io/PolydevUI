import UIKit

public class PCollectionViewCell: UICollectionViewCell, PViewSizesProtocol {
    
    public static var id: String {
        return String(describing: self)
    }
    
    public class var size: CGSize {
        return CGSize(width: 0, height: 0)
    }

    private override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    internal required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        //object configuration:
    }
    
    public static func register(_ collectionView: UICollectionView) {
        collectionView.register(Self.self, forCellWithReuseIdentifier: Self.id)
    }
    
    public static func getCell(_ collectionView: UICollectionView, for indexPath: IndexPath) -> Self {
        return collectionView.dequeueReusableCell(withReuseIdentifier: Self.id, for: indexPath) as! Self
    }
}
