

import UIKit
import Elements

class ManageAccountViewController : UIViewController {
    
    lazy var image : BaseUIImageView = {
        let iv = BaseUIImageView()
        iv.image = UIImage(named: "profilePic1")
        iv.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return iv
    }()
    
    lazy var userNameLabel : BaseUILabel = {
        let label = BaseUILabel()
        label.text = "User Name"
        label.backgroundColor = UIColor.gray
        return label
    }()
    
    lazy var userActualNameLabel : BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Jecica zed"
//        label.backgroundColor = UIColor.gray
        return label
    }()

    
    lazy var PhoneNumberLabel : BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Phone Number"
        label.backgroundColor = UIColor.gray
        return label
    }()
    
    
    lazy var PhoneAcutualNumberLabel : BaseUILabel = {
        let label = BaseUILabel()
        label.text = "+123456789"
//        label.backgroundColor = UIColor.gray
        return label
    }()
    
    lazy var LocationLabel : BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Location"
        label.backgroundColor = UIColor(hexString: "#F6F6F6")
        return label
    }()
    
    lazy var ActualLocationLabel : BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Canada"
//        label.backgroundColor = UIColor.gray
        return label
    }()
    
    lazy var tableStack : VStack = {
        let tableStack = VStack()
        tableStack.addArrangedSubview(userNameLabel)
        tableStack.addArrangedSubview(userActualNameLabel)
        tableStack.addArrangedSubview(PhoneNumberLabel)
        tableStack.addArrangedSubview(PhoneAcutualNumberLabel)
        tableStack.addArrangedSubview(LocationLabel)
        tableStack.addArrangedSubview(ActualLocationLabel)
//        tableStack.heightAnchor.constraint(equalToConstant:400).isActive = true
        tableStack.widthAnchor.constraint(equalToConstant:300).isActive = true
        tableStack.spacing = 17
        return tableStack
    }()
    
//    lazy var stack : VStack = {
//
//        let stack =  VStack()
//        stack.addArrangedSubview(image)
//        stack.addArrangedSubview(tableStack)
//        stack.alignment = .center
//        return stack
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        view.addSubview(image)
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -120),
            image.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            image.heightAnchor.constraint(equalToConstant: 160),
            image.widthAnchor.constraint(equalToConstant: 160)
            
        ])
        
        view.addSubview(tableStack)
        NSLayoutConstraint.activate([
            tableStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tableStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
//            tableStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        
        
    }
    
}
