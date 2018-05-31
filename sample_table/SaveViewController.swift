//
//  SaveViewController.swift
//  sample_table
//
//  Created by tatsumi kentaro on 2018/05/26.
//  Copyright © 2018年 tatsumi kentaro. All rights reserved.
//

import UIKit
import RealmSwift
class SaveViewController: UIViewController {
//    let storage:UserDefaults = UserDefaults.standard
    let object = Contents()
    var array = [String]()
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var main_text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapGesture))
        self.view.addGestureRecognizer(tapRecognizer)
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let realm = try! Realm()
        
//        if storage.object(forKey: "key") as? [String] != nil{
//            array = storage.object(forKey: "key") as! [String]
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(_ sender: Any) {
        if let text = text.text,let main = main_text.text{
            array.append(text)
            object.id = 1
            object.title = text
            object.content = main
//            storage.set(array, forKey: "key")
        }
        self.navigationController?.popViewController(animated: true)
    }
    //画面をタップすると、キーボードが閉じる動作
    @objc func tapGesture(sender: UITapGestureRecognizer) {
        text.resignFirstResponder()
    }

}
