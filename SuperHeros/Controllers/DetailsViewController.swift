//
//  DetailsViewController.swift
//  SuperHeros
//
//  Created by furkan on 16.05.2023.
//

import UIKit

class DetailsViewController: UIViewController {


    @IBOutlet weak var detailsImage: UIImageView!
    
    @IBOutlet weak var detailsName: UILabel!
    
    @IBOutlet weak var detailsLife: UITextView!
    
    var heroImage = ""
    var heroName = ""
    var heroLife = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailsImage.image = UIImage(named: heroImage)
        
        detailsName.text = heroName
        
        detailsLife.text = heroLife
    }
    
    
}
