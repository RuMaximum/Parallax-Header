//
//  TableView.swift
//  Parallax Header
//
//  Created by Maxim Dvortsov on 03.12.2017.
//  Copyright © 2017 Maxim Dvortsov. All rights reserved.
//

import UIKit

class TableView: UITableView {

    var height: NSLayoutConstraint?
    var bottom: NSLayoutConstraint?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        guard let header = tableHeaderView else { return }
        if let imageView = header.subviews.first as? UIImageView {
            height = imageView.constraints.filter{ $0.identifier == "height" }.first
            bottom = header.constraints.filter{ $0.identifier == "bottom" }.first
        }
        let offsetY = -contentOffset.y
        print(offsetY)
        bottom?.constant = offsetY >= 0 ? 0 : offsetY / 2
        height?.constant = max(header.bounds.height, header.bounds.height + offsetY)
        
        header.clipsToBounds = offsetY <= 0
    }

}
