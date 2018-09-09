//
//  ViewController.swift
//  taxRefound
//
//  Created by Selena on 2018/9/9.
//  Copyright © 2018年 Selena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var money: UITextField!
    @IBOutlet weak var percentage: UITextField!
    
    @IBOutlet weak var refound: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculate(_ sender: UIButton) {
        
    //按下計算收鍵盤
    money.resignFirstResponder()
    percentage.resignFirstResponder()
    
    refound.isHidden = false
    
    //以下為防止有金額未輸入導致當掉
    if money.text == "" || percentage.text == "" //如果總金額與退稅％數有任一未填
    {
    refound.text = "0" //則顯示為0
    }else {let Refound = Double(money.text!)! * Double(percentage.text!)! / 100  //運算式
    refound.text = String(Refound) //讓結果等於Refound這串運算式
    }

}

}
