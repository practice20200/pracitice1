
import UIKit
import Elements
import Firebase

class SignUpViewController: UIViewController {

    var handle: AuthStateDidChangeListenerHandle?
    
    //logostack-------
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
        return label
    }()
    
    lazy var logoStack : VStack = {
        let stack = VStack()
        stack.addArrangedSubview(logo)
        stack.addArrangedSubview(titleLabel)
        stack.spacing = 20
        return stack
    }()
    
    
    
    
    //-------signUpStack
    lazy var usernameTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "User name"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 25
        return tf
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
    
    lazy var signupButton: BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = UIColor(hexString: "#58CFC2")
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 300).isActive = true
        button.layer.cornerRadius = 25
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        button.addTarget(self, action: #selector(signUpHandler), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(usernameTF)
        stack.addArrangedSubview(emailTF)
        stack.addArrangedSubview(passTF)
        stack.spacing = 20
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
    
    
    
    
    //--------ButtonStack
    lazy var contentStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(logoStack)
        stack.addArrangedSubview(buttonStack)
        stack.addArrangedSubview(signupButton)
        stack.spacing = 50
        stack.alignment = .center
        
        return stack
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.parent?.title = "Sign Up"
        view.backgroundColor = UIColor(hexString: "#E5E5E5")
        
        view.addSubview(contentStack)
        NSLayoutConstraint.activate([
            contentStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contentStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            handle = Auth.auth().addStateDidChangeListener({ _, user in
                if user != nil {
                    let vc = TabBarViewController()
                    AppRouter.navigate(to: vc)
                }
            })
            
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
            guard let handle = handle else { return }
            Auth.auth().removeStateDidChangeListener(handle)
        }
        
        @objc func signUpHandler() {

            if !(emailTF.text?.isEmpty ?? true) &&
                    !(usernameTF.text?.isEmpty ?? true) &&
                    !(passTF.text?.isEmpty ?? true) {
                
    //            LocalDataManager.isOnboarded(flag: true)
    //            LocalDataManager.setEmail(email: emailTF.text ?? "")
    //            LocalDataManager.setUsername(userName: usernameTF.text ?? "")
    //
    //            let vc = TabBarViewController()
    //            AppRouter.navigate(to: vc)
                
                let email = emailTF.text ?? ""
                let password = passTF.text ?? ""
                
                Auth.auth().createUser(withEmail: email, password: password) { _, error in
                    
                    if error == nil {
                        // creating user is completed sucessfully
                        // the next step: to sign in to the application using auth feature of firebase
                        Auth.auth().signIn(withEmail: email, password: password)
                    } else {
                        let alertVC = UIAlertController(title: "Error in sign up", message: "couldn't create user", preferredStyle: .alert)
                        let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                        alertVC.addAction(action)
                        self.navigationController?.present(alertVC, animated: true, completion: nil)
                    }
                }
                
            }
            
        }
}
