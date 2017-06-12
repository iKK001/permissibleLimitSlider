//
//  ViewController.swift
//  PermissibleLimitSlider
//
//  Created by Stephan Korner on 12.06.17.
//  Copyright © 2017 Ideen Kaffee Korner. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var permissibleLimitSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.permissibleLimitSliderOutlet.setThumbImage(#imageLiteral(resourceName: "slider-cap"), for: .normal)
        self.permissibleLimitSliderOutlet.setMinimumTrackImage(#imageLiteral(resourceName: "slider-track-fill"), for: .normal)
        self.permissibleLimitSliderOutlet.setMaximumTrackImage(#imageLiteral(resourceName: "slider-track"), for: .normal)
        self.permissibleLimitSliderOutlet.setValue(0.5, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderValueChangedAction(_ sender: UISlider) {
        
        print(sender.value)
        
        if sender.value >= 0.8 {
            sender.setValue(0.8, animated: true)
        }
    }

}

