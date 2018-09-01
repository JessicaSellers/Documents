//
//  DocumentContentViewController.swift
//  Documents
//
//  Created by Jessica Elizabeth Sellers on 8/30/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//

import UIKit
import CoreData
import Foundation

class DocumentContentViewController: UIViewController, UINavigationControllerDelegate {
    


    
    @IBOutlet weak var userInputName: UITextField!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var userInputContent: UITextView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        userInputName.delegate = self as? UITextFieldDelegate
        userInputContent.delegate = self as? UITextViewDelegate
        
        

        

        // Do any additional setup after loading the view.
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func saveDocument(_ sender: Any) {
        
        let inputContent: String = userInputContent.text!
        let inputName: String = userInputName.text!
        
        let currentDate = Date()

        
        if let name = userInputName.text,
            let userContent = userInputContent.text {
            let document = Documents(size: 22, content: inputContent, name: inputName, modified: currentDate)
        }
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
