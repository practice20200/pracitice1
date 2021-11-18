//
//  PhotoCell.swift
//  pracitice1
//
//  Created by Apple New on 2021-11-17.
//
import UIKit
class PhotoCell: UICollectionViewCell {
    
    lazy var imageView = BaseUIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    
    func setupView() {
        contentView.addSubview(imageView)
        imageView.frame = contentView.frame
    }
    
}
