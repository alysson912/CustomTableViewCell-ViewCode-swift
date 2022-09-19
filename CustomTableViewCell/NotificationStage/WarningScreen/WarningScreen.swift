//
//  WarningScreen.swift
//  AvisosBFProject
//
//  Created by ALYSSON MENEZES on 16/09/22.
//

import Foundation
import UIKit

class WarningScreen : UIView {
    
    lazy var warningTitleLabel : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Avisos RastreioBF"
        label.textColor = .darkGray
        label.font = UIFont.boldSystemFont(ofSize: 25)
        
        return label
    }()
    
    lazy var tableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.register(ProductDetailTableViewCell.self, forCellReuseIdentifier: ProductDetailTableViewCell.identifier) // registrando a cell na table view
        return tableView
    }()

    func setupBackgroundColor(){
        backgroundColor = .white
    }
    
    override init(frame : CGRect) {
        super.init( frame : frame)
        self.setupBackgroundColor()
        self.addElement()
        self.setupConstraints()
    }
    
    public func configTableViewProtocols( delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }
    
    func addElement(){
   
        self.addSubview(self.warningTitleLabel)
        self.addSubview(self.tableView)
//        self.addSubview(self.collectionView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     func setupConstraints() {
        NSLayoutConstraint.activate([
        
            self.warningTitleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: -25),
            self.warningTitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.tableView.topAnchor.constraint(equalTo: self.warningTitleLabel.bottomAnchor),
            self.tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        
        ])
    }
    
}
