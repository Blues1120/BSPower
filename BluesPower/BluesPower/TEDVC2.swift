//
//  TEDVC2.swift
//  BluesPower
//
//  Created by ios on 2017/6/12.
//  Copyright © 2017年 Blues Lin. All rights reserved.
//

import UIKit

class TEDVC2: UIViewController {
    var indexVC=0
    
    
    @IBOutlet weak var txtField1: UITextField!
    @IBOutlet weak var txtField2: UITextField!
    
    var txtFieldsTitle=["","",""]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        switch self.indexVC {
        case 1:
            self.txtField1.text=self.txtFieldsTitle[0]
        case 2:
            self.txtField1.text=self.txtFieldsTitle[1]
        default:
            break
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
