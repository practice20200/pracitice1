

import UIKit
class LoginFailViewController : UITableViewController{
   
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
    
    //-----------
    //---email,password,message,loginbutton---
    
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
    
    lazy var message : BaseUILabel = {
        let message = BaseUILabel()
        message.text = "Wrong Password, please try again"
        message.textColor = UIColor.red
        message.font = UIFont.systemFont(ofSize: 10)
        return message
    }()
    
    lazy var loginButton: BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor(hexString: "#58CFC2")
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 300).isActive = true
        button.layer.cornerRadius = 25
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        button.addTarget(self, action: #selector(loginHandler), for: .touchUpInside)
        return button
    }()
    
    lazy var textFieldStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(emailTF)
        stack.addArrangedSubview(passTF)
        stack.addArrangedSubview(message)
        stack.addArrangedSubview(loginButton)
        stack.spacing = 20
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
 
    //----------
    //---facebook,twitter---

    
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
    
    
    
    
    //---------
    //---signupstack---
    
    lazy var messageL : BaseUILabel = {
        let message = BaseUILabel()
        message.text = "Don’t have an account ?"
        message.textColor = UIColor.gray
        return message
    }()
    
    lazy var signUpButton : BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(signUpHandler), for: .touchUpInside)
        return button
    }()
    
    lazy var stackSignUP : HStack = {
        let stack = HStack()
        stack.addArrangedSubview(messageL)
        stack.addArrangedSubview(signUpButton)
        stack.spacing = 10
        return stack
    }()
    
    
    
    
    
    //----------
    //---overallLayut---
    
    lazy var contentStack: VStack = {
        let stack = VStack()
//        stack.addArrangedSubview(logoStack)
        stack.addArrangedSubview(textFieldStack)
        stack.addArrangedSubview(socialNetworks)
        stack.addArrangedSubview(stackSignUP)
        stack.spacing = 40
        stack.alignment = .center
        
        return stack
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(hexString: "#E5E5E5")
        
        view.addSubview(logoStack)
        NSLayoutConstraint.activate([
//            logoStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
            logoStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -120),
            logoStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            logoStack.heightAnchor.constraint(equalToConstant: 180)
        ])
        
        
        view.addSubview(contentStack)
        NSLayoutConstraint.activate([
            contentStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contentStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        
    }
    
    @objc func loginHandler() {
        let loginForgotVC = LoginForgotViewController()
        self.navigationController?.pushViewController(loginForgotVC, animated: true)
    }
    
    
    @objc func signUpHandler(){
        let signUpVC = SignUpViewController()
        self.navigationController?.pushViewController(signUpVC, animated: true)
        
    }
}
