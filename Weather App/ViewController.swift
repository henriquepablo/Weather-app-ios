//
//  ViewController.swift
//  Weather App
//
//  Created by pablo henrique on 19/01/25.
//

import UIKit

class ViewController: UIViewController {

    private lazy var customView: UIView = {
        let view = UIView(frame: .zero)
        
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }

    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidDisappear(_ animated:Bool) {
        super.viewDidDisappear(animated)
    }
    
    private func setupView() {
        view.backgroundColor = .red
        
        setupHierarchy()
        setupConstraints()
        
    }
    
    private func setupHierarchy() {
        view.addSubview(customView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
        ])
    }
    
}

