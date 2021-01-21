//  Copyright © 2020 Swisscom. All rights reserved.

import UIKit

/// TODO
public struct RibbonConfiguration: Hashable {

    /// TODO
    public let numberOfRows: Int

    /// TODO
    public let sectionInsets: UIEdgeInsets

    /// TODO
    public let itemSize: CGSize

    /// TODO
    public let interItemSpacing: CGFloat

    /// TODO
    public let interGroupSpacing: CGFloat
    
    /// TODO
    public let headerInsets: UIEdgeInsets
    
    /// TODO
    public let footerInsets: UIEdgeInsets

    /// TODO
    public init(
        numberOfRows: Int = 1,
        itemSize: CGSize = .init(width: 80.0, height: 80.0),
        interItemSpacing: CGFloat = 6.0,
        interGroupSpacing: CGFloat = 6.0,
        sectionInset: UIEdgeInsets = .zero,
        headerInsets: UIEdgeInsets = .init(top: 4, left: 15, bottom: 4, right: 15),
        footerInsets: UIEdgeInsets = .init(top: 4, left: 15, bottom: 4, right: 15)
    ) {
        self.numberOfRows = numberOfRows
        self.itemSize = itemSize
        self.interItemSpacing = interItemSpacing
        self.interGroupSpacing = interGroupSpacing
        self.sectionInsets = sectionInset
        self.headerInsets = headerInsets
        self.footerInsets = footerInsets
    }

    /// TODO
    public static let `default` = RibbonConfiguration()

    /// TODO
    public func calculatedSectionHeight() -> CGFloat {
        return RibbonConfiguration.sectionHeight(
            numberOfRows: numberOfRows,
            itemSize: itemSize,
            interItemSpacing: interItemSpacing
        )
    }

    /// TODO
    public static func sectionHeight(numberOfRows rows: Int, itemSize: CGSize, interItemSpacing: CGFloat) -> CGFloat {
        return (CGFloat(rows) * itemSize.height) + max(interItemSpacing * CGFloat(rows - 1), 0)
    }
}
