

import UIKit
import Elements

class LoginForgotViewController : UITableViewController{
    
    //--logo---
    lazy var logo: BaseUIImageView = {
        let iv = BaseUIImageView()
        iv.image = UIImage(named: "appLogo")
        return iv
    }()
    
    lazy var titleLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Karen Trip"
        label.textColor = UIColor(hexString: "#42588B")
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
//        return label
        return label
    }()
    
    lazy var logoStack : VStack = {
        let stack = VStack()
        stack.addArrangedSubview(logo)
        stack.addArrangedSubview(titleLabel)
        stack.alignment = .center
        stack.spacing = 20
        return stack
    }()
    

    
    
    //---textTitle---
    lazy var titleTF : BaseUILabel = {
        let title = BaseUILabel()
        title.text = "Forgot your password?"
        title.font = UIFont.preferredFont(forTextStyle: .headline)
        title.font = UIFont.systemFont(ofSize: 20)
//        title.font = UIFont.systemFont(ofSize: 60)
        title.textColor = UIColor.black
        title.numberOfLines = 0
//        title.textColor = UIColor.black
        return title
    }()
    
    lazy var messageL : BaseUILabel = {
        let title = BaseUILabel()
        title.text = "Please enter the email you use to sign in"
        title.font = UIFont.systemFont(ofSize: 14)
        title.numberOfLines = 0
//        title.setTitle(UIColor.black, for: .normal)
        return title
    }()
    
    lazy var resetEmailTF : BaseUITextField = {
        let email = BaseUITextField()
        email.placeholder = "ex) Jesica_zed @gmail.com"
        email.backgroundColor = UIColor.white
        email.layer.shadowColor = UIColor.lightGray.cgColor
        email.layer.shadowOpacity = 0.5
        return email
    }()

    
    lazy var titleResetTF : VStack = {
        let stack = VStack()
        stack.addArrangedSubview(titleTF)
        stack.addArrangedSubview(messageL)
        stack.spacing = 20
        return stack
    }()
    
    
    
    
//----------------------------------------------------
    //---textFiled---
//    lazy var messageLL : BaseUILabel = {
//        let title = BaseUILabel()
//        title.text = "Jesica_zed @gmail.com"
////        title.setTitle(UIColor.black, for: .header1)
//        return title
//    }()
    
//    lazy var resetEmailTF : BaseUITextField = {
//        let email = BaseUITextField()
//        email.placeholder = "Jesica_zed @gmail.com"
//        email.layer.shadowColor = UIColor.lightGray.cgColor
//        email.layer.shadowOpacity = 0.5
//        return email
//    }()
//    
//    lazy var inputEmailTF : VStack = {
//        let stack = VStack()
//        stack.addArrangedSubview(messageLL)
//        stack.addArrangedSubview(resetEmailTF)
//        stack.spacing = 20
//        return stack
//    }()
//----------------------------------------------------


    
    //---resetPassword---
    lazy var button : BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("Reset Password", for: .normal)
        button.backgroundColor = UIColor(hexString: "#58CFC2")
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 300).isActive = true
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(resetButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    
    lazy var contentStack : VStack = {
        let stack = VStack()
        stack.addArrangedSubview(titleResetTF)
        stack.addArrangedSubview(resetEmailTF)
        stack.addArrangedSubview(button)
        stack.spacing = 50
        return stack
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(hexString: "#E5E5E5")
        self.parent?.title = "Pssword reset"
        
        view.addSubview(logoStack)
        NSLayoutConstraint.activate([
//            logoStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
            logoStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -120),
            logoStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 65),
            logoStack.heightAnchor.constraint(equalToConstant: 180)
        ])
        
        view.addSubview(contentStack)
        NSLayoutConstraint.activate([
            contentStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contentStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    
    @objc func resetButtonTapped(){
        
        let validEmail = "1234@yahoo.com"
        if resetEmailTF.text == validEmail{
            let alertViewController = UIAlertController(title: "Request sent", message: "Forgot password request successfully sent", preferredStyle: .alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .default){
                action in LocalDataManager.logout()
                let WelcomeVC = WelcomeViewController()
                self.navigationController?.pushViewController(WelcomeVC, animated: true)
            }
            
            alertViewController.addAction(OKAction)
            
            self.navigationController?.present(alertViewController, animated: true, completion: nil)
        }else{
            print("Something went wrong")
        }
    }

    
    
//----------------------------------------------------
//    @objc func resetButtonTapped(){
//        let alertViewController = UIAlertController(title: "Request sent", message: "Forgot password request successfully sent", preferredStyle: .alert)
//
////        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//
//        let OKAction = UIAlertAction(title: "OK", style: .default){ action in LocalDataManager.logout()
//            let WelcomeVC = WelcomeViewController()
//            self.navigationController?.pushViewController(WelcomeVC, animated: true)
////            AppRouter.navigate(to: WelcomeVC)
//        }
//
//        alertViewController.addAction(OKAction)
//
//        self.navigationController?.present(alertViewController, animated: true, completion: nil)
//    }
//----------------------------------------------------


    
}
