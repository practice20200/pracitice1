//
//  WelcomeViewController.swift
//  pracitice1
//
//  Created by Apple New on 2021-10-26.
//

import UIKit
import Elements
class WelcomeViewController: UIViewController{
    
    
    //imageView
    lazy var imageView : BaseUIImageView = {
        
        let iv = BaseUIImageView()
        iv.image = UIImage(named: "logo")
        iv.backgroundColor = UIColor.white
        iv.widthAnchor.constraint(equalToConstant:375).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 250).isActive = true
        return iv
        
    }()

    //centerLables---------------
    lazy var titleLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Plan your trips"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
                label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()
        
    lazy var descriptionLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "For the best trip, simply specify your plan."
        label.textColor = UIColor(hexString: "#B3B5B9")
        label.numberOfLines = 2
        label.textAlignment = .center
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
    
    
    //Button-----------------
    lazy var loginButton: BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("log in", for: .normal)
        button.backgroundColor = UIColor.green
        button.backgroundColor = UIColor(hexString: "#58CFC2")
        button.layer.cornerRadius = 25
        button.layer.shadowOpacity = 0.5
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.addTarget(self, action: #selector(loginTagged), for: .touchUpInside)
        return button
        
    }()
    
    lazy var signUpButton: BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(UIColor(hexString: "#8C8A8D"), for: .normal)
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = 25
        button.layer.shadowOpacity = 0.5
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.addTarget(self, action: #selector(signUpTagged), for: .touchUpInside)
        return button
    }()
    
    //---------TEMPOLARY---------
                        lazy var animationTest : BaseUIButton = {
                            let button = BaseUIButton()
                            button.setTitle("anime", for: .normal)
                            button.setTitleColor(UIColor.black, for: .normal)
                            button.addTarget(self, action: #selector(animationTestHandler), for: .touchUpInside)
                            return button
                        }()
    
                        lazy var chartTest : BaseUIButton = {
                            let button = BaseUIButton()
                            button.setTitle("chart", for: .normal)
                            button.setTitleColor(UIColor.black, for: .normal)
                            button.addTarget(self, action: #selector(chartTestHandler), for: .touchUpInside)
                            return button
                        }()
    
                        lazy var friendsSortedListTest : BaseUIButton = {
                            let button = BaseUIButton()
                            button.setTitle("frie_Sorted", for: .normal)
                            button.setTitleColor(UIColor.black, for: .normal)
                            button.addTarget(self, action: #selector(friendsSortedListTestHandler), for: .touchUpInside)
                            return button
                        }()
    
                        lazy var tempStack : HStack = {
                            let stack = HStack()
                            stack.addArrangedSubview(animationTest)
                            stack.addArrangedSubview(chartTest)
                            stack.addArrangedSubview(friendsSortedListTest)
                            stack.spacing = 5
                            stack.distribution = .equalCentering
                            return stack
                        }()
    //---------TEMPOLARY---------
    
    
    
    lazy var buttonStack : VStack = {
       let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(loginButton)
        stack.addArrangedSubview(signUpButton)
        stack.addArrangedSubview(tempStack)
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
    
    
    
    
    //---------------
    lazy var latterPart : VStack = {
       let stack = VStack()
        stack.spacing = 50
        stack.addArrangedSubview(labelsStack)
        stack.addArrangedSubview(buttonStack)
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
    
    
    
    
//----whole Layout--
    lazy var contentStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(imageView)
        stack.addArrangedSubview(latterPart)
        stack.spacing = 100
        stack.alignment = .center
        stack.isLayoutMarginsRelativeArrangement = true
        stack.layoutMargins = UIEdgeInsets(top: 40, left: 10, bottom: 40, right: 10)
        return stack
    }()
    
    
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = "Welcome"

        
//----------------------------------------------------
//        view.addSubview(contentStack)
//        NSLayoutConstraint.activate([
//            contentStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            contentStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            contentStack.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            contentStack.topAnchor.constraint(equalTo: view.topAnchor),
//        ])
        
//        view.addSubview(imageView)
////        navigationController?.navigationBar.backgroundColor = UIColor.blue
//
//        NSLayoutConstraint.activate([
//
//            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
//            imageView.heightAnchor.constraint(equalToConstant: 200)
//
//        ])
//----------------------------------------------------

        
        view.addSubview(contentStack)
        NSLayoutConstraint.activate([

            contentStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contentStack.centerYAnchor.constraint(equalTo: view.centerYAnchor)

        ])

    }
    //----tempolary-----
                        @objc func animationTestHandler(){
                            let testVC = AnimationViewController()
                            self.navigationController?.pushViewController(testVC, animated: true)
                        }
                        
                        @objc func chartTestHandler(){
                            let testVC = ChartViewController()
                            self.navigationController?.pushViewController(testVC, animated: true)
                        }
                        
                        @objc func friendsSortedListTestHandler(){
                            let testVC = FriendsSortedListViewController()
                            self.navigationController?.pushViewController(testVC, animated: true)
                        }
    //----tempolary-----//
    
    
    
    
    @objc func signUpTagged(){
        print("signup: tapped")
        let signUpViewController = SignUpViewController()
        self.navigationController?.pushViewController(signUpViewController, animated: true)
    }
    
    @objc func loginTagged(){
        print("login: tapped")
        let loginViewController = LoginViewController()
        self.navigationController?.pushViewController(loginViewController, animated: true)
//        let friendsViewController = FriendsViewController()
//        self.navigationController?.pushViewController(friendsViewController, animated: true)
    }
     
}
