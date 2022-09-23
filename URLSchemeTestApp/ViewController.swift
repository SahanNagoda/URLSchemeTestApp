//
//  ViewController.swift
//  URLSchemeTestApp
//
//  Created by Sahan Nagodavithana on 2022-09-23.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func open(_ sender: Any) {
        let url = URL(string: "SoHive:Meeting?id=369&source=TestApp")

        UIApplication.shared.open(url!) { (result) in
            if result {
               // The URL was delivered successfully!
            }else{
                let url = URL(string: "https://apps.apple.com/lk/app/sohive/id1596274003")
                UIApplication.shared.open(url!) { (result) in
                    if result {
                       // The URL was delivered successfully!
                    }else{
                        
                    }
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

