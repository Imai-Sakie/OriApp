//
//  ViewController.swift
//  OriApp
//
//  Created by 今井咲江 on 2018/08/04.
//  Copyright © 2018年 imai sakie. All rights reserved.
//

import UIKit
import CTCheckbox

class ViewController: UIViewController, UITextFieldDelegate {
    /*--------------STR--------------*/
    @IBOutlet weak var STRnLabel: UILabel!
    @IBOutlet weak var STRpmTextField: UITextField!
    @IBOutlet weak var STRtTextField: UITextField!
    @IBOutlet weak var STRaLabel: UILabel!
    
    /*--------------CON--------------*/
    @IBOutlet weak var CONnLabel: UILabel!
    @IBOutlet weak var CONpmTextField: UITextField!
    @IBOutlet weak var CONtTextField: UITextField!
    @IBOutlet weak var CONaLabel: UILabel!
    
    /*--------------POW--------------*/
    @IBOutlet weak var POWnLabel: UILabel!
    @IBOutlet weak var POWpmTextField: UITextField!
    @IBOutlet weak var POWtTextField: UITextField!
    @IBOutlet weak var POWaLabel: UILabel!
    
    /*--------------DEX--------------*/
    @IBOutlet weak var DEXnLabel: UILabel!
    @IBOutlet weak var DEXpmTextField: UITextField!
    @IBOutlet weak var DEXtTextField: UITextField!
    @IBOutlet weak var DEXaLabel: UILabel!
    
    /*--------------APP--------------*/
    @IBOutlet weak var APPnLabel: UILabel!
    @IBOutlet weak var APPpmTextField: UITextField!
    @IBOutlet weak var APPtTextField: UITextField!
    @IBOutlet weak var APPaLabel: UILabel!
    
    /*--------------SIZ--------------*/
    @IBOutlet weak var SIZnLabel: UILabel!
    @IBOutlet weak var SIZpmTextField: UITextField!
    @IBOutlet weak var SIZtTextField: UITextField!
    @IBOutlet weak var SIZaLabel: UILabel!
    
    /*--------------INT--------------*/
    @IBOutlet weak var INTnLabel: UILabel!
    @IBOutlet weak var INTpmTextField: UITextField!
    @IBOutlet weak var INTtTextField: UITextField!
    @IBOutlet weak var INTaLabel: UILabel!
    
    /*--------------EDU--------------*/
    @IBOutlet weak var EDUnLabel: UILabel!
    @IBOutlet weak var EDUpmTextField: UITextField!
    @IBOutlet weak var EDUtTextFueld: UITextField!
    @IBOutlet weak var EDUaLabel: UILabel!
    
    /*--------------SAN--------------*/
    @IBOutlet weak var SANnLabel: UILabel!
    @IBOutlet weak var SANpmTextField: UITextField!
    @IBOutlet weak var SANtTextField: UITextField!
    @IBOutlet weak var SANaLabel: UILabel!
    
    /*---------------MP--------------*/
    @IBOutlet weak var MPnLabel: UILabel!
    @IBOutlet weak var MPpmTextField: UITextField!
    @IBOutlet weak var MPtTextField: UITextField!
    @IBOutlet weak var MPaLabel: UILabel!
    
    /*--------------ｱｲﾃﾞｱ--------------*/
    @IBOutlet weak var IdeanLabel: UILabel!
    @IBOutlet weak var IdeapmTextField: UITextField!
    @IBOutlet weak var IdeatTextField: UITextField!
    @IBOutlet weak var IdeaaLabel: UILabel!
    
    /*--------------幸運--------------*/
    @IBOutlet weak var LuckynLabel: UILabel!
    @IBOutlet weak var LuckypmTextField: UITextField!
    @IBOutlet weak var LuckytTextField: UITextField!
    @IBOutlet weak var LuckyaLabel: UILabel!
    
    /*--------------知識--------------*/
    @IBOutlet weak var KnowledgenLabel: UILabel!
    @IBOutlet weak var KnowledgepmTextField: UITextField!
    @IBOutlet weak var KnowledgetTextField: UITextField!
    @IBOutlet weak var KnowledgeaLabel: UILabel!
    
    /*--------------耐久--------------*/
    @IBOutlet weak var EndurancenLabel: UILabel!
    @IBOutlet weak var EndurancepmTextField: UITextField!
    @IBOutlet weak var EndurancetTextField: UITextField!
    @IBOutlet weak var EnduranceaLabel: UILabel!
    
    /*--------------ダメボ--------------*/
    @IBOutlet weak var DBnLabel: UILabel!
    
    /*--------------checkboxButton--------------*/
    var ALLCheckbox: UIButton!
    var STRCheckbox: UIButton!
    var CONCheckbox: UIButton!
    var POWCheckbox: UIButton!
    var DEXCheckbox: UIButton!
    var APPCheckbox: UIButton!
    var SIZCheckbox: UIButton!
    var INTCheckbox: UIButton!
    var EDUCheckbox: UIButton!
    
    /*--------------その他必要なもの--------------*/
    var checkboxArray: [UIButton] = []
    
    var backgroundView: UIView!
    var roleSelectView: UIView!
    
    var STRTotal: Int = 0
    var CONTotal: Int = 0
    var SIZTotal: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        STRpmTextField.delegate = self
        STRtTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func tapAllDiesButton(_ sender: Any) {
        backgroundView = makeBackgroundView()
        self.view.addSubview(backgroundView)
        
        roleSelectView = makeRoleSelectView()
        backgroundView.addSubview(roleSelectView)
        
        let titleLabel = makeTileLabel()
        roleSelectView.addSubview(titleLabel)
        
        let lineView = makeLineView()
        roleSelectView.addSubview(lineView)
        
        //ダイスロールボタン
        let roleButton = makeRoleButton()
        roleSelectView.addSubview(roleButton)
        
        let cancelButton = makeCancelButton()
        roleSelectView.addSubview(cancelButton)
        
        //チェックボックスの作成
        makeAllCheckbox()
        
        //ラベルの作成
        makeAllLabel()
        
        for box in checkboxArray {
            box.isSelected = false
        }
        
    }
    
    
    /*--------------ボタンの処理--------------*/
    @objc func onClickMyButton(sender: UIButton) {
        //checkboxが押されたら現在のbuttonのBool値の反対の値が入る(チェックされたらtrue, 外れたらfalseが代入される)
        sender.isSelected = !sender.isSelected
        checkboxArray[sender.tag - 1].isSelected = sender.isSelected
        print(checkboxArray[sender.tag - 1].isSelected)
        
        if (sender == ALLCheckbox) && (ALLCheckbox.isSelected == true) {
            for box in checkboxArray {
                box.isSelected = true
            }
        } else if (sender == ALLCheckbox) && (ALLCheckbox.isSelected == false) {
            for box in checkboxArray {
                box.isSelected = false
            }
        }
    }
    
    
    @objc func tapRoleButton(sender: UIButton) {
        backgroundView.removeFromSuperview()
        roleTimer()
        
        print("tapRoleButtonが押されました")
    }
    
    
    @objc func tapCancelButton(sender: UIButton) {
        backgroundView.removeFromSuperview()
        for box in checkboxArray {
            box.isSelected = false
        }
        print("tapCancelButtonが押されました")
    }
    
    
    /*--------------ダイスロールの処理--------------*/
    func roleTimer() {
        var i = 0
        while (i < 9) {
            if STRCheckbox.isSelected == true {
                STRCheckbox.isSelected = false
                let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                                 target: self,
                                                 selector: #selector(self.STRDies(_:)),
                                                 userInfo: nil,
                                                 repeats: true)
                //１秒後に止める
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    timer.invalidate()
                    for box in self.checkboxArray {
                        box.isSelected = false
                    }
                }
                print("STRDiseが呼ばれました")
            } else if CONCheckbox.isSelected == true {
                CONCheckbox.isSelected = false
                let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                                 target: self,
                                                 selector: #selector(self.CONDies(_:)),
                                                 userInfo: nil,
                                                 repeats: true)
                //１秒後に止める
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    timer.invalidate()
                    for box in self.checkboxArray {
                        box.isSelected = false
                    }
                }
                print("CONDiesが呼ばれました")
            } else if POWCheckbox.isSelected == true {
                POWCheckbox.isSelected = false
                let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                                 target: self,
                                                 selector: #selector(self.POWDies(_:)),
                                                 userInfo: nil,
                                                 repeats: true)
                //１秒後に止める
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    timer.invalidate()
                    for box in self.checkboxArray {
                        box.isSelected = false
                    }
                }
                print("POWDiseが呼ばれました")
            } else if DEXCheckbox.isSelected == true {
                DEXCheckbox.isSelected = false
                let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                                 target: self,
                                                 selector: #selector(self.DEXDies(_:)),
                                                 userInfo: nil,
                                                 repeats: true)
                //１秒後に止める
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    timer.invalidate()
                    for box in self.checkboxArray {
                        box.isSelected = false
                    }
                }
                print("DEXDiseが呼ばれました")
            } else if APPCheckbox.isSelected == true {
                APPCheckbox.isSelected = false
                let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                                 target: self,
                                                 selector: #selector(self.APPDies(_:)),
                                                 userInfo: nil,
                                                 repeats: true)
                //１秒後に止める
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    timer.invalidate()
                    for box in self.checkboxArray {
                        box.isSelected = false
                    }
                }
                print("APPDiseが呼ばれました")
            } else if SIZCheckbox.isSelected == true {
                SIZCheckbox.isSelected = false
                let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                                 target: self,
                                                 selector: #selector(self.SIZDies(_:)),
                                                 userInfo: nil,
                                                 repeats: true)
                //１秒後に止める
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    timer.invalidate()
                    for box in self.checkboxArray {
                        box.isSelected = false
                    }
                }
                print("SIZDiseが呼ばれました")
            } else if INTCheckbox.isSelected == true {
                INTCheckbox.isSelected = false
                let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                                 target: self,
                                                 selector: #selector(self.INTDies(_:)),
                                                 userInfo: nil,
                                                 repeats: true)
                //１秒後に止める
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    timer.invalidate()
                    for box in self.checkboxArray {
                        box.isSelected = false
                    }
                }
                print("INTDiseが呼ばれました")
            } else if EDUCheckbox.isSelected == true {
                EDUCheckbox.isSelected = false
                let timer = Timer.scheduledTimer(timeInterval: 0.05,
                                                 target: self,
                                                 selector: #selector(self.EDUDies(_:)),
                                                 userInfo: nil,
                                                 repeats: true)
                //１秒後に止める
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    timer.invalidate()
                    for box in self.checkboxArray {
                        box.isSelected = false
                    }
                }
                print("EDUDiseが呼ばれました")
            }
            
            
            
            i = i + 1
            print(i)
        }
    }
    
    
    @objc func STRDies(_ sender: Timer) {
        let rnd1 = Int.random(in: 1...6)
        let rnd2 = Int.random(in: 1...6)
        let rnd3 = Int.random(in: 1...6)
        let total = rnd1 + rnd2 + rnd3
        STRaLabel.text = String(total)
        STRnLabel.text = String(total)
        //ダメージボーナスの計算
        if 2...12 ~= STRTotal + SIZTotal  {
            DBnLabel.text = "-1D6"
        } else if 13...16 ~= STRTotal + SIZTotal {
            DBnLabel.text = "-1D4"
        } else if 17...24 ~= STRTotal + SIZTotal {
            DBnLabel.text = "±0"
        } else if 25...32 ~= STRTotal + SIZTotal {
            DBnLabel.text = "+1D4"
        } else if 33...40 ~= STRTotal + SIZTotal {
            DBnLabel.text = "+1D6"
        } else if 41...56 ~= STRTotal + SIZTotal {
            DBnLabel.text = "+2D6"
        } else if 57...72 ~= STRTotal + SIZTotal {
            DBnLabel.text = "+3D6"
        }
    }
    
    
    @objc func CONDies(_ sender: Timer) {
        let rnd1 = Int.random(in: 1...6)
        let rnd2 = Int.random(in: 1...6)
        let rnd3 = Int.random(in: 1...6)
        CONTotal = rnd1 + rnd2 + rnd3
        CONaLabel.text = String(CONTotal)
        CONnLabel.text = String(CONTotal)
        EnduranceaLabel.text = String((CONTotal + SIZTotal) / 2)
        EndurancenLabel.text = String((CONTotal + SIZTotal) / 2)
    }
    
    
    @objc func POWDies(_ sender: Timer) {
        let rnd1 = Int.random(in: 1...6)
        let rnd2 = Int.random(in: 1...6)
        let rnd3 = Int.random(in: 1...6)
        let total = rnd1 + rnd2 + rnd3
        POWaLabel.text = String(total)
        POWnLabel.text = String(total)
        LuckyaLabel.text = String(total * 5)
        LuckynLabel.text = String(total * 5)
        SANaLabel.text = String(total * 5)
        SANnLabel.text = String(total * 5)
        MPaLabel.text = String(total)
        MPnLabel.text = String(total)
    }
    
    
    @objc func DEXDies(_ sender: Timer) {
        let rnd1 = Int.random(in: 1...6)
        let rnd2 = Int.random(in: 1...6)
        let rnd3 = Int.random(in: 1...6)
        let total = rnd1 + rnd2 + rnd3
        DEXaLabel.text = String(total)
        DEXnLabel.text = String(total)
    }
    
    
    @objc func APPDies(_ sender: Timer) {
        let rnd1 = Int.random(in: 1...6)
        let rnd2 = Int.random(in: 1...6)
        let rnd3 = Int.random(in: 1...6)
        let total = rnd1 + rnd2 + rnd3
        APPaLabel.text = String(total)
        APPnLabel.text = String(total)
    }
    
    
    @objc func SIZDies(_ sender: Timer) {
        let rnd1 = Int.random(in: 1...6)
        let rnd2 = Int.random(in: 1...6)
        SIZTotal = rnd1 + rnd2 + 6
        SIZaLabel.text = String(SIZTotal)
        SIZnLabel.text = String(SIZTotal)
        EnduranceaLabel.text = String((CONTotal + SIZTotal) / 2)
        EndurancenLabel.text = String((CONTotal + SIZTotal) / 2)
        //ダメージボーナスの計算
        if 2...12 ~= STRTotal + SIZTotal  {
            DBnLabel.text = "-1D6"
        } else if 13...16 ~= STRTotal + SIZTotal {
            DBnLabel.text = "-1D4"
        } else if 17...24 ~= STRTotal + SIZTotal {
            DBnLabel.text = "±0"
        } else if 25...32 ~= STRTotal + SIZTotal {
            DBnLabel.text = "+1D4"
        } else if 33...40 ~= STRTotal + SIZTotal {
            DBnLabel.text = "+1D6"
        } else if 41...56 ~= STRTotal + SIZTotal {
            DBnLabel.text = "+2D6"
        } else if 57...72 ~= STRTotal + SIZTotal {
            DBnLabel.text = "+3D6"
        }
    }
    
    
    @objc func INTDies(_ sender: Timer) {
        let rnd1 = Int.random(in: 1...6)
        let rnd2 = Int.random(in: 1...6)
        let total = rnd1 + rnd2 + 6
        INTaLabel.text = String(total)
        INTnLabel.text = String(total)
        IdeaaLabel.text = String(total * 5)
        IdeanLabel.text = String(total * 5)
    }
    
    
    @objc func EDUDies(_ sender: Timer) {
        let rnd1 = Int.random(in: 1...6)
        let rnd2 = Int.random(in: 1...6)
        let rnd3 = Int.random(in: 1...6)
        let total = rnd1 + rnd2 + rnd3 + 3
        EDUaLabel.text = String(total)
        EDUnLabel.text = String(total)
        KnowledgeaLabel.text = String(total * 5)
        KnowledgenLabel.text = String(total * 5)
    }
    
    
    
    
    /*--------------部品生成のための処理--------------*/
    //チェックボックス
    func makeAllCheckbox() {
        STRCheckbox = makeCheckbox(tag: 1, x: 5, y: 50, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(STRCheckbox)
        checkboxArray.append(STRCheckbox)
        
        CONCheckbox = makeCheckbox(tag: 2, x: 100, y: 50, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(CONCheckbox)
        checkboxArray.append(CONCheckbox)
        
        POWCheckbox = makeCheckbox(tag: 3, x: 195, y: 50, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(POWCheckbox)
        checkboxArray.append(POWCheckbox)
        
        DEXCheckbox = makeCheckbox(tag: 4, x: 5, y: 125, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(DEXCheckbox)
        checkboxArray.append(DEXCheckbox)
        
        APPCheckbox = makeCheckbox(tag: 5, x: 100, y: 125, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(APPCheckbox)
        checkboxArray.append(APPCheckbox)
        
        SIZCheckbox = makeCheckbox(tag: 6, x: 195, y: 125, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(SIZCheckbox)
        checkboxArray.append(SIZCheckbox)
        
        INTCheckbox = makeCheckbox(tag: 7, x: 5, y: 200, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(INTCheckbox)
        checkboxArray.append(INTCheckbox)
        
        EDUCheckbox = makeCheckbox(tag: 8, x: 100 , y: 200, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(EDUCheckbox)
        checkboxArray.append(EDUCheckbox)
        
        ALLCheckbox = makeCheckbox(tag: 9, x: 195, y: 200, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(ALLCheckbox)
        checkboxArray.append(ALLCheckbox)
    }
    
    
    func makeCheckbox(tag: Int, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, action: Selector) -> UIButton {
        let myButton = UIButton()
        myButton.frame = CGRect(x: x, y: y, width: width, height: height)
        myButton.addTarget(self, action: action, for: .touchUpInside)
        myButton.setImage(UIImage(named: "checkbox.png"), for: .selected)
        myButton.setImage(UIImage(named: "nocheckbox.png"), for: .normal)
        myButton.tag = tag
        return myButton
    }
    
    
    //チェックボックスのラベル
    func makeAllLabel() {
        let STRLabel = makeCheckboxLabel(x: 47, y: 50, width: 40, height: 40, title: "STR")
        roleSelectView.addSubview(STRLabel)
        
        let CONLabel = makeCheckboxLabel(x: 142, y: 50, width: 40, height: 40, title: "CON")
        roleSelectView.addSubview(CONLabel)
        
        let POWLabel = makeCheckboxLabel(x: 237, y: 50, width: 40, height: 40, title: "POW")
        roleSelectView.addSubview(POWLabel)
        
        let DEXLabel = makeCheckboxLabel(x: 47, y: 125, width: 40, height: 40, title: "DEX")
        roleSelectView.addSubview(DEXLabel)
        
        let APPLabel = makeCheckboxLabel(x: 142, y: 125, width: 40, height: 40, title: "APP")
        roleSelectView.addSubview(APPLabel)
        
        let SIZLabel = makeCheckboxLabel(x: 237, y: 125, width: 40, height: 40, title: "SIZ")
        roleSelectView.addSubview(SIZLabel)
        
        let INTLabel = makeCheckboxLabel(x: 47, y: 200, width: 40, height: 40, title: "INT")
        roleSelectView.addSubview(INTLabel)
        
        let EDULabel = makeCheckboxLabel(x: 142, y: 200, width: 40, height: 40, title: "EDU")
        roleSelectView.addSubview(EDULabel)
        
        let AllLabel = makeCheckboxLabel(x: 237, y: 200, width: 40, height: 40, title: "ALL")
        roleSelectView.addSubview(AllLabel)
    }
    
    
    func makeCheckboxLabel(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, title: String) -> UILabel {
        let myLabel = UILabel()
        myLabel.frame = CGRect(x: x, y: y, width: width, height: height)
        myLabel.text = title
        myLabel.textAlignment = NSTextAlignment.left
        myLabel.font = UIFont(name: "HiraKakuProN-W6", size: 15)
        return myLabel
    }
    
    
    func makeRoleButton() -> UIButton {
        let roleButton = UIButton()
        roleButton.frame = CGRect(x: 10, y: 260, width: 125, height: 20)
        roleButton.setTitle("ダイスを振る", for: .normal)
        roleButton.setTitleColor(UIColor.lightGray, for: .highlighted)
        roleButton.titleLabel?.font = UIFont(name: "HiraKakuProN-W6", size: 15)
        roleButton.backgroundColor = UIColor(red: 0 / 255, green: 145 / 255, blue: 147 / 255, alpha: 1)
        roleButton.addTarget(self, action: #selector(self.tapRoleButton(sender:)), for: .touchUpInside)
        return roleButton
    }
    
    
    func makeCancelButton() -> UIButton {
        let cancelButton = UIButton()
        cancelButton.frame = CGRect(x: 165, y: 260, width: 125, height: 20)
        cancelButton.setTitle("キャンセル", for: .normal)
        cancelButton.setTitleColor(UIColor.gray, for: .highlighted)
        cancelButton.titleLabel?.font = UIFont(name: "HiraKakuProN-W6", size: 15)
        cancelButton.backgroundColor = UIColor.lightGray
        cancelButton.addTarget(self, action: #selector(self.tapCancelButton(sender:)), for: .touchUpInside)
        return cancelButton
    }
    
    
    func makeBackgroundView() -> UIView {
        let backgroundView = UIView()
        backgroundView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        backgroundView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        self.view.addSubview(backgroundView)
        return backgroundView
    }
    
    
    func makeRoleSelectView() -> UIView {
        let roleSelectView = UIView()
        roleSelectView.frame.size = CGSize(width: 300, height: 300)
        roleSelectView.center.x = self.view.center.x
        roleSelectView.center.y = 250
        roleSelectView.backgroundColor = UIColor.white
        roleSelectView.layer.shadowOpacity = 0.3
        roleSelectView.layer.cornerRadius = 3
        return roleSelectView
    }
    
    
    /*--------------装飾部品の生成のための処理--------------*/
    func makeTileLabel() -> UILabel {
        let titleLabel = UILabel()
        titleLabel.frame = CGRect(x: 10, y: 5, width: 280, height: 40)
        titleLabel.text = "ロールする能力値を選択してください"
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.font = UIFont(name: "HiraKakuProN-W6", size: 15)
        return titleLabel
    }
    
    
    func makeLineView() -> UIView {
        let lineView = UIView()
        lineView.frame = CGRect(x: 5, y: 40, width: 290, height: 2)
        lineView.backgroundColor = UIColor(red: 0 / 255, green: 145 / 255, blue: 147 / 255, alpha: 1)
        return lineView
    }
    
}

