

import UIKit
import Elements

class LoginViewController: UIViewController {
    
    lazy var logo: BaseUIImageView = {
        let iv = BaseUIImageView()
        iv.image = UIImage(named: "appLogo")
        return iv
    }()

    
//    lazy var tempAccountBtn : BaseUIButton = {
//        let button = BaseUIButton()
//        button.layer.cornerRadius = 25
//        button.setTitle("temp button that moves to  an account page", for: .normal)
//        button.addTarget(self, action: #selector(accountHandler), for: .touchUpInside)
//        return button
//    }()
    
    lazy var titleLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Karen Trip"
        label.textColor = UIColor(hexString: "#42588B")
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        return label
    }()
    
    lazy var logoStack : VStack = {
        let stack = VStack()
        stack.addArrangedSubview(logo)
        stack.addArrangedSubview(titleLabel)
        stack.spacing = 20
        return stack
    }()
    
    lazy var emailTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "Email"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 25
        return tf
    }()
    
    lazy var passTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "Password"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 25
        return tf
    }()
    
    lazy var forgotPasswordBtn : BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("Forgot Password?", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.addTarget(self, action: #selector(forgotPWHandler), for: .touchUpInside)
        return button
    }()
    
    lazy var fogotStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(forgotPasswordBtn)
        stack.alignment = .trailing
        return stack
    }()
    
    lazy var loginButton: BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor(hexString: "#58CFC2")
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.layer.cornerRadius = 25
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        button.addTarget(self, action: #selector(loginHandler), for: .touchUpInside)
        return button
    }()
    
    lazy var textFieldStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(emailTF)
        stack.addArrangedSubview(passTF)
        stack.addArrangedSubview(fogotStack)
        stack.addArrangedSubview(loginButton)
        stack.spacing = 20
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
    
    lazy var facebookButton: BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("Facebook", for: .normal)
        button.setImage(UIImage(named: "facebook"), for: .normal)
        button.backgroundColor = UIColor(hexString: "#42588B")
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        button.widthAnchor.constraint(equalToConstant: 140).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.cornerRadius = 25
        return button
    }()
    
    lazy var twitterButton: BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("Twitter", for: .normal)
        button.setImage(UIImage(named: "twitter"), for: .normal)
        button.backgroundColor = UIColor(hexString: "#0C8FDD")
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        button.widthAnchor.constraint(equalToConstant: 140).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.cornerRadius = 25
        return button
    }()
    
    lazy var socialNetworks: HStack = {
        let stack = HStack()
        stack.spacing = 10
        stack.addArrangedSubview(facebookButton)
        stack.addArrangedSubview(twitterButton)
        return stack
    }()
    
    
    
    lazy var messageLabel : BaseUILabel = {
        let message = BaseUILabel()
        message.text = "Don’t have an account?"
        return message
    }()
    
    lazy var signUpBtn : BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("Sign up" , for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(signUpHandler), for: .touchUpInside)
        return button
    }()
    
    lazy var signUPHStack : HStack = {
        let stack = HStack()
        stack.addArrangedSubview(messageLabel)
        stack.addArrangedSubview(signUpBtn)
        stack.spacing = 10
        return stack
    }()
    
    
    
    lazy var contentStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(logoStack)
        stack.addArrangedSubview(textFieldStack)
        stack.addArrangedSubview(socialNetworks)
        stack.addArrangedSubview(signUPHStack)
        stack.spacing = 50
        stack.alignment = .center
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(hexString: "#E5E5E5")
        
        view.addSubview(contentStack)
        
        NSLayoutConstraint.activate([
            contentStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            contentStack.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//            contentStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            contentStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            contentStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
        ])
    }
    
//@objc func loginHandler() {
       // let profileVC = ProfileViewController()
//self.navigationController?.pushViewController(profileVC, animated: true)
       // let vc = TabBarViewController()
        //AppRouter.navigate(to: vc)
        //let vc = LoginFailViewController()
        ////self.navigationController?.pushViewController(vc, animated: true)
    //}
    
//    @objc func accountHandler() {
//        let tempAcccountVC = ProfileViewController()
//        self.navigationController?.pushViewController(tempAcccountVC, animated: true)
//    }
    
    @objc func forgotPWHandler(){
        let forgotPWVC = LoginForgotViewController()
        self.navigationController?.pushViewController(forgotPWVC, animated: true)
    }
    
    @objc func signUpHandler(){
        let signUPVC = SignUpViewController()
        self.navigationController?.pushViewController(signUPVC, animated: true)
    }
    
    @objc func loginHandler() {
        if !(emailTF.text?.isEmpty ?? true) &&
                !(passTF.text?.isEmpty ?? true) {
            
            LocalDataManager.isOnboarded(flag: true)
            LocalDataManager.setEmail(email: emailTF.text ?? "")
            
            let vc = TabBarViewController()
            AppRouter.navigate(to: vc)
            
        }
    }

}
