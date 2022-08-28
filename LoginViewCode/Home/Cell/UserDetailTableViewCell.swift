//
//  UserDetailTableViewCell.swift
//  LoginViewCode
//
//  Created by Alex on 27/08/22.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {
    
    static let identifier: String = "UserDetailTableViewCell"
    
    lazy var userImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configSuperView()
        
        //------------------------------
        self.configTableViewConstraint()
        self.configNameLabelConstraint()
        //------------------------------
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configSuperView() {
        self.contentView.addSubview(self.userImageView)
        self.contentView.addSubview(self.nameLabel)
    }
    
    public func setUpCell(data: DataUser) {
        self.nameLabel.text = data.name
        self.userImageView.image = UIImage(named: data.nameImage)
    }
    
    private func configTableViewConstraint() {
        self.userImageView.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview()
            make.height.width.equalTo(80)
        }
    }
    
    private func configNameLabelConstraint() {
        self.nameLabel.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.leading.equalTo(self.userImageView.snp.trailing).offset(20)
            make.height.width.equalTo(80)
        }
    }
}
