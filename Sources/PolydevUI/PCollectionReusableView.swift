import UIKit

open class PCollectionReusableView: UICollectionReusableView, PViewSizesProtocol  {
    public static var id: String {
        return String(describing: self)
    }

    public class var elementKind: String {
        return UICollectionView.elementKindSectionHeader
    }
    
    public static var size: CGSize {
        return CGSize(width: 0, height: height)
    }
    
    open class var height: CGFloat {
        return 0
    }
    
    private override init(frame: CGRect) {
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
        collectionView.register(Self.self, forSupplementaryViewOfKind: Self.elementKind, withReuseIdentifier: Self.id)
    }
    
    public static func getView(_ collectionView: UICollectionView, for indexPath: IndexPath) -> Self {
        return collectionView.dequeueReusableSupplementaryView(ofKind: Self.elementKind, withReuseIdentifier: Self.id, for: indexPath) as! Self
    }
}
