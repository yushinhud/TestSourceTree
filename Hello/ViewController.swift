//
//  ViewController.swift
//  Hello
//
//  Created by Yushin Kim on 17/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblHello: UILabel!
    @IBOutlet var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("gitTest")
    }

    @IBAction func btnSend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
        myLogPrint("=== didFinishLaunchingWithOptions ===")
    }
    
    public func myLogPrint(_ object: Any, _ file: String = #file, _ line: Int = #line, _ funcname: String = #function) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss:SSS"
        print("Log!! : \(dateFormatter.string(from: Date())) file: \(file) line: \(line) func: \(funcname)")
        print(object)
        
    }
    
}

