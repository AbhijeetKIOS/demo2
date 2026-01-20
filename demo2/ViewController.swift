//
//  ViewController.swift
//  demo2
//
//  Created by Abhijeet Kumar on 29/08/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstName: UILabel!

    @IBOutlet weak var updateName: UILabel!
    
    @IBOutlet weak var switchTab: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        // Set initial label based on current switch state
        switchLabel()
        // Update label whenever the switch is toggled
        switchTab.addTarget(self, action: #selector(switchValueChanged(_:)), for: .valueChanged)
    }
    
    func switchLabel() {
        firstName.text = switchTab.isOn ? "prashant" : "Abhijeet"
        updateName.text = switchTab.isOn ? "prashant" : "Abhijeet"
    }
    
    @objc private func switchValueChanged(_ sender: UISwitch) {
        firstName.text = switchTab.isOn ? "prashant" : "Abhijeet"
        updateName.text = sender.isOn ? "prashant" : "Abhijeet"
    }

}
