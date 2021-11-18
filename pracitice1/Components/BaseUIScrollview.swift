//
//  BaseUIScrollview.swift
//  pracitice1
//
//  Created by Apple New on 2021-11-17.
//

import UIKit

class BaseUIScrollView: UIScrollView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }

    open func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
