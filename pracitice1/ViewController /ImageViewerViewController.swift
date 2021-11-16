//
//  ImageViewerViewController.swift
//  pracitice1
//
//  Created by Apple New on 2021-11-10.
//

import Foundation
import UIKit

class ImageVierViewController : UIViewController, UIScrollViewDelegate{
    
    var scrollView : UIScrollView!
    var imageView : UIImageView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        imageView = UIImageView(image: UIImage(named: "headerImage"))
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.blue
        scrollView.contentSize = imageView.bounds.size
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        scrollView.contentOffset = CGPoint(x: 1000, y: 450)
        
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
        
        scrollView.delegate = self
        //        scrollView.minimumZoomScale = 0.1
        //        scrollView.maximumZoomScale = 4.0
        //        scrollView.zoomScale = 1.0
        
        setZoomScale()
        setupGestureRecognizer()

    }
    
    override func viewWillLayoutSubviews() {
            setZoomScale()
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
            return imageView
        }
     
     
     func setZoomScale() {
             let imageViewSize = imageView.bounds.size
             let scrollViewSize = scrollView.bounds.size
             let widthScale = scrollViewSize.width / imageViewSize.width
             let heightScale = scrollViewSize.height / imageViewSize.height
             
             scrollView.minimumZoomScale = min(widthScale, heightScale)
             scrollView.zoomScale = 1.0
     }
     
     func setupGestureRecognizer() {
         let doubleTap = UITapGestureRecognizer(target: self, action: #selector(handleDoubleTap(recognizer:)))
             doubleTap.numberOfTapsRequired = 2
             scrollView.addGestureRecognizer(doubleTap)
     }
     
        @objc func handleDoubleTap(recognizer: UITapGestureRecognizer) {
             
             if (scrollView.zoomScale > scrollView.minimumZoomScale) {
                     scrollView.setZoomScale(scrollView.minimumZoomScale, animated: true)
             } else {
                     scrollView.setZoomScale(scrollView.maximumZoomScale, animated: true)
             }
     }
    
    
}
