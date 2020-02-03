//
//  ViewController.swift
//  Bip The Guy
//
//  Created by Jia H Li on 2/3/20.
//  Copyright © 2020 Jia H Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Mark: Properties
    @IBOutlet weak var imageToPunch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Mark: Functions
    func animateImage(){
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60
        
        //shrink image
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.minX + shrinkValue, y: self.imageToPunch.bounds.minY + shrinkValue, width: self.imageToPunch.bounds.size.width - shrinkValue, height: self.imageToPunch.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: {
            self.imageToPunch.bounds = bounds
        }, completion: nil)
    }
    
    //Mark: Actions

    @IBAction func libraryPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func cameraPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        animateImage()
        
    }
    
}

