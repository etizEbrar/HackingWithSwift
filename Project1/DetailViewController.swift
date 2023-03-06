//
//  DetailViewController.swift
//  Project1
//
//  Created by Ebrar Etiz on 28.02.2023.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selecetedImage: String?
     
    var selectedPictureNumber = 0
    var totalPictures = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "This image is \(selecetedImage!)"
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selecetedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    
}
