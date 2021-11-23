//
//  PlaceCell.swift
//  pracitice1
//
//  Created by Apple New on 2021-11-08.
//

import UIKit
import Elements

class PlaceCell : UICollectionViewCell{
    
    lazy var imageView = BaseUIImageView()
    
    
    lazy var nameLabel : BaseUILabel = {
        
        let label = BaseUILabel()
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        label.textColor = UIColor.white
        return label
        
    }()
    
    
    
    

    override init(frame: CGRect) {
        super.init(frame:frame)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpView()
    }
    
    
    
    
    
    func setUpView(){
        contentView.addSubview(imageView)
        imageView.frame = contentView.frame
        
        imageView.addSubview(nameLabel)
        NSLayoutConstraint.activate([
        
            nameLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 20),
            nameLabel.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 20)
        
        ])
         
    }
    
}
