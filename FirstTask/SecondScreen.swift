//
//  SecondScreen.swift
//  FirstTask
//
//  Created by user on 22.12.2021.
//

import Foundation
import UIKit


class SecondScreen: UIViewController {
    
    var s: String = ""
    var textLabel = UILabel()
    
    override func viewDidLoad() {
        view.backgroundColor = .yellow
        
        textLabel.text = s
        textLabel.numberOfLines = 0
        textLabel.lineBreakMode = .byWordWrapping
    
        view.addSubview(textLabel)
        textLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalToSuperview().offset(-50)
        }
    }
}
