//
//  KVAViewController.swift
//  BluesPower
//
//  Created by Blues Lin on 2016/12/23.
//  Copyright © 2016年 Blues Lin. All rights reserved.
//

import UIKit

class KVAViewController: UIViewController ,UITextFieldDelegate{
let a:Float = 0.8

    @IBOutlet weak var myImg: UIImageView!
    @IBOutlet weak var PF: UITextField!
    @IBOutlet weak var W: UITextField!
    @IBOutlet weak var WK: UITextField!
    @IBOutlet weak var V: UITextField!
    @IBOutlet weak var lebel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        WK.delegate = self
        W.delegate = self
        V.delegate = self
        PF.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func I(_ sender: UIButton) {
        if W.text! < String(2)
        {
            if(WK.text?.isEmpty)! || (V.text?.isEmpty)! 
            {
                print("有空無法計算")
                alr()
            }else
            {
                if (PF.text?.isEmpty)!
                {
                lebel.text = "交流單相:\((Float(WK.text!)! * 1000.0) / (Float(V.text!)! * a) ) A"
                myImg.image = UIImage(named: "KW1")
                }else
                {
                    lebel.text = "交流單相:\((Float(WK.text!)! * 1000.0) / (Float(V.text!)! * Float(PF.text!)!) ) A"
                    myImg.image = UIImage(named: "KW1")
                }
            }
        }else
            if (W.text?.isEmpty)! || (WK.text?.isEmpty)! || (V.text?.isEmpty)!
            {
                print("空值")
                alr()
            }else{
                if (PF.text?.isEmpty)!
                {
                    lebel.text = "交流三相：\((Float(WK.text!)! * 1000.0) / (1.732 * Float(V.text!)! * a)) A"
                    myImg.image = UIImage(named: "KW3")
                }else
                {
                lebel.text = "交流三相：\((Float(WK.text!)! * 1000.0) / (1.732 * Float(V.text!)! *  Float(PF.text!)!)) A"
                myImg.image = UIImage(named: "KW3")
                }
        }
        WK.resignFirstResponder()
        W.resignFirstResponder()
        V.resignFirstResponder()
        PF.resignFirstResponder()

        
        
        
    }
    
    @IBAction func Del(_ sender: UIButton) {
        W.text = ""
        WK.text = ""
        V.text = ""
        lebel.text = ""
        PF.text = ""
    }

    @IBAction func up(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func alr()
    {
        let  al = UIAlertController(title: "警告", message: "不能有空值", preferredStyle: .alert)
        let btn = UIAlertAction(title: "確定", style: .default, handler: nil)
        al.addAction(btn)
        self.present(al, animated: true, completion: nil)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        WK.resignFirstResponder()
        W.resignFirstResponder()
        V.resignFirstResponder()
        PF.resignFirstResponder()
        return true
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        WK.resignFirstResponder()
        W.resignFirstResponder()
        V.resignFirstResponder()
        PF.resignFirstResponder()
    }
}
