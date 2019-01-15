//
//  DiesViewController.swift
//  OriApp
//
//  Created by 今井咲江 on 2018/08/23.
//  Copyright © 2018年 imai sakie. All rights reserved.
//

import UIKit

class DiesViewController: UIViewController, UITextFieldDelegate {
//    var myScrollView = UIScrollView()
    
    @IBOutlet weak var DiesSum: UITextField!
    @IBOutlet weak var DiesNumber: UITextField!
    
    @IBOutlet weak var OriDiesLabel: UILabel!
    @IBOutlet weak var oneDhundredLabel: UILabel!
    @IBOutlet weak var oneDtenLabel: UILabel!
    @IBOutlet weak var threeDsixLabel: UILabel!
    @IBOutlet weak var oneDsixLabel: UILabel!
    @IBOutlet weak var oneDfourLabel: UILabel!
    @IBOutlet weak var twoDthreeLabel: UILabel!
    @IBOutlet weak var oneDthreeLabel: UILabel!
    @IBOutlet weak var oneDtwentyLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DiesSum.delegate = self
        DiesSum.keyboardType = UIKeyboardType.numberPad
        
        DiesNumber.delegate = self
        DiesNumber.keyboardType = UIKeyboardType.numberPad
        
//        myScrollView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 1000)      
        

        // Do any additional setup after loading the view.
    }
    
    /*--------------TextFieldの処理--------------*/
    //タップでキーボードを閉じる
    @IBAction func tapGestureRecognizer(_ sender: UITapGestureRecognizer) {
        DiesSum.endEditing(true)
        DiesNumber.endEditing(true)
    }
    
    @objc func DiesSumChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
        }
    }
    
    @objc func DiesNumberChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
        }
    }
    
    
    /*--------------ダイスロールの処理--------------*/
    @objc func originalDies(_ sender: Timer) {
        var total = 0
        var i = 0
        while Int(DiesSum.text!)! > i {
            total = total + Int.random(in: 1...Int(DiesNumber.text!)!)
            i = i + 1
        }
        OriDiesLabel.text = String(total)
    }
    
    
    @objc func oneDhundredDies(_ sender: Timer) {
        let total = Int.random(in: 1...100)
        oneDhundredLabel.text = String(total)
    }
    
    @objc func oneDtenDies(_ sender: Timer) {
        let total = Int.random(in: 1...10)
        oneDtenLabel.text = String(total)
    }
    
    @objc func threeDsixDies(_ sender: Timer) {
        let rnd1 = Int.random(in: 1...6)
        let rnd2 = Int.random(in: 1...6)
        let rnd3 = Int.random(in: 1...6)
        let total = rnd1 + rnd2 + rnd3
        threeDsixLabel.text = String(total)
    }
    
    @objc func oneDsixDies(_ sender: Timer) {
        let total = Int.random(in: 1...6)
        oneDsixLabel.text = String(total)
    }
    
    @objc func oneDfourDies(_ sender: Timer) {
        let total = Int.random(in: 1...4)
        oneDfourLabel.text = String(total)
    }
    
    @objc func twoDthreeDies(_ sender: Timer) {
        let rnd1 = Int.random(in: 1...3)
        let rnd2 = Int.random(in: 1...3)
        let total = rnd1 + rnd2
        twoDthreeLabel.text = String(total)
    }
    
    @objc func oneDthreeDies(_ sender: Timer) {
        let total = Int.random(in: 1...3)
        oneDthreeLabel.text = String(total)
    }
    
    @objc func oneDtwentyDies(_ sender: Timer) {
        let total = Int.random(in: 1...20)
        oneDtwentyLabel.text = String(total)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func OriDies(_ sender: UIButton) {
        if (DiesSum.text?.isEmpty != true) && (DiesNumber.text?.isEmpty != true) {
            let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                             target: self,
                                             selector: #selector(self.originalDies(_:)),
                                             userInfo: nil,
                                             repeats: true)
            //１秒後に止める
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                timer.invalidate()
            }
        } else if (DiesSum.text?.isEmpty == true) || (DiesNumber.text?.isEmpty == true) {
            //どちらかのTextFieldの中身がない場合のアクションシート
            let alert = UIAlertController(title: "入力漏れ", message: "数値の入力漏れがあります", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(OKAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func oneDhundred(_ sender: UIButton) {
        let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                         target: self,
                                         selector: #selector(self.oneDhundredDies(_:)),
                                         userInfo: nil,
                                         repeats: true)
        //１秒後に止める
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            timer.invalidate()
        }
    }
    
    @IBAction func oneDten(_ sender: UIButton) {
        let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                         target: self,
                                         selector: #selector(self.oneDtenDies(_:)),
                                         userInfo: nil,
                                         repeats: true)
        //１秒後に止める
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            timer.invalidate()
        }
    }
    
    @IBAction func threeDsix(_ sender: UIButton) {
        let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                         target: self,
                                         selector: #selector(self.threeDsixDies(_:)),
                                         userInfo: nil,
                                         repeats: true)
        //１秒後に止める
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            timer.invalidate()
        }
    }
    
    @IBAction func oneDsix(_ sender: UIButton) {
        let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                         target: self,
                                         selector: #selector(self.oneDsixDies(_:)),
                                         userInfo: nil,
                                         repeats: true)
        //１秒後に止める
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            timer.invalidate()
        }
    }
    
    @IBAction func oneDfour(_ sender: UIButton) {
        let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                         target: self,
                                         selector: #selector(self.oneDfourDies(_:)),
                                         userInfo: nil,
                                         repeats: true)
        //１秒後に止める
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            timer.invalidate()
        }
    }
    
    @IBAction func twoDthree(_ sender: UIButton) {
        let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                         target: self,
                                         selector: #selector(self.twoDthreeDies(_:)),
                                         userInfo: nil,
                                         repeats: true)
        //１秒後に止める
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            timer.invalidate()
        }
    }
    
    @IBAction func oneDthree(_ sender: UIButton) {
        let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                         target: self,
                                         selector: #selector(self.oneDthreeDies(_:)),
                                         userInfo: nil,
                                         repeats: true)
        //１秒後に止める
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            timer.invalidate()
        }
    }
    
    @IBAction func oneDtwenty(_ sender: UIButton) {
        let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                         target: self,
                                         selector: #selector(self.oneDtwentyDies(_:)),
                                         userInfo: nil,
                                         repeats: true)
        //１秒後に止める
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            timer.invalidate()
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
