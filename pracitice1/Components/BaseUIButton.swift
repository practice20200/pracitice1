//
//  baseUIButton.swift
//  pracitice1
//
//  Created by Apple New on 2021-10-27.
//
import UIKit

class BaseUIButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
    }
}
