//
//  BaseUIView.swift
//  pracitice1
//
//  Created by Apple New on 2021-11-05.
//

import UIKit

class BaseUIView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
    }
}
