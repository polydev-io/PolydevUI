import UIKit

open class PCollectionViewCell: UICollectionViewCell, PViewSizesProtocol {
    
    public static var id: String {
        return String(describing: self)
    }
    
    open class var size: CGSize {
        return CGSize(width: 0, height: 0)
    }

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
    
    public static func register(_ collectionView: UICollectionView) {
        collectionView.register(Self.self, forCellWithReuseIdentifier: Self.id)
    }
    
    public static func getCell(_ collectionView: UICollectionView, for indexPath: IndexPath) -> Self {
        return collectionView.dequeueReusableCell(withReuseIdentifier: Self.id, for: indexPath) as! Self
    }
}
