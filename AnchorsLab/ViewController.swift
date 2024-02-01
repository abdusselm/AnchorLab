//
//  ViewController.swift
//  AnchorsLab
//
//  Created by ABDUSSELAM KESKIN on 29.07.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupViews()
    }

    func setupViews(){
        
        let upperLeftLabel = makeLabel(withText: "upperLeft")
        let upperRightLabel = makeLabel(withText: "upperRight")
        
        let lowerLeftLabel = makeSecondaryLabel(withText: "lowerLeft")
        let payBillButton = makeButton(withText: "Pay Bill")
        
        let redView = makeView()
        
        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        
        view.addSubview(lowerLeftLabel)
        view.addSubview(payBillButton)
        
        view.addSubview(redView)
        
        upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        lowerLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        lowerLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        payBillButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        payBillButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // Option 1: Size explicitly
        
        // redView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        // redView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        // Option 2: Size dynmically (pinning)
        
        // width
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        // height
        redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
    }
    
    func makeLabel(withText text: String) -> UILabel{
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false // Bunu yapmayı unutursanız, kontrolünüz otomatik düzen çözücüye katılmayacak ve sadece
                                                                // ekranda düşündüğünüz gibi çıkmayacaktır.
        label.text = text
        label.backgroundColor = .yellow
        
        return label
    }
    
    func makeSecondaryLabel(withText text: String) -> UILabel{
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .yellow
        label.text = text
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .gray
        
        return label
    }
    
    func makeButton(withText text: String) -> UIButton{
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .blue
        
        return button
        
    }
    
    func makeView() -> UIView{
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
    }

}

