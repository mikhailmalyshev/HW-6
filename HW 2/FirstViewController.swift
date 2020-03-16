//
//  FirstViewController.swift
//  HW 2
//
//  Created by Михаил Малышев on 14/03/2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let changeColorVC = segue.destination as! ChangeColorViewController
        changeColorVC.delegate = self
        changeColorVC.currentColor = view.backgroundColor
    }
}

extension FirstViewController: ChangeColorViewControllerDelegate {
    func changeBackgroundColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
