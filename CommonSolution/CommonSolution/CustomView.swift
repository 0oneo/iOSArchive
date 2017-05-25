//
//  CustomView.swift
//  Demo
//
//  Created by 0oneo on 18/05/2017.
//  Copyright © 2017 0oneo.me. All rights reserved.
//

import UIKit

private let EdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 20)

class CustomView: UIView {
    
    var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    func commonInit() {        
        addContentView()
        addBadgeView()
    }
    
    override var alignmentRectInsets: UIEdgeInsets {
        return EdgeInsets
    }
    
    private func addContentView() {
        let contentView = UIView()
        contentView.backgroundColor = UIColor.blue
        self.addSubview(contentView)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    private func addBadgeView() {
        label = UILabel()
        label.backgroundColor = UIColor.red
        label.text = "3"
        label.textColor = UIColor.white
        label.adjustsFontSizeToFitWidth = true
        label.font = UIFont.systemFont(ofSize: 13)
        label.layer.cornerRadius = 8.0
        label.layer.masksToBounds = true
        label.textAlignment = .center
        self.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: self.topAnchor).isActive = true
        label.widthAnchor.constraint(greaterThanOrEqualToConstant: 16).isActive = true
        label.widthAnchor.constraint(lessThanOrEqualToConstant: 30).isActive = true
        
    }
}
