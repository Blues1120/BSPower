//
//  TEDVC1.swift
//  BluesPower
//
//  Created by ios on 2017/6/9.
//  Copyright © 2017年 Blues Lin. All rights reserved.
//

import UIKit

class TEDVC1: UIViewController {

    @IBAction func pushBtn1(_ sender: Any) {
        
        
    }
    @IBAction func pushBtn2(_ sender: UIButton) {
        
        let vc2=self.storyboard?.instantiateViewController(withIdentifier: "TEDVC2") as! TEDVC2
        
        switch sender.tag {
        case 1:
            vc2.indexVC=sender.tag
            
        case 2:
            vc2.indexVC=sender.tag
        default:
            break
        }
        self.navigationController?.pushViewController(vc2, animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
