//
//  VScrollableView.swift
//  pracitice1
//
//  Created by Apple New on 2021-11-17.
//
import UIKit
class VScrollableView: ScrollableView {
    override func setupView() {
        super.setupView()

        NSLayoutConstraint.activate([
            contentWrapper.widthAnchor.constraint(equalTo: widthAnchor),
        ])

        alwaysBounceVertical = true
    }
}
