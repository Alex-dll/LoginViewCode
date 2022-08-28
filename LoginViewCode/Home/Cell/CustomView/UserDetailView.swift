//
//  UserDetailView.swift
//  LoginViewCode
//
//  Created by Alex on 28/08/22.
//

import UIKit

class UserDetailView: UIView {
    
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSubView()
        
        self.configTableViewConstraint()
        self.configNameLabelConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configSubView() {
        self.addSubview(self.userImageView)
        self.addSubview(self.nameLabel)
    }
    
    private func configTableViewConstraint() {
        self.userImageView.snp.makeConstraints { (make) in
            make.centerY.leading.equalToSuperview()
            make.height.width.equalTo(80)
        }
    }
    
    private func configNameLabelConstraint() {
        self.nameLabel.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.leading.equalTo(self.userImageView.snp.trailing).offset(20)
        }
    }

}
