//
//  ViewController.swift
//  label
//
//  Created by Predrag on 02/04/2020.
//  Copyright © 2020 pejo015. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.frame = view.bounds
        return view
    }()
    
    
    
    lazy var mainStackView: UIStackView = {
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 0
        return stackView
        
    }()
    
    lazy var label1: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore euLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore euLorelaboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam "
        label.numberOfLines = 0
        label.sizeToFit()
        label.backgroundColor = .gray
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var label2: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore euLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore euLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse "
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var label3: UILabel = {
           let label = UILabel()
           label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore euLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore euLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore euLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation"
           label.numberOfLines = 0
           label.sizeToFit()
           label.backgroundColor = .red
           label.textColor = UIColor.black
           label.translatesAutoresizingMaskIntoConstraints = false
           return label
       }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        setupScrollView()
        setupViews()
        
    }
    
    
    func setupScrollView(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(scrollView)
        scrollView.addSubview(mainStackView)
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor,constant: 20).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor,constant: 30).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true


        
        mainStackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        mainStackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor,constant: 120).isActive = true
        mainStackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        mainStackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true


    }
    
    func setupViews(){
        mainStackView.addSubview(label1)
        label1.centerXAnchor.constraint(equalTo: mainStackView.centerXAnchor).isActive = true
        label1.topAnchor.constraint(equalTo: mainStackView.topAnchor).isActive = true
        label1.widthAnchor.constraint(equalTo: mainStackView.widthAnchor, multiplier: 3/4).isActive = true
        
        mainStackView.addSubview(label2)
        label2.centerXAnchor.constraint(equalTo: mainStackView.centerXAnchor).isActive = true
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 5).isActive = true
        label2.widthAnchor.constraint(equalTo: mainStackView.widthAnchor, multiplier: 3/4).isActive = true
     
        
        
        mainStackView.addSubview(label3)
        label3.centerXAnchor.constraint(equalTo: mainStackView.centerXAnchor).isActive = true
        label3.topAnchor.constraint(equalTo: label2.bottomAnchor,constant: 10).isActive = true
        label3.widthAnchor.constraint(equalTo: mainStackView.widthAnchor, multiplier: 3/4).isActive = true
        label3.bottomAnchor.constraint(equalTo: mainStackView.bottomAnchor).isActive = true

    }
    
    
    
}

