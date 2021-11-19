//
//  AnimationViewController.swift
//  pracitice1
//
//  Created by Apple New on 2021-11-18.
//

import UIKit
import Lottie
import Elements

class AnimationViewController: UIViewController {
    
    lazy var animationView : AnimationView = {
        let anime = AnimationView(name: "animation1")
        anime.translatesAutoresizingMaskIntoConstraints = false
        anime.loopMode = .loop
        anime.contentMode = .scaleAspectFit
        return anime
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        view.addSubview(animationView)

        NSLayoutConstraint.activate([
            animationView.topAnchor.constraint(equalTo: view.topAnchor),
            animationView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            animationView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            animationView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        animationView.play()
    }


}
