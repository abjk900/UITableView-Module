//
//  TableViewModuleA.swift
//  UITableViewModule
//
//  Created by NIA on 2018. 10. 2..
//  Copyright © 2018년 NIA. All rights reserved.
//

import UIKit
//
// MARK :- TableViewController : UITableViewDaatasource, UITableViewDelegate 포함 하므로 따로 수퍼클레스를 넣을 필요 없다. 뷰 자체가 tableView
//
class TableViewModuleA: UITableViewController {
    
    //CellId
    //* 각 셀은 고유 id 가 있어야 함
    private let headerId = "headerId"
    private let footerId = "footerId"
    private let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "TableView Demo"
        view.backgroundColor = .white
        setupTableView()
    }
    
    //1. tableCell, tableheader, tablefooter load on tableView
    //1. tableView 에 headr, cell, foother 로드
    func setupTableView() {
        tableView.backgroundColor = .lightGray
        tableView.register(CustomTableViewHeader.self, forHeaderFooterViewReuseIdentifier: headerId)
        tableView.register(CustomTableViewFooter.self, forHeaderFooterViewReuseIdentifier: footerId)
        tableView.register(CustomTableCell.self, forCellReuseIdentifier: cellId)
    }
    
    //
    // MARK :- HEADER
    //
    
    // HEADER height
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 150
    }
    
    // HEADER cell
    // HEADER 에 데이터를 넘겨주거나 가벼운 데이터 입력
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: headerId) as! CustomTableViewHeader
        return header
    }
    
    //
    // MARK :- FOOTER
    //
    
    // FOOTER hieght
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 150
    }
    
    // FOOTER cell
    // FOOTER 에 데이터를 넘겨주거나 가벼운 데이터 입력
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: footerId) as! CustomTableViewFooter
        return footer
    }
    

    //
    // MARK :- CELL
    //
    
    // number of cell
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    // CELL hieght
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 150
    }
    
    // CELL
    // CELL 에 데이터를 넘겨주거나 가벼운 데이터 입력
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CustomTableCell
        return cell
    }
}


