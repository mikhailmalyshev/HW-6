//
//  FirstViewController.swift
//  HW 2
//
//  Created by Михаил Малышев on 14/03/2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIView!
    
    private var redSliderValueOnFirstViewController: Float = 1
    private var greenSliderValueOnFirstViewController: Float = 1
    private var blueSliderValueOnFirstViewController: Float = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.backgroundColor = .white
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let changeColorVC = segue.destination as! ChangeColorViewController
        changeColorVC.delegate = self
        changeColorVC.redSliderValue = redSliderValueOnFirstViewController
        changeColorVC.greenSliderValue = greenSliderValueOnFirstViewController
        changeColorVC.blueSliderValue = blueSliderValueOnFirstViewController
    }
}

extension FirstViewController: ChangeColorViewControllerDelegate {
    func changeBackgroundColor(_ redSliderValue: Float,
                               _ greenSliderValue: Float,
                               _ blueSliderValue: Float) {
        
        backgroundView.backgroundColor = UIColor(red: CGFloat(redSliderValue),
                                                 green: CGFloat(greenSliderValue),
                                                 blue: CGFloat(blueSliderValue),
                                                 alpha: 1)
        
        redSliderValueOnFirstViewController = redSliderValue
        greenSliderValueOnFirstViewController = greenSliderValue
        blueSliderValueOnFirstViewController = blueSliderValue
    }
}
