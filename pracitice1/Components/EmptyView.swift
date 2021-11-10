//
//  EmptyView.swift
//  pracitice1
//
//  Created by Apple New on 2021-11-05.
//

import UIKit

class EmptyView: BaseUIView {
    
    override var intrinsicContentSize: CGSize {
        CGSize.zero
    }
    
    override func setupView() {
        super.setupView()
        
        setContentCompressionResistancePriority(.init(1), for: .horizontal)
        setContentCompressionResistancePriority(.init(1), for: .vertical)
        
        setContentHuggingPriority(.init(1), for: .horizontal)
        setContentHuggingPriority(.init(1), for: .vertical)
    }
    
}
