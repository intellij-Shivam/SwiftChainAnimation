//
//  ViewController.swift
//  PracticeiOS
//
//  Created by Shivam Saini on 15/04/18.
//  Copyright © 2018 Shivam Saini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var titleLabel = UILabel()
    var bodyLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        titleLabel.text = "This is the Title"
        titleLabel.numberOfLines = 0
        titleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        bodyLabel.text = "This is the Body lableasnflasnflkasnlfknaslknflaksn \n avasdasda"
        bodyLabel.numberOfLines = 0
        
        var myStackView = UIStackView()
        myStackView = UIStackView(arrangedSubviews: [titleLabel,
                                                     bodyLabel])
        myStackView.axis = .vertical
        myStackView.spacing = 8
        self.view.addSubview(myStackView)
        
        myStackView.frame = CGRect(x: 0,
                                   y: 0,
                                   width: 200,
                                   height: 400)
        
        myStackView.translatesAutoresizingMaskIntoConstraints = false
        myStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myStackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        myStackView.widthAnchor.constraint(equalTo: self.view.widthAnchor,
                                           constant: -150).isActive = true
        
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tapGestureCalled)))
        
    }

    
    @objc func tapGestureCalled() {
        print("--------Tapped--------")
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: .curveEaseOut,
                       animations: {
                        
                        self.titleLabel.transform = CGAffineTransform(translationX: -30, y: 0)
        }) { (_) in
            
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           options: .curveEaseOut,
                           animations: {
                            self.titleLabel.alpha = 0.0
                            self.titleLabel.transform = self.titleLabel.transform.translatedBy(x: 0,
                                                                                               y: -200)
                            
            })
        }
        
        UIView.animate(withDuration: 0.5,
                       delay: 1.0,
                       options: .curveEaseOut,
                       animations: {
                        
                         self.bodyLabel.transform = CGAffineTransform(translationX: -30, y: 0)
                        
        }) { (_) in
            
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           options: .curveEaseOut,
                           animations: {
                            self.bodyLabel.alpha = 0.0
                            self.bodyLabel.transform = self.bodyLabel.transform.translatedBy(x: 0,
                                                                                             y: -200)
            })
            
            
        }
    }

}

