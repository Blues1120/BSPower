//
//  InKWViewController.swift
//  BluesPower
//
//  Created by Blues Lin on 2016/12/26.
//  Copyright © 2016年 Blues Lin. All rights reserved.
//

import UIKit

class InKWViewController: UIViewController,UITextFieldDelegate {
    var a:Float = 0.8
    @IBOutlet weak var W: UITextField!
    @IBOutlet weak var V: UITextField!
    @IBOutlet weak var I: UITextField!
    @IBOutlet weak var PF: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        I.delegate = self
        W.delegate = self
        V.delegate = self
        PF.delegate = self

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
    @IBAction func butt(_ sender: UIButton) {
        if W.text! < String(2)
        {
            if(I.text?.isEmpty)! || (V.text?.isEmpty)!
            {
                print("有空無法計算")
                alr()
            }else
            {
                if (PF.text?.isEmpty)!
                {
                    myLabel.text = "交流單相:\( ((Float(I.text!)!) * (Float(V.text!)! * a)) / 1000.0 ) kW"
                    myImg.image = UIImage(named: "IKW1")
                }else
                {
                    myLabel.text = "交流單相:\( (Float(I.text!)! * (Float(V.text!)! * Float(PF.text!)!)) / 1000.0) kW"
                    myImg.image = UIImage(named: "IKW1")
                }
            }
        }else
            if (W.text?.isEmpty)! || (I.text?.isEmpty)! || (V.text?.isEmpty)!
            {
                print("空值")
                alr()
            }else{
                if (PF.text?.isEmpty)!
                {
                    myLabel.text = "交流三相：\((1.732 * (Float(V.text!)!) * Float(I.text!)! * a) / 1000.0) kW"
                    myImg.image = UIImage(named: "IKW3")
                }else
                {
                    myLabel.text = "交流三相：\((Float(1.732) * Float(V.text!)! * Float(I.text!)! * Float(PF.text!)!) / 1000.0) kW"
                    myImg.image = UIImage(named: "IKW3")
                }
        }
        I.resignFirstResponder()
        W.resignFirstResponder()
        V.resignFirstResponder()
        PF.resignFirstResponder()
    }
    @IBAction func Del(_ sender: UIButton) {
        W.text = ""
        V.text = ""
        I.text = ""
        myLabel.text = ""
        PF.text = ""
    }

    @IBAction func up(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    func alr()
    {
        let  al = UIAlertController(title: "警告", message: "不能有空值", preferredStyle: .alert)
        let btn = UIAlertAction(title: "確定", style: .default, handler: nil)
        al.addAction(btn)
        self.present(al, animated: true, completion: nil)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        I.resignFirstResponder()
        W.resignFirstResponder()
        V.resignFirstResponder()
        PF.resignFirstResponder()
        return true
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        I.resignFirstResponder()
        W.resignFirstResponder()
        V.resignFirstResponder()
        PF.resignFirstResponder()
    }
}
