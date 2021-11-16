

import UIKit
class HomeViewController : UIViewController, UICollectionViewDelegate,
                                            UICollectionViewDataSource,
                                            UICollectionViewDelegateFlowLayout {
    
    lazy var tempImage : BaseUIImageView = {
        let iv = BaseUIImageView()
        iv.image = UIImage(named: "select1")
        return iv
    }()
    
    
    
    let data = DataProvider.makePopularPlacedata()
    
    
    lazy var collectionView: UICollectionView = {
        
        let viewLayout =  UICollectionViewFlowLayout()
        viewLayout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
        cv.backgroundColor = .white
        cv.delegate = self
        cv.dataSource = self
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    
    lazy var headerImage : BaseUIImageView = {
        let iv = BaseUIImageView()
        iv.image = UIImage(named: "headerImage")
        return iv
    }()
    
    lazy var titleLabel : BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Vancouver"
        label.textColor = UIColor.white
        label.font = UIFont.preferredFont(forTextStyle:  .largeTitle)
        return label
    }()
    
    lazy var descriptionLabel : BaseUILabel = {
        let label = BaseUILabel()
        label.text = "A beautiful place in the west of Canada"
        label.textColor = UIColor.white
        label.font = UIFont.preferredFont(forTextStyle: .caption1)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var startButton : BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("start", for: .normal)
        button.backgroundColor = UIColor(hexString: "#58CFC2" )
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.layer.cornerRadius = 25
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        return button
    }()
    
    lazy var descStack : VStack = {
        let stack = VStack()
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(descriptionLabel)
        stack.addArrangedSubview(startButton)
        stack.spacing = 16
        return stack
    }()
    
    lazy var selectionsLabel : BaseUILabel = {
        let title = BaseUILabel()
        title.text = "Popular Places"
        title.textColor = UIColor.black
        title.font = UIFont.preferredFont(forTextStyle: .title1)
        return title
    }()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.parent?.title = "HOME"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        view.addSubview(headerImage)
        view.addSubview(collectionView)
        view.addSubview(tempImage)

        
        NSLayoutConstraint.activate([
            headerImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerImage.topAnchor.constraint(equalTo: view.topAnchor),
            headerImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 2/3),
            
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.topAnchor.constraint(equalTo: headerImage.bottomAnchor),
//            collectionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 2/3)

            tempImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tempImage.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    
        headerImage.addSubview(descStack)
        NSLayoutConstraint.activate([
            descStack.leadingAnchor.constraint(equalTo: headerImage.leadingAnchor, constant: 20),
            descStack.bottomAnchor.constraint(equalTo: headerImage.bottomAnchor, constant: -20),
            descStack.widthAnchor.constraint(equalToConstant: 200)
        ])
                
        collectionView.register(PlaceCell.self, forCellWithReuseIdentifier: "cell")
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PlaceCell
        
        cell.imageView.image = data[indexPath.row].image
        cell.nameLabel.text = data[indexPath.row].name
        cell.layer.cornerRadius = 24
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.frame.height - 20
        return CGSize(width: 300, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = ImageVierViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}


