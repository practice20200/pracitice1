

import UIKit

class ProfileViewController: UIViewController {
    
//    let navigationBar = TabBarViewController()
    
    lazy var image : BaseUIImageView = {
        let iv = BaseUIImageView()
        iv.image = UIImage(named: "profilePic1")
//        iv.heightAnchor.constraint(equalToConstant:160).isActive = true
//        iv.widthAnchor.constraint(equalToConstant:160).isActive = true
        iv.layer.cornerRadius = 80
        return iv
    }()
    
    lazy var myAccountLabel : BaseUILabel = {
            let label = BaseUILabel()
            label.text = "My Account "
            label.textColor = UIColor.black
            return label
    }()
  
    lazy var notificationLabel : BaseUILabel = {
           let label = BaseUILabel()
           label.text = "Notification"
           
   //        label.backgroundColor = UIColor.gray
           return label
       }()
    
    lazy var moreLabel : BaseUILabel = {
            let label = BaseUILabel()
            label.text = "More"
            label.textColor = UIColor.black
            return label
    }()
    
    
    
    
    lazy var manageProfilebutton = ProfileItemView()
    lazy var paymentItem = ProfileItemView()
    lazy var notificationItem = ProfileItemForNotificationView()
    lazy var promotionalNotification = ProfileItemForNotificationView()
    lazy var friendsItem = ProfileItemView()
    lazy var logoutItem = ProfileItemView()
    
    
    lazy var profileMenu : VStack = {
        let stack = VStack()
        stack.addArrangedSubview(myAccountLabel)
        stack.addArrangedSubview(manageProfilebutton)
        stack.addArrangedSubview(paymentItem)
        stack.addArrangedSubview(notificationLabel)
        stack.addArrangedSubview(notificationItem)
        stack.addArrangedSubview(promotionalNotification)
        stack.addArrangedSubview(moreLabel)
        stack.addArrangedSubview(friendsItem)
        stack.addArrangedSubview(logoutItem)
        stack.heightAnchor.constraint(equalToConstant:400).isActive = true
        stack.widthAnchor.constraint(equalToConstant:300).isActive = true
        stack.isLayoutMarginsRelativeArrangement = true
        stack.layoutMargins = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        stack.spacing = 20
        stack.layer.shadowOpacity = 1.0
        stack.layer.shadowColor = UIColor.lightGray.cgColor
        stack.backgroundColor = UIColor.white
        stack.layer.cornerRadius = 25
        stack.alignment = .leading
        return stack
    }()
            
    

    
//    lazy var contentStack: VStack = {
//        let stack = VStack()
//        stack.addArrangedSubview(image)
//        stack.addArrangedSubview(profileMenu)
////        stack.
//        stack.spacing = 20
//        return stack
//    }()
    
//    lazy var mmoreLabel : BaseUILabel = {
//            let label = BaseUILabel()
//            label.text = "More"
//            label.textColor = UIColor.black
//            return label
//        }()
//
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.parent?.title = "Profile"
        view.backgroundColor = UIColor.white

        view.addSubview(image)
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -120),
            image.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            image.heightAnchor.constraint(equalToConstant: 160),
            image.widthAnchor.constraint(equalToConstant: 160)
            
        ])
        
        view.addSubview(profileMenu)

        NSLayoutConstraint.activate([
            profileMenu.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileMenu.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
        ])
        
        manageProfilebutton.updateView(title: "Manageprofile", imageName: "manageAccountLogo")
        paymentItem.updateView(title: "Payment", imageName: "paymentLogo")
        notificationItem.updateView(title: "Notification", imageName: "notificationLogo")
        promotionalNotification.updateView(title: "Promotional Notification", imageName: "notificationLogo")
        friendsItem.updateView(title: "Friends", imageName: "friendLogo")
        logoutItem.updateView(title: "Logout", imageName: "logoutLogo")
        
        logoutItem.button.addTarget(self, action: #selector(logoutTapped), for: .touchUpInside)
        friendsItem.button.addTarget(self, action: #selector(friendsTapped), for: .touchUpInside)
        manageProfilebutton.button.addTarget(self, action: #selector(accountTapped), for: .touchUpInside)
    }
    
    @objc func accountTapped() {
        let manageAccountVC = ManageAccountViewController()
        self.navigationController?.pushViewController(manageAccountVC, animated: true)
    }
    @objc func friendsTapped(){
        let friendsVC = FriendsListViewController()
        self.navigationController?.pushViewController(friendsVC, animated: true)
    }
    
    @objc func logoutTapped(){
        let alertViewController = UIAlertController(title: "log out", message: "Do you want to logout from the app?", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let yesAction = UIAlertAction(title: "Yes", style: .default){ action in LocalDataManager.logout()
            let WelcomeVC = WelcomeViewController()
            self.navigationController?.pushViewController(WelcomeVC, animated: true)
//            AppRouter.navigate(to: WelcomeVC)
        }
        
        alertViewController.addAction(cancelAction)
        alertViewController.addAction(yesAction)
        
        self.navigationController?.present(alertViewController, animated: true, completion: nil)
    }
    
    
    
}




















//
//  ProfileViewController.swift
//  TravelApp
//
//  Created by Mostafa Davoodi on 10/25/21.
//

//import UIKit
//
//class ProfileViewController: UIViewController {
//
//    lazy var friendsButton: BaseUIButton = {
//        let button = BaseUIButton()
//        button.setTitle("See Friends", for: .normal)
//        button.addTarget(self, action: #selector(friendsTapped), for: .touchUpInside)
//        button.backgroundColor = .red
//        return button
//    }()
//
//    lazy var contentStack: VStack = {
//        let stack = VStack()
//        stack.addArrangedSubview(friendsButton)
//        stack.alignment = .center
//        return stack
//    }()
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        title = "Profile"
//        view.backgroundColor = UIColor.white
//
//        view.addSubview(contentStack)
//
//        NSLayoutConstraint.activate([
//            contentStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            contentStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//        ])
//    }
//
//    @objc func friendsTapped() {
//        let friendsVC = FriendsViewController()
//        self.navigationController?.pushViewController(friendsVC, animated: true)
//    }
//}
