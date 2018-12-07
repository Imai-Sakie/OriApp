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
    
    var checkboxArray: [UIButton] = []
    
    var roleSelectView: UIView!
    
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
        let backgroundView = makeBackgroundView()
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
        
        //チェックボックスの作成
        makeAllCheckbox()
        
        //ラベルの作成
        makeAllLabel()
        
    }
    
    
    /*--------------チェックボックスの処理--------------*/
    @objc func onClickMyButton(sender: UIButton) {
        //ボタンが押されたら現在のmyButtonのBool値の反対の値が入る(チェックされたらtrue, 外れたらfalseが代入される)
        sender.isSelected = !sender.isSelected
//        print(sender.isSelected)
        
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
    
    
    /*--------------部品生成のための処理--------------*/
    func makeAllCheckbox() {
        //チェックボックス
        STRCheckbox = makeCheckbox(x: 5, y: 50, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(STRCheckbox)
        checkboxArray.append(STRCheckbox)
        
        CONCheckbox = makeCheckbox(x: 100, y: 50, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(CONCheckbox)
        checkboxArray.append(CONCheckbox)
        
        POWCheckbox = makeCheckbox(x: 195, y: 50, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(POWCheckbox)
        checkboxArray.append(POWCheckbox)
        
        DEXCheckbox = makeCheckbox(x: 5, y: 125, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(DEXCheckbox)
        checkboxArray.append(DEXCheckbox)
        
        APPCheckbox = makeCheckbox(x: 100, y: 125, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(APPCheckbox)
        checkboxArray.append(APPCheckbox)
        
        SIZCheckbox = makeCheckbox(x: 195, y: 125, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(SIZCheckbox)
        checkboxArray.append(SIZCheckbox)
        
        INTCheckbox = makeCheckbox(x: 5, y: 200, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(INTCheckbox)
        checkboxArray.append(INTCheckbox)
        
        EDUCheckbox = makeCheckbox(x: 100 , y: 200, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(EDUCheckbox)
        checkboxArray.append(EDUCheckbox)
        
        ALLCheckbox = makeCheckbox(x: 195, y: 200, width: 40, height: 40, action: #selector(self.onClickMyButton(sender:)))
        roleSelectView.addSubview(ALLCheckbox)
        checkboxArray.append(ALLCheckbox)
    }
    
    
    func makeCheckbox(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, action: Selector) -> UIButton {
        let myButton = UIButton()
        myButton.frame = CGRect(x: x, y: y, width: width, height: height)
        myButton.addTarget(self, action: action, for: .touchUpInside)
        myButton.setImage(UIImage(named: "checkbox.png"), for: .selected)
        myButton.setImage(UIImage(named: "nocheckbox.png"), for: .normal)
        return myButton
    }
    
    
    func makeAllLabel() {
        //チェックボックスのラベル
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
        roleButton.frame = CGRect(x: 50, y: 260, width: 200, height: 20)
        roleButton.setTitle("ダイスを振る", for: .normal)
        roleButton.setTitleColor(UIColor.lightGray, for: .highlighted)
        roleButton.titleLabel?.font = UIFont(name: "HiraKakuProN-W6", size: 15)
        roleButton.backgroundColor = UIColor(red: 0 / 255, green: 145 / 255, blue: 147 / 255, alpha: 1)
        return roleButton
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

