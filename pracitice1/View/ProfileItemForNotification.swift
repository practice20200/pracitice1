import UIKit
import Elements
class ProfileItemForNotificationView: HStack {
    
    lazy var button: BaseUIButton = {
        let button = BaseUIButton()
        button.setTitleColor(UIColor(hexString: "#9D9EA2"), for: .normal)
        return button
    }()
    
    lazy var switchBtn : BaseUIImageView = {
        let iv = BaseUIImageView()
        iv.image = UIImage(named: "switchLeft")
        return iv
    }()
    
    
    override func setupView() {
        super.setupView()
        addArrangedSubview(button)
        addArrangedSubview(EmptyView())
        addArrangedSubview(switchBtn)
        spacing = 16
        widthAnchor.constraint(equalToConstant: 300).isActive = true
        
    }
    
    func updateView(title: String, imageName: String) {
        button.setTitle(title, for: .normal)
        button.setImage(UIImage(named: imageName), for: .normal)
    }
}
