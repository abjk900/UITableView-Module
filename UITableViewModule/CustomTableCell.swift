//
//  CustomTableViewCell.swift
//  UITableViewModule
//
//  Created by NIA on 2018. 10. 2..
//  Copyright © 2018년 NIA. All rights reserved.
//

import UIKit

//
// MARK :- CELL 커스텀
//
class CustomTableCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
