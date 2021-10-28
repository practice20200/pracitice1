//
//  WelcomeViewController.swift
//  pracitice1
//
//  Created by Apple New on 2021-10-26.
//

import UIKit
class WelcomeViewController: UIViewController{
    
    lazy var imageView : BaseUIImageView = {
        
        let iv = BaseUIImageView()
        iv.image = UIImage(named: "logo")
//        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.backgroundColor = UIColor.white
        return iv
        
    }()
    
    lazy var titleLabel: BaseUILabel = {
        
        let label = BaseUILabel()
        label.text = "Plan your trips"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
//        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
        
    lazy var descriptionLabel: BaseUILabel = {
        
        let label = BaseUILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "For the best trip, simply specify your plan."
//        label.textColor = UIColor(hexString: "#B3B5B9")
        return label
        
    }()
    
    
    lazy var labelsStack: VStack = {
        
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(descriptionLabel)
        stack.alignment = .center
        return stack
        
    }()
    
    lazy var loginButton: BaseUIButton = {
        
        let button = BaseUIButton()
        button.setTitle("log in", for: .normal)
        button.backgroundColor = UIColor.green
        button.layer.cornerRadius = 25
        button.layer.shadowOpacity = 0.5
        return button
        
    }()
    
    lazy var signUpButton: BaseUIButton = {
        
        let button = BaseUIButton()
        button.setTitle("Sign up", for: .normal)
        button.backgroundColor = UIColor.blue
        button.layer.cornerRadius = 25
        button.layer.shadowOpacity = 0.5
        return button
        
    }()
    
    lazy var buttonStack : VStack = {
        
       let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(loginButton)
        stack.addArrangedSubview(signUpButton)
        return stack
        
    }()
    
    override func viewDidLoad(){
        
        
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = "Welcome View Controller"
        view.addSubview(imageView)
//        navigationController?.navigationBar.backgroundColor = UIColor.blue
        
        NSLayoutConstraint.activate([
            
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 200)
            
        ])
        
        view.addSubview(labelsStack)
        NSLayoutConstraint.activate([
            
            labelsStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelsStack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            
        ])
        
        view.addSubview(buttonStack)
        NSLayoutConstraint.activate([
            
            buttonStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            buttonStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
        ])
    }
    
}
