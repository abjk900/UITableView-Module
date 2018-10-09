//
//  CustomTableViewFooter.swift
//  UITableViewModule
//
//  Created by NIA on 2018. 10. 2..
//  Copyright © 2018년 NIA. All rights reserved.
//

import UIKit

//
// MARK :- FOOTER 커스텀
//
class CustomTableViewFooter: UITableViewHeaderFooterView {
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .green
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
