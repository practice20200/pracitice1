//
//  FriendRandomCell.swift
//  pracitice1
//
//  Created by Apple New on 2021-11-02.
//

//
//  FriendRandomCell.swift
//  TravelApp
//
//  Created by Apple New on 2021-11-01.
//

import UIKit
import Elements

class FriendRandomCell: UITableViewCell{

    lazy var labelA_Z : BaseUILabel = {
        let label = BaseUILabel()
        label.textColor = UIColor.red
        return label
    }()
    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUPView()}
    
        required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    
    
    func setUPView(){
        contentView.addSubview(labelA_Z)
        NSLayoutConstraint.activate([
        
            labelA_Z.leadingAnchor.constraint(equalTo: leadingAnchor),
            labelA_Z.trailingAnchor.constraint(equalTo: trailingAnchor),
            labelA_Z.topAnchor.constraint(equalTo: topAnchor),
            labelA_Z.bottomAnchor.constraint(equalTo: bottomAnchor)
        
        ])
        
    }
}
