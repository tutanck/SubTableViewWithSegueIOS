//
//  ViewController.swift
//  SubTableViewWithSegueIOS
//
//  Created by Zenika on 21/07/2017.
//  Copyright © 2017 DevArtisant. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var img : UIImage? = UIImage()
    
    @IBOutlet weak var imgImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imgImageView.image = img
        
        titleLabel.text = title
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

