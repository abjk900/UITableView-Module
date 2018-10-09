//
//  TableViewModuleB.swift
//  UITableViewModule
//
//  Created by NIA on 2018. 10. 2..
//  Copyright © 2018년 NIA. All rights reserved.
//

import UIKit
//
// MARK :- ViewController viewController 에 TableView 를 추가한 상황
//
class TableViewModuleB: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //* 각 셀은 고유 id 가 있어야 함
    private let headerId = "headerId"
    private let footerId = "footerId"
    private let cellId = "cellId"
    
    //1. talbleView 정의
    lazy var tableView: UITableView = {
        let tv = UITableView(frame: .zero, style: .plain)
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .lightGray
        //delegate 와 datasource 를 이곳이서 이어준다.
        tv.delegate = self
        tv.dataSource = self
        //header, cell, foother 을 tableview 에 등록해주어야 한다.
        tv.register(CustomTableViewHeader.self, forHeaderFooterViewReuseIdentifier: self.headerId)
        tv.register(CustomTableViewFooter.self, forHeaderFooterViewReuseIdentifier: self.footerId)
        tv.register(CustomTableCell.self, forCellReuseIdentifier: self.cellId)
        return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "TableView Demo"
        view.backgroundColor = .white
        //2. talbleView 로드
        view.addSubview(tableView)
        setupAutoLayout()
    }
    
    func setupAutoLayout() {
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    //
    // MARK :- HEADER 에 관한
    //
    
    // HEADER 높이
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 150
    }
    // HEADER 에 데이터를 넘겨주거나 가벼운 데이터 입력
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: headerId) as! CustomTableViewHeader
        return header
    }
    
    //
    // MARK :- FOOTER 에 관한
    //
    
    // FOOTER 높이
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 150
    }
    
    // FOOTER 에 데이터를 넘겨주거나 가벼운 데이터 입력
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: footerId) as! CustomTableViewFooter
        return footer
    }
    
    //
    // MARK :- CELL 에 관란
    //
    
    // CELL 의 갯수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    // CELL 의 높이
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 150
    }
    
    // CELL 에 데이터를 넘겨주거나 가벼운 데이터 입력
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CustomTableCell
        return cell
    }
}
