//
//  File.swift
//  UITableViewModule
//
//  Created by NIA on 2018. 10. 2..
//  Copyright © 2018년 NIA. All rights reserved.
//

import UIKit

//
// MARK :- Header 커스텀
//
class CustomTableViewHeader: UITableViewHeaderFooterView {
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .orange
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
