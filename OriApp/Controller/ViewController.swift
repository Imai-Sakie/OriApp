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
    @IBOutlet weak var STRpmLabel: UILabel!
    @IBOutlet weak var STRtLabel: UILabel!
    @IBOutlet weak var STRaLabel: UILabel!
    
    /*--------------CON--------------*/
    @IBOutlet weak var CONnLabel: UILabel!
    @IBOutlet weak var CONpmLabel: UILabel!
    @IBOutlet weak var CONtLabel: UILabel!
    @IBOutlet weak var CONaLabel: UILabel!
    
    /*--------------POW--------------*/
    @IBOutlet weak var POWnLabel: UILabel!
    @IBOutlet weak var POWpmLabel: UILabel!
    @IBOutlet weak var POWtLabel: UILabel!
    @IBOutlet weak var POWaLabel: UILabel!
    
    /*--------------DEX--------------*/
    @IBOutlet weak var DEXnLabel: UILabel!
    @IBOutlet weak var DEXpmLabel: UILabel!
    @IBOutlet weak var DEXtLabel: UILabel!
    @IBOutlet weak var DEXaLabel: UILabel!
    
    /*--------------APP--------------*/
    @IBOutlet weak var APPnLabel: UILabel!
    @IBOutlet weak var APPpmLabel: UILabel!
    @IBOutlet weak var APPtLabel: UILabel!
    @IBOutlet weak var APPaLabel: UILabel!
    
    /*--------------SIZ--------------*/
    @IBOutlet weak var SIZnLabel: UILabel!
    @IBOutlet weak var SIZpmLabel: UILabel!
    @IBOutlet weak var SIZtLabel: UILabel!
    @IBOutlet weak var SIZaLabel: UILabel!
    
    /*--------------INT--------------*/
    @IBOutlet weak var INTnLabel: UILabel!
    @IBOutlet weak var INTpmLabel: UILabel!
    @IBOutlet weak var INTtLabel: UILabel!
    @IBOutlet weak var INTaLabel: UILabel!
    
    /*--------------EDU--------------*/
    @IBOutlet weak var EDUnLabel: UILabel!
    @IBOutlet weak var EDUpmLabel: UILabel!
    @IBOutlet weak var EDUtLabel: UILabel!
    @IBOutlet weak var EDUaLabel: UILabel!
    
    /*--------------SAN--------------*/
    @IBOutlet weak var SANnLabel: UILabel!
    @IBOutlet weak var SANpmLabel: UILabel!
    @IBOutlet weak var SANtLabel: UILabel!
    @IBOutlet weak var SANaLabel: UILabel!
    
    /*---------------MP--------------*/
    @IBOutlet weak var MPnLabel: UILabel!
    @IBOutlet weak var MPpmLabel: UILabel!
    @IBOutlet weak var MPtLabel: UILabel!
    @IBOutlet weak var MPaLabel: UILabel!
    
    /*--------------ｱｲﾃﾞｱ--------------*/
    @IBOutlet weak var IdeanLabel: UILabel!
    @IBOutlet weak var IdeapmLabel: UILabel!
    @IBOutlet weak var IdeatLabel: UILabel!
    @IBOutlet weak var IdeaaLabel: UILabel!
    
    /*--------------幸運--------------*/
    @IBOutlet weak var LuckynLabel: UILabel!
    @IBOutlet weak var LuckypmLabel: UILabel!
    @IBOutlet weak var LuckytLabel: UILabel!
    @IBOutlet weak var LuckyaLabel: UILabel!
    
    /*--------------知識--------------*/
    @IBOutlet weak var KnowledgenLabel: UILabel!
    @IBOutlet weak var KnowledgepmLabel: UILabel!
    @IBOutlet weak var KnowledgetLabel: UILabel!
    @IBOutlet weak var KnowledgeaLabel: UILabel!
    
    /*--------------耐久--------------*/
    @IBOutlet weak var EndurancenLabel: UILabel!
    @IBOutlet weak var EndurancepmLabel: UILabel!
    @IBOutlet weak var EndurancetLabel: UILabel!
    @IBOutlet weak var EnduranceaLabel: UILabel!
    
    /*--------------ダメボ--------------*/
    @IBOutlet weak var DBnLabel: UILabel!
    
    /*--------------技能--------------*/
    @IBOutlet weak var JobnLabel: UILabel!
    @IBOutlet weak var JobaLabel: UILabel!
    
    @IBOutlet weak var InterestnLabel: UILabel!
    @IBOutlet weak var InterestaLabel: UILabel!
    
    /*--------------戦闘技能--------------*/
    //回避
    @IBOutlet weak var AvoidancesLabel: UILabel!
    @IBOutlet weak var AvoidancejpTextField: UITextField!
    @IBOutlet weak var AvoidanceipTextField: UITextField!
    @IBOutlet weak var AvoidancetLabel: UILabel!
    
    //キック
    @IBOutlet weak var KicksLabel: UILabel!
    @IBOutlet weak var KickjpTextField: UITextField!
    @IBOutlet weak var KickipTextField: UITextField!
    @IBOutlet weak var KicktTextField: UILabel!
    
    //組み付き
    @IBOutlet weak var WithsLabel: UILabel!
    @IBOutlet weak var WithjpTextField: UITextField!
    @IBOutlet weak var WithipTextField: UITextField!
    @IBOutlet weak var WithtLabel: UILabel!
    
    //パンチ
    @IBOutlet weak var PunchsLabel: UILabel!
    @IBOutlet weak var PunchjpTextField: UITextField!
    @IBOutlet weak var PunchipTextField: UITextField!
    @IBOutlet weak var PunchtLabel: UILabel!
    
    //頭突き
    @IBOutlet weak var GlasgowsLabel: UILabel!
    @IBOutlet weak var GlasgowjpTextField: UITextField!
    @IBOutlet weak var GlasgowipTextField: UITextField!
    @IBOutlet weak var GlasgowtLabel: UILabel!
    
    //投擲
    @IBOutlet weak var ThrowingsLabel: UILabel!
    @IBOutlet weak var ThrowingjpTextField: UITextField!
    @IBOutlet weak var ThrowingipTextField: UITextField!
    @IBOutlet weak var ThrowingtLabel: UILabel!
    
    //ﾏｰｼｬﾙｱｰﾂ
    @IBOutlet weak var MartialsLabel: UILabel!
    @IBOutlet weak var MartialjpTextField: UITextField!
    @IBOutlet weak var MartialipTextField: UITextField!
    @IBOutlet weak var MartialtLabel: UILabel!
    
    //拳銃
    @IBOutlet weak var PistolsLabel: UILabel!
    @IBOutlet weak var PistoljpTextField: UITextField!
    @IBOutlet weak var PistolipTextField: UITextField!
    @IBOutlet weak var PistoltLabel: UILabel!
    
    //ｻﾌﾞﾏｼﾝｶﾞﾝ
    @IBOutlet weak var SubGunsLabel: UILabel!
    @IBOutlet weak var SubGunjpTextField: UITextField!
    @IBOutlet weak var SubGunipTextField: UITextField!
    
    @IBOutlet weak var SubGuntLabel: UILabel!
    
    //ｼｮｯﾄｶﾞﾝ
    @IBOutlet weak var ShotgunsLabel: UILabel!
    @IBOutlet weak var ShotgunjpTextField: UITextField!
    @IBOutlet weak var ShotgunipTextField: UITextField!
    @IBOutlet weak var ShotguntLabel: UILabel!
    
    //マシンガン
    @IBOutlet weak var MachinegunsLabel: UILabel!
    @IBOutlet weak var MachinegunjpTextField: UITextField!
    @IBOutlet weak var MachinegunipTextField: UITextField!
    @IBOutlet weak var MachineguntLabel: UILabel!
    
    //ライフル
    @IBOutlet weak var RiflesLabel: UILabel!
    @IBOutlet weak var RiflejpTextField: UITextField!
    @IBOutlet weak var RifleipTextField: UITextField!
    @IBOutlet weak var RifletLabel: UILabel!
    
    
    
    /*--------------探索技能--------------*/
    //応急手当て
    @IBOutlet weak var FirstaidsLabel: UILabel!
    @IBOutlet weak var FirstaidjpTextField: UITextField!
    @IBOutlet weak var FirstaidipTextField: UITextField!
    @IBOutlet weak var FirstaidtLabel: UILabel!
    
    //鍵開け
    @IBOutlet weak var KeyopensLabel: UILabel!
    @IBOutlet weak var KeyopenjpTextField: UITextField!
    @IBOutlet weak var KeyopenipTextField: UITextField!
    @IBOutlet weak var KeyopentLabel: UILabel!
    
    //隠す
    @IBOutlet weak var HidesLabel: UILabel!
    @IBOutlet weak var HidejpTextField: UITextField!
    @IBOutlet weak var HideipTextField: UITextField!
    @IBOutlet weak var HidetLabel: UILabel!
    
    //隠れる
    @IBOutlet weak var HideoutsLabel: UILabel!
    @IBOutlet weak var HideoutjpTextField: UITextField!
    @IBOutlet weak var HideoutipTextField: UITextField!
    @IBOutlet weak var HideouttLabel: UILabel!
    
    //聞き耳
    @IBOutlet weak var ListensLabel: UILabel!
    @IBOutlet weak var ListenjpTextField: UITextField!
    @IBOutlet weak var ListenipTextField: UITextField!
    @IBOutlet weak var ListentLabel: UILabel!
    
    //忍び歩き
    @IBOutlet weak var WalksLabel: UILabel!
    @IBOutlet weak var WalkjpTextField: UITextField!
    @IBOutlet weak var WalkipTextField: UITextField!
    @IBOutlet weak var WalktLabel: UILabel!
    
    //写真術
    @IBOutlet weak var PhotographysLabel: UILabel!
    @IBOutlet weak var PhotographyjpTextField: UITextField!
    @IBOutlet weak var PhotographyipTextField: UITextField!
    @IBOutlet weak var PhotographytLabel: UILabel!
    
    //精神分析
    @IBOutlet weak var PsychoanalysissLabel: UILabel!
    @IBOutlet weak var PsychoanalysisjpTextField: UITextField!
    @IBOutlet weak var PsychoanalysisipTextField: UITextField!
    @IBOutlet weak var PsychoanalysistLabel: UILabel!
    
    //追跡
    @IBOutlet weak var ChasesLabel: UILabel!
    @IBOutlet weak var ChasejpTextField: UITextField!
    @IBOutlet weak var ChaseipTextField: UITextField!
    @IBOutlet weak var ChasetLabel: UILabel!
    
    //登攀
    @IBOutlet weak var ClimbingsLabel: UILabel!
    @IBOutlet weak var ClimbingjpTextField: UITextField!
    @IBOutlet weak var ClimbingipTextField: UITextField!
    @IBOutlet weak var ClimgingtLabel: UILabel!
    
    
    //図書館
    @IBOutlet weak var LibrarysLabel: UILabel!
    @IBOutlet weak var LibraryjpTextField: UITextField!
    @IBOutlet weak var LibraryipTextField: UITextField!
    @IBOutlet weak var LibrarytLabel: UILabel!
    
    //目星
    @IBOutlet weak var EducatedguesssLabel: UILabel!
    @IBOutlet weak var EducatedgusessjpTextField: UITextField!
    @IBOutlet weak var EducatedguessipTextField: UITextField!
    @IBOutlet weak var EducatedguesstLabel: UILabel!
    
    
    /*--------------行動技能--------------*/
    //運転
    @IBOutlet weak var DrivesLabel: UILabel!
    @IBOutlet weak var DrivejpTextField: UITextField!
    @IBOutlet weak var DriveipTextField: UITextField!
    @IBOutlet weak var DrivetLabel: UILabel!
    
    //機械修理
    @IBOutlet weak var MRepairsLabel: UILabel!
    @IBOutlet weak var MRepairjpTextField: UITextField!
    @IBOutlet weak var MRepairipTextField: UITextField!
    @IBOutlet weak var MRepairtLabel: UILabel!
    
    //重機械操作
    @IBOutlet weak var OperationsLabel: UILabel!
    @IBOutlet weak var OperationjpTextField: UITextField!
    @IBOutlet weak var OperationipTextField: UITextField!
    @IBOutlet weak var OperationtLabel: UILabel!
    
    //乗馬
    @IBOutlet weak var RidingsLabel: UILabel!
    @IBOutlet weak var RidingjpTextField: UITextField!
    @IBOutlet weak var RidingipTextField: UITextField!
    @IBOutlet weak var RidingtLabel: UILabel!
    
    //水泳
    @IBOutlet weak var SwimsLabel: UILabel!
    @IBOutlet weak var SwimjpTextField: UITextField!
    @IBOutlet weak var SwimipTextField: UITextField!
    @IBOutlet weak var SwimtLabel: UILabel!
    
    //製作
    @IBOutlet weak var ProductionsLabel: UILabel!
    @IBOutlet weak var ProductionjpTextField: UITextField!
    @IBOutlet weak var ProductionipTextField: UITextField!
    @IBOutlet weak var ProductiontLabel: UILabel!
    
    //操縦
    @IBOutlet weak var ControlsLabel: UILabel!
    @IBOutlet weak var ControljpTextField: UITextField!
    @IBOutlet weak var ControlipTextField: UITextField!
    @IBOutlet weak var ControltLabel: UILabel!
    
    //跳躍
    @IBOutlet weak var LeapsLabel: UILabel!
    @IBOutlet weak var LeapjpTextField: UITextField!
    @IBOutlet weak var LeapipTextField: UITextField!
    @IBOutlet weak var LeaptLabel: UILabel!
    
    //電気修理
    @IBOutlet weak var ERepairsLabel: UILabel!
    @IBOutlet weak var ERepairjpTextField: UITextField!
    @IBOutlet weak var ERepairipTextField: UITextField!
    @IBOutlet weak var ERepairtLabel: UILabel!
    
    //ナビゲート
    @IBOutlet weak var NavisLabel: UILabel!
    @IBOutlet weak var NavijpTextField: UITextField!
    @IBOutlet weak var NaviipTextField: UITextField!
    @IBOutlet weak var NavitLabel: UILabel!
    
    //変装
    @IBOutlet weak var DisguisesLabel: UILabel!
    @IBOutlet weak var DisguisejpTextField: UITextField!
    @IBOutlet weak var DisguiseipTextField: UITextField!
    @IBOutlet weak var DisguisetLabel: UILabel!
    
    
    /*--------------交渉技能--------------*/
    //言いくるめ
    @IBOutlet weak var TalkintosLabel: UILabel!
    @IBOutlet weak var TalkintojpTextField: UITextField!
    @IBOutlet weak var TalkintoipTextField: UITextField!
    @IBOutlet weak var TalkintotLabel: UILabel!
    
    //信用
    @IBOutlet weak var TrustsLabel: UILabel!
    @IBOutlet weak var TrustjpaTextField: UITextField!
    @IBOutlet weak var TrustipTextField: UITextField!
    @IBOutlet weak var TrusttLabel: UILabel!
    
    //説得
    @IBOutlet weak var PersuasionsLabel: UILabel!
    @IBOutlet weak var PersuasionjpTextField: UITextField!
    @IBOutlet weak var PersuasionipTextField: UITextField!
    @IBOutlet weak var PersuasiontLabel: UILabel!
    
    //値切り
    @IBOutlet weak var BargainsLabel: UILabel!
    @IBOutlet weak var BargainjpTextField: UITextField!
    @IBOutlet weak var BargainipTextField: UITextField!
    @IBOutlet weak var BargaintLabel: UILabel!
    
    //母国語
    @IBOutlet weak var MTonguesLabel: UILabel!
    @IBOutlet weak var MTonguejpTextField: UITextField!
    @IBOutlet weak var MTongueipTextField: UITextField!
    @IBOutlet weak var MTonguetLabel: UILabel!
    
    
    /*--------------知識技能--------------*/
    //医学
    @IBOutlet weak var MedicinesLabel: UILabel!
    @IBOutlet weak var MedicinejpTextField: UITextField!
    @IBOutlet weak var MedicineipTextField: UITextField!
    @IBOutlet weak var MedicinetLabel: UILabel!
    
    //オカルト
    @IBOutlet weak var OccultsLabel: UILabel!
    @IBOutlet weak var OccultjpTextField: UITextField!
    @IBOutlet weak var OccultipTextField: UITextField!
    @IBOutlet weak var OcculttLabel: UILabel!
    
    //化学
    @IBOutlet weak var ChemistrysLabel: UILabel!
    @IBOutlet weak var ChemistryjpTextField: UITextField!
    @IBOutlet weak var ChemistryipTextField: UITextField!
    @IBOutlet weak var ChemistrytLabel: UILabel!
    
    //ｸﾄｩﾙﾌ神話
    @IBOutlet weak var CthulhusLabel: UILabel!
    @IBOutlet weak var CthulhujpTextField: UITextField!
    @IBOutlet weak var CthulhuipTextField: UITextField!
    @IBOutlet weak var CthulhutLabel: UILabel!
    
    //芸術
    @IBOutlet weak var ArtsLabel: UILabel!
    @IBOutlet weak var ArtjpTextField: UITextField!
    @IBOutlet weak var ArtipTextField: UITextField!
    @IBOutlet weak var ArttLabel: UILabel!
    
    //経理
    @IBOutlet weak var AccountingsLabel: UILabel!
    @IBOutlet weak var AccountingjpTextField: UITextField!
    @IBOutlet weak var AccountingipTextField: UITextField!
    @IBOutlet weak var AccountingtLabel: UILabel!
    
    //考古学
    @IBOutlet weak var ArcheologysLabel: UILabel!
    @IBOutlet weak var ArcheologyjpTextField: UITextField!
    @IBOutlet weak var ArcheologyipTextField: UITextField!
    @IBOutlet weak var ArcheologytLabel: UILabel!
    
    //ｺﾝﾋﾟｭｰﾀｰ
    @IBOutlet weak var ComputersLabel: UILabel!
    @IBOutlet weak var ComputerjpTextLabel: UITextField!
    @IBOutlet weak var ComputeripTextLabel: UITextField!
    @IBOutlet weak var ComputertLabel: UILabel!
    
    //心理学
    @IBOutlet weak var PsychologysLabel: UILabel!
    @IBOutlet weak var PsychologyjpTextField: UITextField!
    @IBOutlet weak var PsychologyipTextField: UITextField!
    @IBOutlet weak var PsychologytLabel: UILabel!
    
    //人類学
    @IBOutlet weak var AnthropologysLabel: UILabel!
    @IBOutlet weak var AnthropologyjpTextField: UITextField!
    @IBOutlet weak var AnthropologyipTextField: UITextField!
    @IBOutlet weak var AnthropologytLabel: UILabel!
    
    //生物学
    @IBOutlet weak var BiologysLabel: UILabel!
    @IBOutlet weak var BiologyjpTextField: UITextField!
    @IBOutlet weak var BiologyipTextField: UITextField!
    @IBOutlet weak var BiologytLabel: UILabel!
    
    //地質学
    @IBOutlet weak var GeologysLabel: UILabel!
    @IBOutlet weak var GeologyjpTextField: UITextField!
    @IBOutlet weak var GeologyipTextField: UITextField!
    @IBOutlet weak var GeologytLabel: UILabel!
    
    //電子工学
    @IBOutlet weak var EEsLabel: UILabel!
    @IBOutlet weak var EEjpTextField: UITextField!
    @IBOutlet weak var EEipTextField: UITextField!
    @IBOutlet weak var EEtLabel: UILabel!
    
    //天文学
    @IBOutlet weak var AstronomysLabel: UILabel!
    @IBOutlet weak var AstronomyjpTextField: UITextField!
    @IBOutlet weak var AstronomyipTextField: UITextField!
    @IBOutlet weak var AstronomytLabel: UILabel!
    
    //博物学
    @IBOutlet weak var NHistorysLabel: UILabel!
    @IBOutlet weak var NHistoryjpTextField: UITextField!
    @IBOutlet weak var NHistoryipTextField: UITextField!
    @IBOutlet weak var NHistorytLabel: UILabel!
    
    //物理学
    @IBOutlet weak var PhysicssLabel: UILabel!
    @IBOutlet weak var PhysicsjpTextField: UITextField!
    @IBOutlet weak var PhysicsipTextField: UITextField!
    @IBOutlet weak var PhysicstLabel: UILabel!
    
    //法律
    @IBOutlet weak var LawsLabel: UILabel!
    @IBOutlet weak var LawjpTextField: UITextField!
    @IBOutlet weak var LawipTextField: UITextField!
    @IBOutlet weak var LawtLabel: UILabel!
    
    //薬学
    @IBOutlet weak var PharmacysLabel: UILabel!
    @IBOutlet weak var PharmacyjpTextField: UITextField!
    @IBOutlet weak var PharmacyipTextField: UITextField!
    @IBOutlet weak var PharmacytLabel: UILabel!
    
    //歴史
    @IBOutlet weak var HistorysLabel: UILabel!
    @IBOutlet weak var HistoryjpTextField: UITextField!
    @IBOutlet weak var HistoryipTextField: UITextField!
    @IBOutlet weak var HistorytLabel: UILabel!
    
    
    
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
    
    
    /*--------------その他--------------*/
    var checkboxArray: [UIButton] = []
    
    var backgroundView: UIView!
    var roleSelectView: UIView!
    
    var STRTotal: Int = 0
    var CONTotal: Int = 0
    var SIZTotal: Int = 0
    
    var AvoidanceTotal: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
       
        AvoidancejpTextField.delegate = self
        AvoidanceipTextField.delegate = self
        
        AvoidancejpTextField.addTarget(self, action: #selector(self.AvoidanceJPChange(_:)), for: .editingChanged)
        AvoidanceipTextField.addTarget(self, action: #selector(self.AvoidanceIPChange(_:)), for: .editingChanged)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @objc func AvoidanceJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if AvoidanceipTextField.text?.isEmpty != true {
                AvoidanceTotal = Int(AvoidancesLabel.text!)! + Int(AvoidanceipTextField.text!)!
                AvoidancetLabel.text = String(AvoidanceTotal)
                print("aaaaaaaa")
            } else if AvoidanceipTextField.text?.isEmpty == true {
                AvoidancetLabel.text = AvoidancesLabel.text
                print("bbbbbbb")
            }
        } else {
            let total = Int(JobnLabel.text!)! - Int(sender.text!)!
            JobnLabel.text = String(total)
            
            if AvoidanceipTextField.text?.isEmpty == true {
                AvoidanceTotal = Int(AvoidancesLabel.text!)! + Int(sender.text!)!
                AvoidancetLabel.text = String(AvoidanceTotal)
            } else {
                AvoidanceTotal = Int(AvoidancesLabel.text!)! + Int(sender.text!)! + Int(AvoidanceipTextField.text!)!
                AvoidancetLabel.text = String(AvoidanceTotal)
            }
        }
    }
    
    
    @objc func AvoidanceIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if AvoidancejpTextField.text?.isEmpty != true {
                AvoidanceTotal = Int(AvoidancesLabel.text!)! + Int(AvoidancejpTextField.text!)!
                AvoidancetLabel.text = String(AvoidanceTotal)
            } else if AvoidanceipTextField.text?.isEmpty == true {
                AvoidancetLabel.text = AvoidancesLabel.text
            }
        } else {
            let total = Int(JobnLabel.text!)! - Int(sender.text!)!
            JobnLabel.text = String(total)
            
            if AvoidancejpTextField.text?.isEmpty == true {
                AvoidanceTotal = Int(AvoidancesLabel.text!)! + Int(sender.text!)!
                AvoidancetLabel.text = String(AvoidanceTotal)
            } else {
                AvoidanceTotal = Int(AvoidancesLabel.text!)! + Int(AvoidancejpTextField.text!)! + Int(sender.text!)!
                AvoidancetLabel.text = String(AvoidanceTotal)
            }
        }
    }
    
    
    
    /*--------------±ボタンの処理--------------*/
    //STR
    @IBAction func STRpBtn(_ sender: UIButton) {
        var pm = Int(STRpmLabel.text!)
        pm = pm! + 1
        let total = Int(STRnLabel.text!)! + 1
        STRnLabel.text = String(total)
        STRpmLabel.text = String(pm!)
    }
    
    @IBAction func STRmBtn(_ sender: UIButton) {
        var pm = Int(STRpmLabel.text!)
        pm = pm! - 1
        let total = Int(STRnLabel.text!)! - 1
        STRnLabel.text = String(total)
        STRpmLabel.text = String(pm!)
    }
    
    @IBAction func STRtpBtn(_ sender: UIButton) {
        var pm = Int(STRtLabel.text!)
        pm = pm! + 1
        let total = Int(STRnLabel.text!)! + 1
        STRnLabel.text = String(total)
        STRtLabel.text = String(pm!)
    }
    
    @IBAction func STRtmBtn(_ sender: UIButton) {
        var pm = Int(STRtLabel.text!)
        pm = pm! - 1
        let total = Int(STRnLabel.text!)! - 1
        STRnLabel.text = String(total)
        STRtLabel.text = String(pm!)
    }
    
    
    //CON
    @IBAction func CONpBtn(_ sender: UIButton) {
        var pm = Int(CONpmLabel.text!)
        pm = pm! + 1
        let total = Int(CONnLabel.text!)! + 1
        CONnLabel.text = String(total)
        CONpmLabel.text = String(pm!)
    }
    
    @IBAction func CONmBtn(_ sender: UIButton) {
        var pm = Int(CONpmLabel.text!)
        pm = pm! - 1
        let total = Int(CONnLabel.text!)! - 1
        CONnLabel.text = String(total)
        CONpmLabel.text = String(pm!)
    }
    
    @IBAction func CONtpBtn(_ sender: UIButton) {
        var pm = Int(CONtLabel.text!)
        pm = pm! + 1
        let total = Int(CONnLabel.text!)! + 1
        CONnLabel.text = String(total)
        CONtLabel.text = String(pm!)
    }
    
    @IBAction func CONtmBtn(_ sender: UIButton) {
        var pm = Int(CONtLabel.text!)
        pm = pm! - 1
        let total = Int(CONnLabel.text!)! - 1
        CONnLabel.text = String(total)
        CONtLabel.text = String(pm!)
    }
    
    
    //POW
    @IBAction func POWpBtn(_ sender: UIButton) {
        var pm = Int(POWpmLabel.text!)
        pm = pm! + 1
        let total = Int(POWnLabel.text!)! + 1
        POWnLabel.text = String(total)
        POWpmLabel.text = String(pm!)
    }
    
    @IBAction func POWmBtn(_ sender: UIButton) {
        var pm = Int(POWpmLabel.text!)
        pm = pm! - 1
        let total = Int(POWnLabel.text!)! - 1
        POWnLabel.text = String(total)
        POWpmLabel.text = String(pm!)
    }
    
    @IBAction func POWtpBtn(_ sender: UIButton) {
        var pm = Int(POWtLabel.text!)
        pm = pm! + 1
        let total = Int(POWnLabel.text!)! + 1
        POWnLabel.text = String(total)
        POWtLabel.text = String(pm!)
    }
    
    @IBAction func POWtmBtn(_ sender: UIButton) {
        var pm = Int(POWtLabel.text!)
        pm = pm! - 1
        let total = Int(POWnLabel.text!)! - 1
        POWnLabel.text = String(total)
        POWtLabel.text = String(pm!)
    }
    
    
    //DEX
    @IBAction func DEXpBtn(_ sender: UIButton) {
        var pm = Int(DEXpmLabel.text!)
        pm = pm! + 1
        let total = Int(DEXnLabel.text!)! + 1
        DEXnLabel.text = String(total)
        DEXpmLabel.text = String(pm!)
    }
    
    @IBAction func DEXmBtn(_ sender: UIButton) {
        var pm = Int(DEXpmLabel.text!)
        pm = pm! - 1
        let total = Int(DEXnLabel.text!)! - 1
        DEXnLabel.text = String(total)
        DEXpmLabel.text = String(pm!)
    }
    
    @IBAction func DEXtpBtn(_ sender: UIButton) {
        var pm = Int(DEXtLabel.text!)
        pm = pm! + 1
        let total = Int(DEXnLabel.text!)! + 1
        DEXnLabel.text = String(total)
        DEXtLabel.text = String(pm!)
    }
    
    @IBAction func DEXtmBtn(_ sender: UIButton) {
        var pm = Int(DEXtLabel.text!)
        pm = pm! - 1
        let total = Int(DEXnLabel.text!)! - 1
        DEXnLabel.text = String(total)
        DEXtLabel.text = String(pm!)
    }
    
    
    //APP
    @IBAction func APPpBtn(_ sender: UIButton) {
        var pm = Int(APPpmLabel.text!)
        pm = pm! + 1
        let total = Int(APPnLabel.text!)! + 1
        APPnLabel.text = String(total)
        APPpmLabel.text = String(pm!)
    }
    
    @IBAction func APPmBtn(_ sender: UIButton) {
        var pm = Int(APPpmLabel.text!)
        pm = pm! - 1
        let total = Int(APPnLabel.text!)! - 1
        APPnLabel.text = String(total)
        APPpmLabel.text = String(pm!)
    }
    
    @IBAction func APPtpBtn(_ sender: UIButton) {
        var pm = Int(APPtLabel.text!)
        pm = pm! + 1
        let total = Int(APPnLabel.text!)! + 1
        APPnLabel.text = String(total)
        APPtLabel.text = String(pm!)
    }
    
    @IBAction func APPtmBtn(_ sender: UIButton) {
        var pm = Int(APPtLabel.text!)
        pm = pm! - 1
        let total = Int(APPnLabel.text!)! - 1
        APPnLabel.text = String(total)
        APPtLabel.text = String(pm!)
    }
    
    
    //SIZ
    @IBAction func SIZpBtn(_ sender: UIButton) {
        var pm = Int(SIZpmLabel.text!)
        pm = pm! + 1
        let total = Int(SIZnLabel.text!)! + 1
        SIZnLabel.text = String(total)
        SIZpmLabel.text = String(pm!)
    }
    
    @IBAction func SIZmBtn(_ sender: UIButton) {
        var pm = Int(SIZpmLabel.text!)
        pm = pm! - 1
        let total = Int(SIZnLabel.text!)! - 1
        SIZnLabel.text = String(total)
        SIZpmLabel.text = String(pm!)
    }
    
    @IBAction func SIZtpBtn(_ sender: UIButton) {
        var pm = Int(SIZtLabel.text!)
        pm = pm! + 1
        let total = Int(SIZnLabel.text!)! + 1
        SIZnLabel.text = String(total)
        SIZtLabel.text = String(pm!)
    }
    
    @IBAction func SIZtmBtn(_ sender: UIButton) {
        var pm = Int(SIZtLabel.text!)
        pm = pm! - 1
        let total = Int(SIZnLabel.text!)! - 1
        SIZnLabel.text = String(total)
        SIZtLabel.text = String(pm!)
    }
    
    
    //INT
    @IBAction func INTpBtin(_ sender: UIButton) {
        var pm = Int(INTpmLabel.text!)
        pm = pm! + 1
        let total = Int(INTnLabel.text!)! + 1
        INTnLabel.text = String(total)
        INTpmLabel.text = String(pm!)
    }
    
    @IBAction func INTmBtn(_ sender: UIButton) {
        var pm = Int(INTpmLabel.text!)
        pm = pm! - 1
        let total = Int(INTnLabel.text!)! - 1
        INTnLabel.text = String(total)
        INTpmLabel.text = String(pm!)
    }
    
    @IBAction func INTtpBtn(_ sender: UIButton) {
        var pm = Int(INTtLabel.text!)
        pm = pm! + 1
        let total = Int(INTnLabel.text!)! + 1
        INTnLabel.text = String(total)
        INTtLabel.text = String(pm!)
    }
    
    @IBAction func INTtmBtn(_ sender: UIButton) {
        var pm = Int(INTtLabel.text!)
        pm = pm! - 1
        let total = Int(INTnLabel.text!)! - 1
        INTnLabel.text = String(total)
        INTtLabel.text = String(pm!)
    }
    
    
    //EDU
    @IBAction func EDUpBtn(_ sender: UIButton) {
        var pm = Int(EDUpmLabel.text!)
        pm = pm! + 1
        let total = Int(EDUnLabel.text!)! + 1
        EDUnLabel.text = String(total)
        EDUpmLabel.text = String(pm!)
    }
    
    @IBAction func EDUmBtn(_ sender: UIButton) {
        var pm = Int(EDUpmLabel.text!)
        pm = pm! - 1
        let total = Int(EDUnLabel.text!)! - 1
        EDUnLabel.text = String(total)
        EDUpmLabel.text = String(pm!)
    }
    
    @IBAction func EDUtpBtn(_ sender: UIButton) {
        var pm = Int(EDUtLabel.text!)
        pm = pm! + 1
        let total = Int(EDUnLabel.text!)! + 1
        EDUnLabel.text = String(total)
        EDUtLabel.text = String(pm!)
    }
    
    @IBAction func EDUtmBtn(_ sender: UIButton) {
        var pm = Int(EDUtLabel.text!)
        pm = pm! - 1
        let total = Int(EDUnLabel.text!)! - 1
        EDUnLabel.text = String(total)
        EDUtLabel.text = String(pm!)
    }
    
    
    //SAN
    @IBAction func SANpBtn(_ sender: UIButton) {
        var pm = Int(SANpmLabel.text!)
        pm = pm! + 1
        let total = Int(SANnLabel.text!)! + 1
        SANnLabel.text = String(total)
        SANpmLabel.text = String(pm!)
    }
    
    @IBAction func SANmBtn(_ sender: UIButton) {
        var pm = Int(SANpmLabel.text!)
        pm = pm! - 1
        let total = Int(SANnLabel.text!)! - 1
        SANnLabel.text = String(total)
        SANpmLabel.text = String(pm!)
    }
    
    @IBAction func SANtpBtn(_ sender: UIButton) {
        var pm = Int(SANtLabel.text!)
        pm = pm! + 1
        let total = Int(SANnLabel.text!)! + 1
        SANnLabel.text = String(total)
        SANtLabel.text = String(pm!)
    }
    
    @IBAction func SANtmBtn(_ sender: UIButton) {
        var pm = Int(SANtLabel.text!)
        pm = pm! - 1
        let total = Int(SANnLabel.text!)! - 1
        SANnLabel.text = String(total)
        SANtLabel.text = String(pm!)
    }
    
    
    //MP
    @IBAction func MPpBtn(_ sender: UIButton) {
        var pm = Int(MPpmLabel.text!)
        pm = pm! + 1
        let total = Int(MPnLabel.text!)! + 1
        MPnLabel.text = String(total)
        MPpmLabel.text = String(pm!)
    }
    
    @IBAction func MPmBtn(_ sender: UIButton) {
        var pm = Int(MPpmLabel.text!)
        pm = pm! - 1
        let total = Int(MPnLabel.text!)! - 1
        MPnLabel.text = String(total)
        MPpmLabel.text = String(pm!)
    }
    
    @IBAction func MPtpBtn(_ sender: UIButton) {
        var pm = Int(MPtLabel.text!)
        pm = pm! + 1
        let total = Int(MPnLabel.text!)! + 1
        MPnLabel.text = String(total)
        MPtLabel.text = String(pm!)
    }
    
    @IBAction func MPtmBtn(_ sender: UIButton) {
        var pm = Int(MPtLabel.text!)
        pm = pm! - 1
        let total = Int(MPnLabel.text!)! - 1
        MPnLabel.text = String(total)
        MPtLabel.text = String(pm!)
    }
    
    
    //ｱｲﾃﾞｱ
    @IBAction func IdeapBtn(_ sender: UIButton) {
        var pm = Int(IdeapmLabel.text!)
        pm = pm! + 1
        let total = Int(IdeanLabel.text!)! + 1
        IdeanLabel.text = String(total)
        IdeapmLabel.text = String(pm!)
    }
    
    @IBAction func IdeamBtn(_ sender: UIButton) {
        var pm = Int(IdeapmLabel.text!)
        pm = pm! - 1
        let total = Int(IdeanLabel.text!)! - 1
        IdeanLabel.text = String(total)
        IdeapmLabel.text = String(pm!)
    }
    
    @IBAction func IdeatpBtn(_ sender: UIButton) {
        var pm = Int(IdeatLabel.text!)
        pm = pm! + 1
        let total = Int(IdeanLabel.text!)! + 1
        IdeanLabel.text = String(total)
        IdeatLabel.text = String(pm!)
    }
    
    @IBAction func IdeatmBtn(_ sender: UIButton) {
        var pm = Int(IdeatLabel.text!)
        pm = pm! - 1
        let total = Int(IdeanLabel.text!)! - 1
        IdeanLabel.text = String(total)
        IdeatLabel.text = String(pm!)
    }
    
    
    //幸運
    @IBAction func LuckypBtn(_ sender: UIButton) {
        var pm = Int(LuckypmLabel.text!)
        pm = pm! + 1
        let total = Int(LuckynLabel.text!)! + 1
        LuckynLabel.text = String(total)
        LuckypmLabel.text = String(pm!)
    }
    
    @IBAction func LuckymBtn(_ sender: UIButton) {
        var pm = Int(LuckypmLabel.text!)
        pm = pm! - 1
        let total = Int(LuckynLabel.text!)! - 1
        LuckynLabel.text = String(total)
        LuckypmLabel.text = String(pm!)
    }
    
    @IBAction func LuckytpBtn(_ sender: UIButton) {
        var pm = Int(LuckytLabel.text!)
        pm = pm! + 1
        let total = Int(LuckynLabel.text!)! + 1
        LuckynLabel.text = String(total)
        LuckytLabel.text = String(pm!)
    }
    
    @IBAction func LuckytmBtn(_ sender: UIButton) {
        var pm = Int(LuckytLabel.text!)
        pm = pm! - 1
        let total = Int(LuckynLabel.text!)! - 1
        LuckynLabel.text = String(total)
        LuckytLabel.text = String(pm!)
    }
    
    
    //知識
    @IBAction func KnowledgepBtn(_ sender: UIButton) {
        var pm = Int(KnowledgepmLabel.text!)
        pm = pm! + 1
        let total = Int(KnowledgenLabel.text!)! + 1
        KnowledgenLabel.text = String(total)
        KnowledgepmLabel.text = String(pm!)
    }
    
    @IBAction func KnowledgemBtn(_ sender: UIButton) {
        var pm = Int(KnowledgepmLabel.text!)
        pm = pm! - 1
        let total = Int(KnowledgenLabel.text!)! - 1
        KnowledgenLabel.text = String(total)
        KnowledgepmLabel.text = String(pm!)
    }
    
    @IBAction func KnowledgetpBtn(_ sender: UIButton) {
        var pm = Int(KnowledgetLabel.text!)
        pm = pm! + 1
        let total = Int(KnowledgenLabel.text!)! + 1
        KnowledgenLabel.text = String(total)
        KnowledgetLabel.text = String(pm!)
    }
    
    @IBAction func KnowledgetmBtn(_ sender: UIButton) {
        var pm = Int(KnowledgetLabel.text!)
        pm = pm! - 1
        let total = Int(KnowledgenLabel.text!)! - 1
        KnowledgenLabel.text = String(total)
        KnowledgetLabel.text = String(pm!)
    }
    
    
    //耐久
    @IBAction func EndurancepBtn(_ sender: UIButton) {
        var pm = Int(EndurancepmLabel.text!)
        pm = pm! + 1
        let total = Int(EndurancenLabel.text!)! + 1
        EndurancenLabel.text = String(total)
        EndurancepmLabel.text = String(pm!)
    }
    
    @IBAction func EndurancemBtn(_ sender: UIButton) {
        var pm = Int(EndurancepmLabel.text!)
        pm = pm! - 1
        let total = Int(EndurancenLabel.text!)! - 1
        EndurancenLabel.text = String(total)
        EndurancepmLabel.text = String(pm!)
    }
    
    @IBAction func EndurancetpBtn(_ sender: UIButton) {
        var pm = Int(EndurancetLabel.text!)
        pm = pm! + 1
        let total = Int(EndurancenLabel.text!)! + 1
        EndurancenLabel.text = String(total)
        EndurancetLabel.text = String(pm!)
    }
    
    @IBAction func EndurancetmBtn(_ sender: UIButton) {
        var pm = Int(EndurancetLabel.text!)
        pm = pm! - 1
        let total = Int(EndurancenLabel.text!)! - 1
        EndurancenLabel.text = String(total)
        EndurancetLabel.text = String(pm!)
    }
    
    
    
    /*--------------ボタンの処理--------------*/
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
                print("STRDiesが呼ばれました")
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
                print("POWDiesが呼ばれました")
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
                print("DEXDiesが呼ばれました")
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
                print("APPDiesが呼ばれました")
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
                print("SIZDiesが呼ばれました")
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
                print("INTDiesが呼ばれました")
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
                print("EDUDiesが呼ばれました")
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
        AvoidancesLabel.text = String(total * 2)
        AvoidancetLabel.text = String(total * 2)
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
        InterestaLabel.text = String(total * 10)
        InterestnLabel.text = String(total * 10)
    }
    
    
    @objc func EDUDies(_ sender: Timer) {
        let rnd1 = Int.random(in: 1...6)
        let rnd2 = Int.random(in: 1...6)
        let rnd3 = Int.random(in: 1...6)
        let total = rnd1 + rnd2 + rnd3 + 3
        EDUaLabel.text = String(total)
        EDUnLabel.text = String(total)
        if total > 100 {
            KnowledgeaLabel.text = String(99)
            KnowledgenLabel.text = String(99)
        } else {
            KnowledgeaLabel.text = String(total * 5)
            KnowledgenLabel.text = String(total * 5)
        }
        JobaLabel.text = String(total * 20)
        JobnLabel.text = String(total * 20)
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

