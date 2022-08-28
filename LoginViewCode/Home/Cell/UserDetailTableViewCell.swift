//
//  UserDetailTableViewCell.swift
//  LoginViewCode
//
//  Created by Alex on 27/08/22.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {
    
    lazy var userDetailView: UserDetailView = {
        let view = UserDetailView()
        return view
    }()
    
    static let identifier: String = "UserDetailTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configSuperView()
        self.configNameLabelConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configSuperView() {
        self.contentView.addSubview(self.userDetailView)
    }
    
    public func setUpCell(data: DataUser) {
        self.userDetailView.nameLabel.text = data.name
         self.userDetailView.userImageView.image = UIImage(named: data.nameImage)
    }
    
    private func configNameLabelConstraint() {
        self.userDetailView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
}
