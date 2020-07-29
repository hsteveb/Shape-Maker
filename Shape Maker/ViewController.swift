//
//  ViewController.swift
//  Shape Maker
//
//  Created by Hector Barrios on 7/27/20.
//  Copyright © 2020 Hector Barrios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var stackLandscapeView: UIStackView!
    @IBOutlet weak var yellowLandscapeView: UIView!
    @IBOutlet weak var purpleLandscapeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if UIScreen.main.traitCollection.horizontalSizeClass == .regular && UIScreen.main.traitCollection.verticalSizeClass == .regular
        {
            if let orientation = UIApplication.shared.windows.first?.windowScene?.interfaceOrientation.isPortrait, orientation {
                
                toggleLandscape()
            }
            else {
                
                togglePortrait()
            }
        }
                        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        if self.traitCollection.verticalSizeClass == .regular && self.traitCollection.horizontalSizeClass == .regular {
            
            togglePortrait()
            toggleLandscape()
                
        }
        
        super.viewWillTransition(to: size, with: coordinator)
    }

    func togglePortrait() {
        orangeView.isHidden.toggle()
        blueView.isHidden.toggle()
        stackView.isHidden.toggle()
    }
    
    func toggleLandscape() {
        stackLandscapeView.isHidden.toggle()
        purpleLandscapeView.isHidden.toggle()
        yellowLandscapeView.isHidden.toggle()
    }
}

