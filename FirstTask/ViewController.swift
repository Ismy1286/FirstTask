//
//  ViewController.swift
//  FirstTask
//
//  Created by user on 22.12.2021.
//

import UIKit
import SnapKit


class ViewController: UIViewController {

    private var textField = UITextField()
    private var button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.placeholder = "Введите текст..."
        
        view.addSubview(textField)
        textField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-25)
            make.width.equalToSuperview().offset(-100)
        }
        
        button.backgroundColor = .yellow
        button.setTitle("Print", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(nil, action: #selector(clickButton(view:)), for: .touchUpInside)
        
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(25)
            make.width.equalTo(100)
        }
    }
    @objc func clickButton(view: UIButton) {
        let secondText = SecondScreen()
        secondText.s = textField.text ?? ""
        
        navigationController?.pushViewController(secondText, animated: true)
    }
}

