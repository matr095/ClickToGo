//
//  ViewController.swift
//  LinkGoto
//
//  Created by MatR on 14/11/2015.
//  Copyright © 2015 MatR. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var tf: UITextField!
    
    @IBOutlet weak var Tricher: UIButton!
    @IBOutlet weak var nombre: UILabel!
    
    @IBOutlet weak var go: UILabel!
    
    @IBOutlet weak var webV: UIWebView!
    var address: String = ""
    var counter: Int = 0
    

    @IBAction func toucher(sender: UIButton) {
        let adresse:String = tf.text!
        counter += 1
        nombre.text = "Triches: " + String(counter)
        let url = NSURL(string: adresse)!
        webV.loadRequest(NSURLRequest(URL: url))
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}




