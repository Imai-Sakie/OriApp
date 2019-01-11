//
//  ViewController.swift
//  OriApp
//
//  Created by 今井咲江 on 2018/08/04.
//  Copyright © 2018年 imai sakie. All rights reserved.
//

import UIKit
import CTCheckbox

class ViewController: UIViewController, UITextFieldDelegate, UIScrollViewDelegate {
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
    @IBOutlet weak var KicktLabel: UILabel!
    
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
    @IBOutlet weak var ClimbingtLabel: UILabel!
    
    
    //図書館
    @IBOutlet weak var LibrarysLabel: UILabel!
    @IBOutlet weak var LibraryjpTextField: UITextField!
    @IBOutlet weak var LibraryipTextField: UITextField!
    @IBOutlet weak var LibrarytLabel: UILabel!
    
    //目星
    @IBOutlet weak var EducatedguesssLabel: UILabel!
    @IBOutlet weak var EducatedguessjpTextField: UITextField!
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
    @IBOutlet weak var TrustjpTextField: UITextField!
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
    @IBOutlet weak var ComputerjpTextField: UITextField!
    @IBOutlet weak var ComputeripTextField: UITextField!
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
    //高さを変える用
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var ViewHeight: NSLayoutConstraint!
    @IBOutlet weak var FormViewHeight: NSLayoutConstraint!
    
    
    var checkboxArray: [UIButton] = []
    
    var backgroundView: UIView!
    var roleSelectView: UIView!
    
    var STRTotal: Int = 0
    var CONTotal: Int = 0
    var SIZTotal: Int = 0
    
    var JPtotal: Int = 0
    var IPtotal: Int = 0
    
    //計算用
    var AvoidanceTotal: Int!
    var KickTotal: Int!
    var WithTotal: Int!
    var PunchTotal: Int!
    var GlasgowTotal: Int!
    var ThrowingTotal: Int!
    var MartialTotal: Int!
    var PistolTotal: Int!
    var SubGunTotal: Int!
    var ShotgunTotal: Int!
    var MachinegunTotal: Int!
    var RifleTotal: Int!
    var FirstaidTotal: Int!
    var KeyopenTotal: Int!
    var HideTotal: Int!
    var HideoutTotal: Int!
    var ListenTotal: Int!
    var WalkTotal: Int!
    var PhotographyTotal: Int!
    var PsychoanalysisTotal: Int!
    var ChaseTotal: Int!
    var ClimbingTotal: Int!
    var LibraryTotal: Int!
    var EducatedguessTotal: Int!
    var DriveTotal: Int!
    var MRepairTotal: Int!
    var OperationTotal: Int!
    var RidingTotal: Int!
    var SwimTotal: Int!
    var ProductionTotal: Int!
    var ControlTotal: Int!
    var LeapTotal: Int!
    var ERepairTotal: Int!
    var NaviTotal: Int!
    var DisguiseTotal: Int!
    var TalkintoTotal: Int!
    var TrustTotal: Int!
    var PersuasionTotal: Int!
    var BargainTotal: Int!
    var MTongueTotal: Int!
    var MedicineTotal: Int!
    var OccultTotal: Int!
    var ChemistryTotal: Int!
    var CthulhuTotal: Int!
    var ArtTotal: Int!
    var AccountingTotal: Int!
    var ArcheologyTotal: Int!
    var ComputerTotal: Int!
    var PsychologyTotal: Int!
    var AnthropologyTotal: Int!
    var BiologyTotal: Int!
    var GeologyTotal: Int!
    var EETotal: Int!
    var AstronomyTotal: Int!
    var NHistoryTotal: Int!
    var PhysicsTotal: Int!
    var LawTotal: Int!
    var PharmacyTotal: Int!
    var HistoryTotal: Int!
    
    
    //for文回す用
    @IBOutlet var TextFieldjpArray: [UITextField]!
    @IBOutlet var TextFieldipArray: [UITextField]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        //delegateの適用
        for tfjp in TextFieldjpArray {
            tfjp.delegate = self
            tfjp.keyboardType = UIKeyboardType.numberPad
        }
        for tfip in TextFieldipArray {
            tfip.delegate = self
            tfip.keyboardType = UIKeyboardType.numberPad
        }
        
        //TextFieldの監視
        AvoidancejpTextField.addTarget(self, action: #selector(self.AvoidanceJPChange(_:)), for: .editingChanged)
        AvoidanceipTextField.addTarget(self, action: #selector(self.AvoidanceIPChange(_:)), for: .editingChanged)
        
        KickjpTextField.addTarget(self, action: #selector(self.KickJPChange(_:)), for: .editingChanged)
        KickipTextField.addTarget(self, action: #selector(self.KickIPChange(_:)), for: .editingChanged)
        
        WithjpTextField.addTarget(self, action: #selector(self.WithJPChange(_:)), for: .editingChanged)
        WithipTextField.addTarget(self, action: #selector(self.WithIPChange(_:)), for: .editingChanged)
        
        PunchjpTextField.addTarget(self, action: #selector(self.PunchJPChange(_:)), for: .editingChanged)
        PunchipTextField.addTarget(self, action: #selector(self.PunchIPChange(_:)), for: .editingChanged)
        
        GlasgowjpTextField.addTarget(self, action: #selector(self.GlasgowJPChange(_:)), for: .editingChanged)
        GlasgowipTextField.addTarget(self, action: #selector(self.GlasgowIPChange(_:)), for: .editingChanged)
        
        ThrowingjpTextField.addTarget(self, action: #selector(self.ThrowingJPChange(_:)), for: .editingChanged)
        ThrowingipTextField.addTarget(self, action: #selector(self.ThrowingIPChange(_:)), for: .editingChanged)
        
        MartialjpTextField.addTarget(self, action: #selector(self.MartialJPChange(_:)), for: .editingChanged)
        MartialipTextField.addTarget(self, action: #selector(self.MartialIPChange(_:)), for: .editingChanged)
        
        PistoljpTextField.addTarget(self, action: #selector(self.PistolJPChange(_:)), for: .editingChanged)
        PistolipTextField.addTarget(self, action: #selector(self.PistolIPChange(_:)), for: .editingChanged)
        
        ShotgunjpTextField.addTarget(self, action: #selector(self.ShotgunJPChange(_:)), for: .editingChanged)
        ShotgunipTextField.addTarget(self, action: #selector(self.ShotgunIPChange(_:)), for: .editingChanged)
        
        MachinegunjpTextField.addTarget(self, action: #selector(self.MachinegunJPChange(_:)), for: .editingChanged)
        MachinegunipTextField.addTarget(self, action: #selector(self.MachinegunIPChange(_:)), for: .editingChanged)
        
        RiflejpTextField.addTarget(self, action: #selector(self.RifleJPChange(_:)), for: .editingChanged)
        RifleipTextField.addTarget(self, action: #selector(self.RifleIPChange(_:)), for: .editingChanged)
        
        FirstaidjpTextField.addTarget(self, action: #selector(self.FirstaidJPChange(_:)), for: .editingChanged)
        FirstaidipTextField.addTarget(self, action: #selector(self.FirstaidIPChange(_:)), for: .editingChanged)
        
        KeyopenjpTextField.addTarget(self, action: #selector(self.KeyopenJPChange(_:)), for: .editingChanged)
        KeyopenipTextField.addTarget(self, action: #selector(self.KeyopenIPChange(_:)), for: .editingChanged)
        
        HidejpTextField.addTarget(self, action: #selector(self.HideJPChange(_:)), for: .editingChanged)
        HideipTextField.addTarget(self, action: #selector(self.HideIPChange(_:)), for: .editingChanged)
        
        HideoutjpTextField.addTarget(self, action: #selector(self.HideoutJPChange(_:)), for: .editingChanged)
        HideoutipTextField.addTarget(self, action: #selector(self.HideoutIPChange(_:)), for: .editingChanged)
        
        ListenjpTextField.addTarget(self, action: #selector(self.ListenJPChange(_:)), for: .editingChanged)
        ListenipTextField.addTarget(self, action: #selector(self.ListenIPChange(_:)), for: .editingChanged)
        
        WalkjpTextField.addTarget(self, action: #selector(self.WalkJPChange(_:)), for: .editingChanged)
        WalkipTextField.addTarget(self, action: #selector(self.WalkIPChange(_:)), for: .editingChanged)
        
        PhotographyjpTextField.addTarget(self, action: #selector(self.PhotographyJPChange(_:)), for: .editingChanged)
        PhotographyipTextField.addTarget(self, action: #selector(self.PhotographyIPChange(_:)), for: .editingChanged)
        
        PsychoanalysisjpTextField.addTarget(self, action: #selector(self.PsychoanalysisJPChange(_:)), for: .editingChanged)
        PsychoanalysisipTextField.addTarget(self, action: #selector(self.PsychoanalysisIPChange(_:)), for: .editingChanged)
        
        ChasejpTextField.addTarget(self, action: #selector(self.ChaseJPChange(_:)), for: .editingChanged)
        ChaseipTextField.addTarget(self, action: #selector(self.ChaseIPChange(_:)), for: .editingChanged)
        
        ClimbingjpTextField.addTarget(self, action: #selector(self.ClimbingJPChange(_:)), for: .editingChanged)
        ClimbingipTextField.addTarget(self, action: #selector(self.ClimbingIPChange(_:)), for: .editingChanged)
        
        LibraryjpTextField.addTarget(self, action: #selector(self.LibraryJPChange(_:)), for: .editingChanged)
        LibraryipTextField.addTarget(self, action: #selector(self.LibraryIPChange(_:)), for: .editingChanged)
        
        EducatedguessjpTextField.addTarget(self, action: #selector(self.EducatedguessJPChange(_:)), for: .editingChanged)
        EducatedguessipTextField.addTarget(self, action: #selector(self.EducatedguessIPChange(_:)), for: .editingChanged)
        
        DrivejpTextField.addTarget(self, action: #selector(self.DriveJPChange(_:)), for: .editingChanged)
        DriveipTextField.addTarget(self, action: #selector(self.DriveIPChange(_:)), for: .editingChanged)
        
        MRepairjpTextField.addTarget(self, action: #selector(self.MRepairJPChange(_:)), for: .editingChanged)
        MRepairipTextField.addTarget(self, action: #selector(self.MRepairIPChange(_:)), for: .editingChanged)
        
        OperationjpTextField.addTarget(self, action: #selector(self.OperationJPChange(_:)), for: .editingChanged)
        OperationipTextField.addTarget(self, action: #selector(self.OperationIPChange(_:)), for: .editingChanged)
        
        RidingjpTextField.addTarget(self, action: #selector(self.RidingJPChange(_:)), for: .editingChanged)
        RidingipTextField.addTarget(self, action: #selector(self.RidingIPChange(_:)), for: .editingChanged)
        
        SwimjpTextField.addTarget(self, action: #selector(self.SwimJPChange(_:)), for: .editingChanged)
        SwimipTextField.addTarget(self, action: #selector(self.SwimIPChange(_:)), for: .editingChanged)
        
        ProductionjpTextField.addTarget(self, action: #selector(self.ProductionJPChange(_:)), for: .editingChanged)
        ProductionipTextField.addTarget(self, action: #selector(self.ProductionIPChange(_:)), for: .editingChanged)
        
        ControljpTextField.addTarget(self, action: #selector(self.ControlJPChange(_:)), for: .editingChanged)
        ControlipTextField.addTarget(self, action: #selector(self.ControlIPChange(_:)), for: .editingChanged)
        
        LeapjpTextField.addTarget(self, action: #selector(self.LeapJPChange(_:)), for: .editingChanged)
        LeapipTextField.addTarget(self, action: #selector(self.LeapIPChange(_:)), for: .editingChanged)
        
        ERepairjpTextField.addTarget(self, action: #selector(self.ERepairJPChange(_:)), for: .editingChanged)
        ERepairipTextField.addTarget(self, action: #selector(self.ERepairIPChange(_:)), for: .editingChanged)
        
        NavijpTextField.addTarget(self, action: #selector(self.NaviJPChange(_:)), for: .editingChanged)
        NaviipTextField.addTarget(self, action: #selector(self.NaviIPChange(_:)), for: .editingChanged)
        
        DisguisejpTextField.addTarget(self, action: #selector(self.DisguiseJPChange(_:)), for: .editingChanged)
        DisguiseipTextField.addTarget(self, action: #selector(self.DisguiseIPChange(_:)), for: .editingChanged)
        
        TalkintojpTextField.addTarget(self, action: #selector(self.TalkintoJPChange(_:)), for: .editingChanged)
        TalkintoipTextField.addTarget(self, action: #selector(self.TalkintoIPChange(_:)), for: .editingChanged)
        
        TrustjpTextField.addTarget(self, action: #selector(self.TrustJPChange(_:)), for: .editingChanged)
        TrustipTextField.addTarget(self, action: #selector(self.TrustIPChange(_:)), for: .editingChanged)
        
        PersuasionjpTextField.addTarget(self, action: #selector(self.PersuasionJPChange(_:)), for: .editingChanged)
        PersuasionipTextField.addTarget(self, action: #selector(self.PersuasionIPChange(_:)), for: .editingChanged)
        
        BargainjpTextField.addTarget(self, action: #selector(self.BargainJPChange(_:)), for: .editingChanged)
        BargainipTextField.addTarget(self, action: #selector(self.BargainIPChange(_:)), for: .editingChanged)
        
        MTonguejpTextField.addTarget(self, action: #selector(self.MTongueJPChange(_:)), for: .editingChanged)
        MTongueipTextField.addTarget(self, action: #selector(self.MTongueIPChange(_:)), for: .editingChanged)
        
        MedicinejpTextField.addTarget(self, action: #selector(self.MedicineJPChange(_:)), for: .editingChanged)
        MedicineipTextField.addTarget(self, action: #selector(self.MedicineIPChange(_:)), for: .editingChanged)
        
        OccultjpTextField.addTarget(self, action: #selector(self.OccultJPChange(_:)), for: .editingChanged)
        OccultipTextField.addTarget(self, action: #selector(self.OccultIPChange(_:)), for: .editingChanged)
        
        ChemistryjpTextField.addTarget(self, action: #selector(self.ChemistryJPChange(_:)), for: .editingChanged)
        ChemistryipTextField.addTarget(self, action: #selector(self.ChemistryIPChange(_:)), for: .editingChanged)
        
        CthulhujpTextField.addTarget(self, action: #selector(self.CthulhuJPChange(_:)), for: .editingChanged)
        CthulhuipTextField.addTarget(self, action: #selector(self.CthulhuIPChange(_:)), for: .editingChanged)
        
        ArtjpTextField.addTarget(self, action: #selector(self.ArtJPChange(_:)), for: .editingChanged)
        ArtipTextField.addTarget(self, action: #selector(self.ArtIPChange(_:)), for: .editingChanged)
        
        AccountingjpTextField.addTarget(self, action: #selector(self.AccountingJPChange(_:)), for: .editingChanged)
        AccountingipTextField.addTarget(self, action: #selector(self.AccountingIPChange(_:)), for: .editingChanged)
        
        ArcheologyjpTextField.addTarget(self, action: #selector(self.ArcheologyJPChange(_:)), for: .editingChanged)
        ArcheologyipTextField.addTarget(self, action: #selector(self.ArcheologyIPChange(_:)), for: .editingChanged)
        
        ComputerjpTextField.addTarget(self, action: #selector(self.ComputerJPChange(_:)), for: .editingChanged)
        ComputeripTextField.addTarget(self, action: #selector(self.ComputerIPChange(_:)), for: .editingChanged)
        
        PsychologyjpTextField.addTarget(self, action: #selector(self.PsychologyJPChange(_:)), for: .editingChanged)
        PsychologyipTextField.addTarget(self, action: #selector(self.PsychologyIPChange(_:)), for: .editingChanged)
        
        AnthropologyjpTextField.addTarget(self, action: #selector(self.AnthropologyJPChange(_:)), for: .editingChanged)
        AnthropologyipTextField.addTarget(self, action: #selector(self.AnthropologyIPChange(_:)), for: .editingChanged)
        
        BiologyjpTextField.addTarget(self, action: #selector(self.BiologyJPChange(_:)), for: .editingChanged)
        BiologyipTextField.addTarget(self, action: #selector(self.BiologyIPChange(_:)), for: .editingChanged)
        
        GeologyjpTextField.addTarget(self, action: #selector(self.GeologyJPChange(_:)), for: .editingChanged)
        GeologyipTextField.addTarget(self, action: #selector(self.GeologyIPChange(_:)), for: .editingChanged)
        
        EEjpTextField.addTarget(self, action: #selector(self.EEJPChange(_:)), for: .editingChanged)
        EEipTextField.addTarget(self, action: #selector(self.EEIPChange(_:)), for: .editingChanged)
        
        AstronomyjpTextField.addTarget(self, action: #selector(self.AstronomyJPChange(_:)), for: .editingChanged)
        AstronomyipTextField.addTarget(self, action: #selector(self.AstronomyIPChange(_:)), for: .editingChanged)
        
        NHistoryjpTextField.addTarget(self, action: #selector(self.NHistoryJPChange(_:)), for: .editingChanged)
        NHistoryipTextField.addTarget(self, action: #selector(self.NHistoryIPChange(_:)), for: .editingChanged)
        
        PhysicsjpTextField.addTarget(self, action: #selector(self.PhysicsJPChange(_:)), for: .editingChanged)
        PhysicsipTextField.addTarget(self, action: #selector(self.PhysicsIPChange(_:)), for: .editingChanged)
        
        LawjpTextField.addTarget(self, action: #selector(self.LawJPChange(_:)), for: .editingChanged)
        LawipTextField.addTarget(self, action: #selector(self.LawIPChange(_:)), for: .editingChanged)
        
        PharmacyjpTextField.addTarget(self, action: #selector(self.PharmacyJPChange(_:)), for: .editingChanged)
        PharmacyipTextField.addTarget(self, action: #selector(self.PharmacyIPChange(_:)), for: .editingChanged)
        
        HistoryjpTextField.addTarget(self, action: #selector(self.HistoryJPChange(_:)), for: .editingChanged)
        HistoryipTextField.addTarget(self, action: #selector(self.HistoryIPChange(_:)), for: .editingChanged)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*--------------TextFieldの処理--------------*/
    //タップでキーボードを閉じる
    @IBAction func tapGestureRecognizer(_ sender: Any) {
        for tfjp in TextFieldjpArray {
            tfjp.endEditing(true)
        }
        for tfip in TextFieldipArray {
            tfip.endEditing(true)
        }
    }
    
    //textFieldが隠れない処理
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("タップされた")
        if (textField == PhysicsjpTextField) || (textField == PhysicsipTextField) {
            ViewHeight.constant = 845
            FormViewHeight.constant = 3531
        } else if (textField == LawjpTextField) || (textField == LawipTextField) {
            ViewHeight.constant = 885
            FormViewHeight.constant = 3571
        } else if (textField == PharmacyjpTextField) || (textField == PharmacyipTextField){
            ViewHeight.constant = 925
            FormViewHeight.constant = 3611
        } else if (textField == HistoryjpTextField) || (textField == HistoryipTextField) {
            ViewHeight.constant = 965
            FormViewHeight.constant = 3651
        }

    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        ViewHeight.constant = 805
        FormViewHeight.constant = 3491
    }
    
    
    
    //----戦闘技能----
    //回避
    @objc func AvoidanceJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if AvoidanceipTextField.text?.isEmpty != true {
                AvoidanceTotal = Int(AvoidancesLabel.text!)! + Int(AvoidanceipTextField.text!)!
                AvoidancetLabel.text = String(AvoidanceTotal)
            } else if AvoidanceipTextField.text?.isEmpty == true {
                AvoidancetLabel.text = AvoidancesLabel.text
            }
        } else {
            if AvoidanceipTextField.text?.isEmpty == true {
                AvoidanceTotal = Int(AvoidancesLabel.text!)! + Int(sender.text!)!
                AvoidancetLabel.text = String(AvoidanceTotal)
            } else {
                AvoidanceTotal = Int(AvoidancesLabel.text!)! + Int(sender.text!)! + Int(AvoidanceipTextField.text!)!
                AvoidancetLabel.text = String(AvoidanceTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
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
            if AvoidancejpTextField.text?.isEmpty == true {
                AvoidanceTotal = Int(AvoidancesLabel.text!)! + Int(sender.text!)!
                AvoidancetLabel.text = String(AvoidanceTotal)
            } else {
                AvoidanceTotal = Int(AvoidancesLabel.text!)! + Int(AvoidancejpTextField.text!)! + Int(sender.text!)!
                AvoidancetLabel.text = String(AvoidanceTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //キック
    @objc func KickJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if KickipTextField.text?.isEmpty != true {
                KickTotal = Int(KicksLabel.text!)! + Int(KickipTextField.text!)!
                KicktLabel.text = String(KickTotal)
            } else if KickipTextField.text?.isEmpty == true {
                KicktLabel.text = KicksLabel.text
            }
        } else {
            if KickipTextField.text?.isEmpty == true {
                KickTotal = Int(KicksLabel.text!)! + Int(sender.text!)!
                KicktLabel.text = String(KickTotal)
            } else {
                KickTotal = Int(KicksLabel.text!)! + Int(sender.text!)! + Int(KickipTextField.text!)!
                KicktLabel.text = String(KickTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func KickIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if KickjpTextField.text?.isEmpty != true {
                KickTotal = Int(KicksLabel.text!)! + Int(KickjpTextField.text!)!
                KicktLabel.text = String(KickTotal)
            } else if KickipTextField.text?.isEmpty == true {
                KicktLabel.text = KicksLabel.text
            }
        } else {
            if KickjpTextField.text?.isEmpty == true {
                KickTotal = Int(KicksLabel.text!)! + Int(sender.text!)!
                KicktLabel.text = String(KickTotal)
            } else {
                KickTotal = Int(KicksLabel.text!)! + Int(KickjpTextField.text!)! + Int(sender.text!)!
                KicktLabel.text = String(KickTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
        
    }
    
    
    //組み付き
    @objc func WithJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if WithipTextField.text?.isEmpty != true {
                WithTotal = Int(WithsLabel.text!)! + Int(WithipTextField.text!)!
                WithtLabel.text = String(WithTotal)
            } else if WithipTextField.text?.isEmpty == true {
                WithtLabel.text = WithsLabel.text
            }
        } else {
            if WithipTextField.text?.isEmpty == true {
                WithTotal = Int(WithsLabel.text!)! + Int(sender.text!)!
                WithtLabel.text = String(WithTotal)
            } else {
                WithTotal = Int(WithsLabel.text!)! + Int(sender.text!)! + Int(WithipTextField.text!)!
                WithtLabel.text = String(WithTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func WithIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if WithjpTextField.text?.isEmpty != true {
                WithTotal = Int(WithsLabel.text!)! + Int(WithjpTextField.text!)!
                WithtLabel.text = String(WithTotal)
            } else if WithipTextField.text?.isEmpty == true {
                WithtLabel.text = WithsLabel.text
            }
        } else {
            if WithjpTextField.text?.isEmpty == true {
                WithTotal = Int(WithsLabel.text!)! + Int(sender.text!)!
                WithtLabel.text = String(WithTotal)
            } else {
                WithTotal = Int(WithsLabel.text!)! + Int(WithjpTextField.text!)! + Int(sender.text!)!
                WithtLabel.text = String(WithTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    //パンチ
    @objc func PunchJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PunchipTextField.text?.isEmpty != true {
                PunchTotal = Int(PunchsLabel.text!)! + Int(PunchipTextField.text!)!
                PunchtLabel.text = String(PunchTotal)
            } else if PunchipTextField.text?.isEmpty == true {
                PunchtLabel.text = PunchsLabel.text
            }
        } else {
            if PunchipTextField.text?.isEmpty == true {
                PunchTotal = Int(PunchsLabel.text!)! + Int(sender.text!)!
                PunchtLabel.text = String(PunchTotal)
            } else {
                PunchTotal = Int(PunchsLabel.text!)! + Int(sender.text!)! + Int(PunchipTextField.text!)!
                PunchtLabel.text = String(PunchTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func PunchIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PunchjpTextField.text?.isEmpty != true {
                PunchTotal = Int(PunchsLabel.text!)! + Int(PunchjpTextField.text!)!
                PunchtLabel.text = String(PunchTotal)
            } else if PunchipTextField.text?.isEmpty == true {
                PunchtLabel.text = PunchsLabel.text
            }
        } else {
            if PunchjpTextField.text?.isEmpty == true {
                PunchTotal = Int(PunchsLabel.text!)! + Int(sender.text!)!
                PunchtLabel.text = String(PunchTotal)
            } else {
                PunchTotal = Int(PunchsLabel.text!)! + Int(PunchjpTextField.text!)! + Int(sender.text!)!
                PunchtLabel.text = String(PunchTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    //頭突き
    @objc func GlasgowJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if GlasgowipTextField.text?.isEmpty != true {
                GlasgowTotal = Int(GlasgowsLabel.text!)! + Int(GlasgowipTextField.text!)!
                GlasgowtLabel.text = String(GlasgowTotal)
            } else if GlasgowipTextField.text?.isEmpty == true {
                GlasgowtLabel.text = GlasgowsLabel.text
            }
        } else {
            if GlasgowipTextField.text?.isEmpty == true {
                GlasgowTotal = Int(GlasgowsLabel.text!)! + Int(sender.text!)!
                GlasgowtLabel.text = String(GlasgowTotal)
            } else {
                GlasgowTotal = Int(GlasgowsLabel.text!)! + Int(sender.text!)! + Int(GlasgowipTextField.text!)!
                GlasgowtLabel.text = String(GlasgowTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func GlasgowIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if GlasgowjpTextField.text?.isEmpty != true {
                GlasgowTotal = Int(PunchsLabel.text!)! + Int(GlasgowjpTextField.text!)!
                GlasgowtLabel.text = String(GlasgowTotal)
            } else if GlasgowipTextField.text?.isEmpty == true {
                GlasgowtLabel.text = GlasgowsLabel.text
            }
        } else {
            if GlasgowjpTextField.text?.isEmpty == true {
                GlasgowTotal = Int(GlasgowsLabel.text!)! + Int(sender.text!)!
                GlasgowtLabel.text = String(GlasgowTotal)
            } else {
                GlasgowTotal = Int(GlasgowsLabel.text!)! + Int(GlasgowjpTextField.text!)! + Int(sender.text!)!
                GlasgowtLabel.text = String(GlasgowTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    //投擲
    @objc func ThrowingJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ThrowingipTextField.text?.isEmpty != true {
                ThrowingTotal = Int(ThrowingsLabel.text!)! + Int(ThrowingipTextField.text!)!
                ThrowingtLabel.text = String(ThrowingTotal)
            } else if ThrowingipTextField.text?.isEmpty == true {
                ThrowingtLabel.text = ThrowingsLabel.text
            }
        } else {
            if ThrowingipTextField.text?.isEmpty == true {
                ThrowingTotal = Int(ThrowingsLabel.text!)! + Int(sender.text!)!
                ThrowingtLabel.text = String(ThrowingTotal)
            } else {
                ThrowingTotal = Int(ThrowingsLabel.text!)! + Int(sender.text!)! + Int(ThrowingipTextField.text!)!
                ThrowingtLabel.text = String(ThrowingTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func ThrowingIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ThrowingjpTextField.text?.isEmpty != true {
                ThrowingTotal = Int(ThrowingsLabel.text!)! + Int(ThrowingjpTextField.text!)!
                ThrowingtLabel.text = String(ThrowingTotal)
            } else if ThrowingipTextField.text?.isEmpty == true {
                ThrowingtLabel.text = ThrowingsLabel.text
            }
        } else {
            if ThrowingjpTextField.text?.isEmpty == true {
                ThrowingTotal = Int(ThrowingsLabel.text!)! + Int(sender.text!)!
                ThrowingtLabel.text = String(ThrowingTotal)
            } else {
                ThrowingTotal = Int(ThrowingsLabel.text!)! + Int(ThrowingjpTextField.text!)! + Int(sender.text!)!
                ThrowingtLabel.text = String(ThrowingTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    //ﾏｰｼｬﾙｱｰﾂ
    @objc func MartialJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if MartialipTextField.text?.isEmpty != true {
                MartialTotal = Int(MartialsLabel.text!)! + Int(MartialipTextField.text!)!
                MartialtLabel.text = String(MartialTotal)
            } else if MartialipTextField.text?.isEmpty == true {
                MartialtLabel.text = MartialsLabel.text
            }
        } else {
            if MartialipTextField.text?.isEmpty == true {
                MartialTotal = Int(MartialsLabel.text!)! + Int(sender.text!)!
                MartialtLabel.text = String(MartialTotal)
            } else {
                MartialTotal = Int(MartialsLabel.text!)! + Int(sender.text!)! + Int(MartialipTextField.text!)!
                MartialtLabel.text = String(ThrowingTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func MartialIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if MartialjpTextField.text?.isEmpty != true {
                MartialTotal = Int(MartialsLabel.text!)! + Int(MartialjpTextField.text!)!
                MartialtLabel.text = String(MartialTotal)
            } else if MartialipTextField.text?.isEmpty == true {
                MartialtLabel.text = MartialsLabel.text
            }
        } else {
            if MartialjpTextField.text?.isEmpty == true {
                MartialTotal = Int(MartialsLabel.text!)! + Int(sender.text!)!
                MartialtLabel.text = String(MartialTotal)
            } else {
                MartialTotal = Int(MartialsLabel.text!)! + Int(MartialjpTextField.text!)! + Int(sender.text!)!
                MartialtLabel.text = String(MartialTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    //拳銃
    @objc func PistolJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PistolipTextField.text?.isEmpty != true {
                PistolTotal = Int(PistolsLabel.text!)! + Int(SubGunipTextField.text!)!
                PistoltLabel.text = String(PistolTotal)
            } else if PistolipTextField.text?.isEmpty == true {
                PistoltLabel.text = PistolsLabel.text
            }
        } else {
            if PistolipTextField.text?.isEmpty == true {
                PistolTotal = Int(PistolsLabel.text!)! + Int(sender.text!)!
                PistoltLabel.text = String(PistolTotal)
            } else {
                PistolTotal = Int(PistolsLabel.text!)! + Int(sender.text!)! + Int(PistolipTextField.text!)!
                PistoltLabel.text = String(PistolTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func PistolIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PistoljpTextField.text?.isEmpty != true {
                PistolTotal = Int(PistolsLabel.text!)! + Int(SubGunjpTextField.text!)!
                PistoltLabel.text = String(PistolTotal)
            } else if PistolipTextField.text?.isEmpty == true {
                PistoltLabel.text = PistolsLabel.text
            }
        } else {
            if PistoljpTextField.text?.isEmpty == true {
                PistolTotal = Int(PistolsLabel.text!)! + Int(sender.text!)!
                PistoltLabel.text = String(PistolTotal)
            } else {
                PistolTotal = Int(PistolsLabel.text!)! + Int(PistoljpTextField.text!)! + Int(sender.text!)!
                PistoltLabel.text = String(PistolTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //ｻﾌﾞﾏｼﾝｶﾞﾝ
    @objc func SubGunJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if SubGunipTextField.text?.isEmpty != true {
                SubGunTotal = Int(SubGunsLabel.text!)! + Int(SubGunipTextField.text!)!
                SubGuntLabel.text = String(SubGunTotal)
            } else if SubGunipTextField.text?.isEmpty == true {
                SubGuntLabel.text = SubGunsLabel.text
            }
        } else {
            if SubGunipTextField.text?.isEmpty == true {
                SubGunTotal = Int(SubGunsLabel.text!)! + Int(sender.text!)!
                SubGuntLabel.text = String(SubGunTotal)
            } else {
                SubGunTotal = Int(SubGunsLabel.text!)! + Int(sender.text!)! + Int(SubGunipTextField.text!)!
                SubGuntLabel.text = String(SubGunTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func SubGunIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if SubGunjpTextField.text?.isEmpty != true {
                SubGunTotal = Int(SubGunsLabel.text!)! + Int(SubGunjpTextField.text!)!
                SubGuntLabel.text = String(SubGunTotal)
            } else if SubGunipTextField.text?.isEmpty == true {
                SubGuntLabel.text = SubGunsLabel.text
            }
        } else {
            if SubGunjpTextField.text?.isEmpty == true {
                SubGunTotal = Int(SubGunsLabel.text!)! + Int(sender.text!)!
                SubGuntLabel.text = String(SubGunTotal)
            } else {
                SubGunTotal = Int(SubGunsLabel.text!)! + Int(SubGunjpTextField.text!)! + Int(sender.text!)!
                SubGuntLabel.text = String(SubGunTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    //ｼｮｯﾄｶﾞﾝ
    @objc func ShotgunJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ShotgunipTextField.text?.isEmpty != true {
                ShotgunTotal = Int(ShotgunsLabel.text!)! + Int(ShotgunipTextField.text!)!
                ShotguntLabel.text = String(ShotgunTotal)
            } else if ShotgunipTextField.text?.isEmpty == true {
                ShotguntLabel.text = ShotgunsLabel.text
            }
        } else {
            if ShotgunipTextField.text?.isEmpty == true {
                ShotgunTotal = Int(ShotgunsLabel.text!)! + Int(sender.text!)!
                ShotguntLabel.text = String(ShotgunTotal)
            } else {
                ShotgunTotal = Int(ShotgunsLabel.text!)! + Int(sender.text!)! + Int(ShotgunipTextField.text!)!
                ShotguntLabel.text = String(ShotgunTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func ShotgunIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ShotgunjpTextField.text?.isEmpty != true {
                ShotgunTotal = Int(ShotgunsLabel.text!)! + Int(ShotgunjpTextField.text!)!
                ShotguntLabel.text = String(ShotgunTotal)
            } else if ShotgunipTextField.text?.isEmpty == true {
                ShotguntLabel.text = ShotgunsLabel.text
            }
        } else {
            if ShotgunjpTextField.text?.isEmpty == true {
                ShotgunTotal = Int(ShotgunsLabel.text!)! + Int(sender.text!)!
                ShotguntLabel.text = String(ShotgunTotal)
            } else {
                ShotgunTotal = Int(ShotgunsLabel.text!)! + Int(ShotgunjpTextField.text!)! + Int(sender.text!)!
                ShotguntLabel.text = String(ShotgunTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    //マシンガン
    @objc func MachinegunJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if MachinegunipTextField.text?.isEmpty != true {
                MachinegunTotal = Int(MachinegunsLabel.text!)! + Int(MachinegunipTextField.text!)!
                MachineguntLabel.text = String(MachinegunTotal)
            } else if MachinegunipTextField.text?.isEmpty == true {
                MachineguntLabel.text = MachinegunsLabel.text
            }
        } else {
            if MachinegunipTextField.text?.isEmpty == true {
                MachinegunTotal = Int(MachinegunsLabel.text!)! + Int(sender.text!)!
                MachineguntLabel.text = String(MachinegunTotal)
            } else {
                MachinegunTotal = Int(MachinegunsLabel.text!)! + Int(sender.text!)! + Int(MachinegunipTextField.text!)!
                MachineguntLabel.text = String(MachinegunTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func MachinegunIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if MachinegunjpTextField.text?.isEmpty != true {
                MachinegunTotal = Int(MachinegunsLabel.text!)! + Int(MachinegunjpTextField.text!)!
                MachineguntLabel.text = String(MachinegunTotal)
            } else if MachinegunipTextField.text?.isEmpty == true {
                MachineguntLabel.text = MachinegunsLabel.text
            }
        } else {
            if MachinegunjpTextField.text?.isEmpty == true {
                MachinegunTotal = Int(MachinegunsLabel.text!)! + Int(sender.text!)!
                MachineguntLabel.text = String(MachinegunTotal)
            } else {
                MachinegunTotal = Int(MachinegunsLabel.text!)! + Int(MachinegunjpTextField.text!)! + Int(sender.text!)!
                MachineguntLabel.text = String(MachinegunTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    //ライフル
    @objc func RifleJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if RifleipTextField.text?.isEmpty != true {
                RifleTotal = Int(RiflesLabel.text!)! + Int(RifleipTextField.text!)!
                RifletLabel.text = String(RifleTotal)
            } else if RifleipTextField.text?.isEmpty == true {
                RifletLabel.text = RiflesLabel.text
            }
        } else {
            if RifleipTextField.text?.isEmpty == true {
                RifleTotal = Int(RiflesLabel.text!)! + Int(sender.text!)!
                RifletLabel.text = String(RifleTotal)
            } else {
                RifleTotal = Int(RiflesLabel.text!)! + Int(sender.text!)! + Int(RifleipTextField.text!)!
                RifletLabel.text = String(RifleTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func RifleIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if RiflejpTextField.text?.isEmpty != true {
                RifleTotal = Int(RiflesLabel.text!)! + Int(RiflejpTextField.text!)!
                RifletLabel.text = String(RifleTotal)
            } else if RifleipTextField.text?.isEmpty == true {
                RifletLabel.text = RiflesLabel.text
            }
        } else {
            if RiflejpTextField.text?.isEmpty == true {
                RifleTotal = Int(RiflesLabel.text!)! + Int(sender.text!)!
                RifletLabel.text = String(RifleTotal)
            } else {
                RifleTotal = Int(RiflesLabel.text!)! + Int(RiflejpTextField.text!)! + Int(sender.text!)!
                RifletLabel.text = String(RifleTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    //----探索技能----
    //応急手当て
    @objc func FirstaidJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if FirstaidipTextField.text?.isEmpty != true {
                FirstaidTotal = Int(FirstaidsLabel.text!)! + Int(FirstaidipTextField.text!)!
                FirstaidtLabel.text = String(FirstaidTotal)
            } else if FirstaidipTextField.text?.isEmpty == true {
                FirstaidtLabel.text = FirstaidsLabel.text
            }
        } else {
            if FirstaidipTextField.text?.isEmpty == true {
                FirstaidTotal = Int(FirstaidsLabel.text!)! + Int(sender.text!)!
                FirstaidtLabel.text = String(FirstaidTotal)
            } else {
                FirstaidTotal = Int(FirstaidsLabel.text!)! + Int(sender.text!)! + Int(FirstaidipTextField.text!)!
                FirstaidtLabel.text = String(FirstaidTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func FirstaidIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if FirstaidjpTextField.text?.isEmpty != true {
                FirstaidTotal = Int(FirstaidsLabel.text!)! + Int(FirstaidjpTextField.text!)!
                FirstaidtLabel.text = String(FirstaidTotal)
            } else if FirstaidipTextField.text?.isEmpty == true {
                FirstaidtLabel.text = FirstaidsLabel.text
            }
        } else {
            if FirstaidjpTextField.text?.isEmpty == true {
                FirstaidTotal = Int(FirstaidsLabel.text!)! + Int(sender.text!)!
                FirstaidtLabel.text = String(FirstaidTotal)
            } else {
                FirstaidTotal = Int(FirstaidsLabel.text!)! + Int(FirstaidjpTextField.text!)! + Int(sender.text!)!
                FirstaidtLabel.text = String(FirstaidTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //鍵開け
    @objc func KeyopenJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if KeyopenipTextField.text?.isEmpty != true {
                KeyopenTotal = Int(KeyopensLabel.text!)! + Int(KeyopenipTextField.text!)!
                KeyopentLabel.text = String(KeyopenTotal)
            } else if KeyopenipTextField.text?.isEmpty == true {
                KeyopentLabel.text = KeyopensLabel.text
            }
        } else {
            if KeyopenipTextField.text?.isEmpty == true {
                KeyopenTotal = Int(KeyopensLabel.text!)! + Int(sender.text!)!
                KeyopentLabel.text = String(KeyopenTotal)
            } else {
                KeyopenTotal = Int(KeyopensLabel.text!)! + Int(sender.text!)! + Int(KeyopenipTextField.text!)!
                KeyopentLabel.text = String(KeyopenTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func KeyopenIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if KeyopenjpTextField.text?.isEmpty != true {
                KeyopenTotal = Int(KeyopensLabel.text!)! + Int(KeyopenjpTextField.text!)!
                KeyopentLabel.text = String(KeyopenTotal)
            } else if KeyopenipTextField.text?.isEmpty == true {
                KeyopentLabel.text = KeyopensLabel.text
            }
        } else {
            if KeyopenjpTextField.text?.isEmpty == true {
                KeyopenTotal = Int(KeyopensLabel.text!)! + Int(sender.text!)!
                KeyopentLabel.text = String(KeyopenTotal)
            } else {
                KeyopenTotal = Int(KeyopensLabel.text!)! + Int(KeyopenjpTextField.text!)! + Int(sender.text!)!
                KeyopentLabel.text = String(KeyopenTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //隠す
    @objc func HideJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if HideipTextField.text?.isEmpty != true {
                HideTotal = Int(HidesLabel.text!)! + Int(KeyopenipTextField.text!)!
                HidetLabel.text = String(HideTotal)
            } else if HideipTextField.text?.isEmpty == true {
                HidetLabel.text = HidesLabel.text
            }
        } else {
            if HideipTextField.text?.isEmpty == true {
                HideTotal = Int(HidesLabel.text!)! + Int(sender.text!)!
                HidetLabel.text = String(HideTotal)
            } else {
                HideTotal = Int(HidesLabel.text!)! + Int(sender.text!)! + Int(HideipTextField.text!)!
                HidetLabel.text = String(HideTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func HideIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if HidejpTextField.text?.isEmpty != true {
                HideTotal = Int(HidesLabel.text!)! + Int(HidejpTextField.text!)!
                HidetLabel.text = String(HideTotal)
            } else if HideipTextField.text?.isEmpty == true {
                HidetLabel.text = HidesLabel.text
            }
        } else {
            if HidejpTextField.text?.isEmpty == true {
                HideTotal = Int(HidesLabel.text!)! + Int(sender.text!)!
                HidetLabel.text = String(HideTotal)
            } else {
                HideTotal = Int(HidesLabel.text!)! + Int(HidejpTextField.text!)! + Int(sender.text!)!
                HidetLabel.text = String(HideTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //隠れる
    @objc func HideoutJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if HideoutipTextField.text?.isEmpty != true {
                HideoutTotal = Int(HideoutsLabel.text!)! + Int(HideoutipTextField.text!)!
                HideouttLabel.text = String(HideoutTotal)
            } else if HideoutipTextField.text?.isEmpty == true {
                HideouttLabel.text = HideoutsLabel.text
            }
        } else {
            if HideoutipTextField.text?.isEmpty == true {
                HideoutTotal = Int(HideoutsLabel.text!)! + Int(sender.text!)!
                HideouttLabel.text = String(HideoutTotal)
            } else {
                HideoutTotal = Int(HideoutsLabel.text!)! + Int(sender.text!)! + Int(HideoutipTextField.text!)!
                HideouttLabel.text = String(HideoutTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func HideoutIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if HideoutjpTextField.text?.isEmpty != true {
                HideoutTotal = Int(HideoutsLabel.text!)! + Int(HideoutjpTextField.text!)!
                HideouttLabel.text = String(HideoutTotal)
            } else if HideoutipTextField.text?.isEmpty == true {
                HideouttLabel.text = HideoutsLabel.text
            }
        } else {
            if HideoutjpTextField.text?.isEmpty == true {
                HideoutTotal = Int(HideoutsLabel.text!)! + Int(sender.text!)!
                HideouttLabel.text = String(HideoutTotal)
            } else {
                HideoutTotal = Int(HideoutsLabel.text!)! + Int(HideoutjpTextField.text!)! + Int(sender.text!)!
                HideouttLabel.text = String(HideoutTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //聞き耳
    @objc func ListenJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ListenipTextField.text?.isEmpty != true {
                ListenTotal = Int(ListensLabel.text!)! + Int(ListenipTextField.text!)!
                ListentLabel.text = String(ListenTotal)
            } else if ListenipTextField.text?.isEmpty == true {
                ListentLabel.text = ListensLabel.text
            }
        } else {
            if ListenipTextField.text?.isEmpty == true {
                ListenTotal = Int(ListensLabel.text!)! + Int(sender.text!)!
                ListentLabel.text = String(ListenTotal)
            } else {
                ListenTotal = Int(ListensLabel.text!)! + Int(sender.text!)! + Int(ListenipTextField.text!)!
                ListentLabel.text = String(ListenTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func ListenIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ListenjpTextField.text?.isEmpty != true {
                ListenTotal = Int(ListensLabel.text!)! + Int(ListenjpTextField.text!)!
                ListentLabel.text = String(ListenTotal)
            } else if ListenipTextField.text?.isEmpty == true {
                ListentLabel.text = ListensLabel.text
            }
        } else {
            if ListenjpTextField.text?.isEmpty == true {
                ListenTotal = Int(ListensLabel.text!)! + Int(sender.text!)!
                ListentLabel.text = String(ListenTotal)
            } else {
                ListenTotal = Int(ListensLabel.text!)! + Int(ListenjpTextField.text!)! + Int(sender.text!)!
                ListentLabel.text = String(ListenTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //忍び歩き
    @objc func WalkJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if WalkipTextField.text?.isEmpty != true {
                WalkTotal = Int(WalksLabel.text!)! + Int(WalkipTextField.text!)!
                WalktLabel.text = String(WalkTotal)
            } else if WalkipTextField.text?.isEmpty == true {
                WalktLabel.text = WalksLabel.text
            }
        } else {
            if WalkipTextField.text?.isEmpty == true {
                WalkTotal = Int(WalksLabel.text!)! + Int(sender.text!)!
                WalktLabel.text = String(WalkTotal)
            } else {
                WalkTotal = Int(WalksLabel.text!)! + Int(sender.text!)! + Int(WalkipTextField.text!)!
                WalktLabel.text = String(WalkTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func WalkIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if WalkjpTextField.text?.isEmpty != true {
                WalkTotal = Int(WalksLabel.text!)! + Int(WalkjpTextField.text!)!
                WalktLabel.text = String(WalkTotal)
            } else if WalkipTextField.text?.isEmpty == true {
                WalktLabel.text = WalksLabel.text
            }
        } else {
            if WalkjpTextField.text?.isEmpty == true {
                WalkTotal = Int(WalksLabel.text!)! + Int(sender.text!)!
                WalktLabel.text = String(WalkTotal)
            } else {
                WalkTotal = Int(WalksLabel.text!)! + Int(WalkjpTextField.text!)! + Int(sender.text!)!
                WalktLabel.text = String(WalkTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //写真術
    @objc func PhotographyJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PhotographyipTextField.text?.isEmpty != true {
                PhotographyTotal = Int(PhotographysLabel.text!)! + Int(PhotographyipTextField.text!)!
                PhotographytLabel.text = String(PhotographyTotal)
            } else if PhotographyipTextField.text?.isEmpty == true {
                PhotographytLabel.text = PhotographysLabel.text
            }
        } else {
            if PhotographyipTextField.text?.isEmpty == true {
                PhotographyTotal = Int(PhotographysLabel.text!)! + Int(sender.text!)!
                PhotographytLabel.text = String(PhotographyTotal)
            } else {
                PhotographyTotal = Int(PhotographysLabel.text!)! + Int(sender.text!)! + Int(PhotographyipTextField.text!)!
                PhotographytLabel.text = String(PhotographyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func PhotographyIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PhotographyjpTextField.text?.isEmpty != true {
                PhotographyTotal = Int(PhotographysLabel.text!)! + Int(PhotographyjpTextField.text!)!
                PhotographytLabel.text = String(PhotographyTotal)
            } else if PhotographyipTextField.text?.isEmpty == true {
                PhotographytLabel.text = PhotographysLabel.text
            }
        } else {
            if PhotographyjpTextField.text?.isEmpty == true {
                PhotographyTotal = Int(PhotographysLabel.text!)! + Int(sender.text!)!
                PhotographytLabel.text = String(PhotographyTotal)
            } else {
                PhotographyTotal = Int(PhotographysLabel.text!)! + Int(PhotographyjpTextField.text!)! + Int(sender.text!)!
                PhotographytLabel.text = String(PhotographyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //精神分析
    @objc func PsychoanalysisJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PsychoanalysisipTextField.text?.isEmpty != true {
                PsychoanalysisTotal = Int(PsychoanalysissLabel.text!)! + Int(PsychoanalysisipTextField.text!)!
                PsychoanalysistLabel.text = String(PsychoanalysisTotal)
            } else if PsychoanalysisipTextField.text?.isEmpty == true {
                PsychoanalysistLabel.text = PsychoanalysissLabel.text
            }
        } else {
            if PsychoanalysisipTextField.text?.isEmpty == true {
                PsychoanalysisTotal = Int(PsychoanalysissLabel.text!)! + Int(sender.text!)!
                PsychoanalysistLabel.text = String(PsychoanalysisTotal)
            } else {
                PsychoanalysisTotal = Int(PsychoanalysissLabel.text!)! + Int(sender.text!)! + Int(PsychoanalysisipTextField.text!)!
                PsychoanalysistLabel.text = String(PsychoanalysisTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func PsychoanalysisIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PsychoanalysisjpTextField.text?.isEmpty != true {
                PsychoanalysisTotal = Int(PsychoanalysissLabel.text!)! + Int(PsychoanalysisjpTextField.text!)!
                PsychoanalysistLabel.text = String(PsychoanalysisTotal)
            } else if PsychoanalysisipTextField.text?.isEmpty == true {
                PsychoanalysistLabel.text = PsychoanalysissLabel.text
            }
        } else {
            if PsychoanalysisjpTextField.text?.isEmpty == true {
                PsychoanalysisTotal = Int(PsychoanalysissLabel.text!)! + Int(sender.text!)!
                PsychoanalysistLabel.text = String(PsychoanalysisTotal)
            } else {
                PsychoanalysisTotal = Int(PsychoanalysissLabel.text!)! + Int(PsychoanalysisjpTextField.text!)! + Int(sender.text!)!
                PsychoanalysistLabel.text = String(PsychoanalysisTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //追跡
    @objc func ChaseJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ChaseipTextField.text?.isEmpty != true {
                ChaseTotal = Int(ChasesLabel.text!)! + Int(ChaseipTextField.text!)!
                ChasetLabel.text = String(ChaseTotal)
            } else if ChaseipTextField.text?.isEmpty == true {
                ChasetLabel.text = ChasesLabel.text
            }
        } else {
            if ChaseipTextField.text?.isEmpty == true {
                ChaseTotal = Int(ChasesLabel.text!)! + Int(sender.text!)!
                ChasetLabel.text = String(ChaseTotal)
            } else {
                ChaseTotal = Int(ChasesLabel.text!)! + Int(sender.text!)! + Int(ChaseipTextField.text!)!
                ChasetLabel.text = String(ChaseTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func ChaseIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ChasejpTextField.text?.isEmpty != true {
                ChaseTotal = Int(ChasesLabel.text!)! + Int(ChasejpTextField.text!)!
                ChasetLabel.text = String(ChaseTotal)
            } else if ChaseipTextField.text?.isEmpty == true {
                ChasetLabel.text = ChasesLabel.text
            }
        } else {
            if ChasejpTextField.text?.isEmpty == true {
                ChaseTotal = Int(ChasesLabel.text!)! + Int(sender.text!)!
                ChasetLabel.text = String(ChaseTotal)
            } else {
                ChaseTotal = Int(ChasesLabel.text!)! + Int(ChasejpTextField.text!)! + Int(sender.text!)!
                ChasetLabel.text = String(ChaseTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //登攀
    @objc func ClimbingJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ClimbingipTextField.text?.isEmpty != true {
                ClimbingTotal = Int(ClimbingsLabel.text!)! + Int(ClimbingipTextField.text!)!
                ClimbingtLabel.text = String(ClimbingTotal)
            } else if ClimbingipTextField.text?.isEmpty == true {
                ClimbingtLabel.text = ClimbingsLabel.text
            }
        } else {
            if ClimbingipTextField.text?.isEmpty == true {
                ClimbingTotal = Int(ClimbingsLabel.text!)! + Int(sender.text!)!
                ClimbingtLabel.text = String(ClimbingTotal)
            } else {
                ClimbingTotal = Int(ClimbingsLabel.text!)! + Int(sender.text!)! + Int(ClimbingipTextField.text!)!
                ClimbingtLabel.text = String(ClimbingTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func ClimbingIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ClimbingjpTextField.text?.isEmpty != true {
                ClimbingTotal = Int(ClimbingsLabel.text!)! + Int(ClimbingjpTextField.text!)!
                ClimbingtLabel.text = String(ClimbingTotal)
            } else if ClimbingipTextField.text?.isEmpty == true {
                ClimbingtLabel.text = ClimbingsLabel.text
            }
        } else {
            if ClimbingjpTextField.text?.isEmpty == true {
                ClimbingTotal = Int(ClimbingsLabel.text!)! + Int(sender.text!)!
                ClimbingtLabel.text = String(ClimbingTotal)
            } else {
                ClimbingTotal = Int(ClimbingsLabel.text!)! + Int(ClimbingjpTextField.text!)! + Int(sender.text!)!
                ClimbingtLabel.text = String(ClimbingTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //図書館
    @objc func LibraryJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if LibraryipTextField.text?.isEmpty != true {
                LibraryTotal = Int(LibrarysLabel.text!)! + Int(LibraryipTextField.text!)!
                LibrarytLabel.text = String(LibraryTotal)
            } else if LibraryipTextField.text?.isEmpty == true {
                LibrarytLabel.text = LibrarysLabel.text
            }
        } else {
            if LibraryipTextField.text?.isEmpty == true {
                LibraryTotal = Int(LibrarysLabel.text!)! + Int(sender.text!)!
                LibrarytLabel.text = String(LibraryTotal)
            } else {
                LibraryTotal = Int(LibrarysLabel.text!)! + Int(sender.text!)! + Int(LibraryipTextField.text!)!
                LibrarytLabel.text = String(LibraryTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func LibraryIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if LibraryjpTextField.text?.isEmpty != true {
                LibraryTotal = Int(LibrarysLabel.text!)! + Int(LibraryjpTextField.text!)!
                LibrarytLabel.text = String(LibraryTotal)
            } else if LibraryipTextField.text?.isEmpty == true {
                LibrarytLabel.text = LibrarysLabel.text
            }
        } else {
            if LibraryjpTextField.text?.isEmpty == true {
                LibraryTotal = Int(LibrarysLabel.text!)! + Int(sender.text!)!
                LibrarytLabel.text = String(LibraryTotal)
            } else {
                LibraryTotal = Int(LibrarysLabel.text!)! + Int(LibraryjpTextField.text!)! + Int(sender.text!)!
                LibrarytLabel.text = String(LibraryTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //目星
    @objc func EducatedguessJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if EducatedguessipTextField.text?.isEmpty != true {
                EducatedguessTotal = Int(EducatedguesssLabel.text!)! + Int(EducatedguessipTextField.text!)!
                EducatedguesstLabel.text = String(EducatedguessTotal)
            } else if EducatedguessipTextField.text?.isEmpty == true {
                EducatedguesstLabel.text = EducatedguesssLabel.text
            }
        } else {
            if EducatedguessipTextField.text?.isEmpty == true {
                EducatedguessTotal = Int(EducatedguesssLabel.text!)! + Int(sender.text!)!
                EducatedguesstLabel.text = String(EducatedguessTotal)
            } else {
                EducatedguessTotal = Int(EducatedguesssLabel.text!)! + Int(sender.text!)! + Int(EducatedguessipTextField.text!)!
                EducatedguesstLabel.text = String(EducatedguessTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func EducatedguessIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if EducatedguessjpTextField.text?.isEmpty != true {
                EducatedguessTotal = Int(EducatedguesssLabel.text!)! + Int(EducatedguessjpTextField.text!)!
                EducatedguesstLabel.text = String(EducatedguessTotal)
            } else if EducatedguessipTextField.text?.isEmpty == true {
                EducatedguesstLabel.text = EducatedguesssLabel.text
            }
        } else {
            if EducatedguessjpTextField.text?.isEmpty == true {
                EducatedguessTotal = Int(EducatedguesssLabel.text!)! + Int(sender.text!)!
                EducatedguesstLabel.text = String(EducatedguessTotal)
            } else {
                EducatedguessTotal = Int(EducatedguesssLabel.text!)! + Int(EducatedguessjpTextField.text!)! + Int(sender.text!)!
                EducatedguesstLabel.text = String(EducatedguessTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //----行動技能----
    //運転
    @objc func DriveJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if DriveipTextField.text?.isEmpty != true {
                DriveTotal = Int(DrivesLabel.text!)! + Int(DriveipTextField.text!)!
                DrivetLabel.text = String(DriveTotal)
            } else if DriveipTextField.text?.isEmpty == true {
                DrivetLabel.text = DrivesLabel.text
            }
        } else {
            if DriveipTextField.text?.isEmpty == true {
                DriveTotal = Int(DrivesLabel.text!)! + Int(sender.text!)!
                DrivetLabel.text = String(DriveTotal)
            } else {
                DriveTotal = Int(DrivesLabel.text!)! + Int(sender.text!)! + Int(DriveipTextField.text!)!
                DrivetLabel.text = String(DriveTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func DriveIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if DrivejpTextField.text?.isEmpty != true {
                DriveTotal = Int(DrivesLabel.text!)! + Int(DrivejpTextField.text!)!
                DrivetLabel.text = String(DriveTotal)
            } else if DriveipTextField.text?.isEmpty == true {
                DrivetLabel.text = DrivesLabel.text
            }
        } else {
            if DrivejpTextField.text?.isEmpty == true {
                DriveTotal = Int(DrivesLabel.text!)! + Int(sender.text!)!
                DrivetLabel.text = String(DriveTotal)
            } else {
                DriveTotal = Int(DrivesLabel.text!)! + Int(DrivejpTextField.text!)! + Int(sender.text!)!
                DrivetLabel.text = String(DriveTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //機械修理
    @objc func MRepairJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if MRepairipTextField.text?.isEmpty != true {
                MRepairTotal = Int(MRepairsLabel.text!)! + Int(MRepairipTextField.text!)!
                MRepairtLabel.text = String(MRepairTotal)
            } else if MRepairipTextField.text?.isEmpty == true {
                MRepairtLabel.text = MRepairsLabel.text
            }
        } else {
            if MRepairipTextField.text?.isEmpty == true {
                MRepairTotal = Int(MRepairsLabel.text!)! + Int(sender.text!)!
                MRepairtLabel.text = String(MRepairTotal)
            } else {
                MRepairTotal = Int(MRepairsLabel.text!)! + Int(sender.text!)! + Int(MRepairipTextField.text!)!
                MRepairtLabel.text = String(MRepairTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func MRepairIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if MRepairjpTextField.text?.isEmpty != true {
                MRepairTotal = Int(MRepairsLabel.text!)! + Int(MRepairjpTextField.text!)!
                MRepairtLabel.text = String(MRepairTotal)
            } else if MRepairipTextField.text?.isEmpty == true {
                MRepairtLabel.text = MRepairsLabel.text
            }
        } else {
            if MRepairjpTextField.text?.isEmpty == true {
                MRepairTotal = Int(MRepairsLabel.text!)! + Int(sender.text!)!
                MRepairtLabel.text = String(MRepairTotal)
            } else {
                MRepairTotal = Int(MRepairsLabel.text!)! + Int(MRepairjpTextField.text!)! + Int(sender.text!)!
                MRepairtLabel.text = String(MRepairTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //重機械操作
    @objc func OperationJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if OperationipTextField.text?.isEmpty != true {
                OperationTotal = Int(OperationsLabel.text!)! + Int(OperationipTextField.text!)!
                OperationtLabel.text = String(OperationTotal)
            } else if OperationipTextField.text?.isEmpty == true {
                OperationtLabel.text = OperationsLabel.text
            }
        } else {
            if OperationipTextField.text?.isEmpty == true {
                OperationTotal = Int(OperationsLabel.text!)! + Int(sender.text!)!
                OperationtLabel.text = String(OperationTotal)
            } else {
                OperationTotal = Int(OperationsLabel.text!)! + Int(sender.text!)! + Int(OperationipTextField.text!)!
                OperationtLabel.text = String(OperationTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func OperationIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if OperationjpTextField.text?.isEmpty != true {
                OperationTotal = Int(OperationsLabel.text!)! + Int(OperationjpTextField.text!)!
                OperationtLabel.text = String(OperationTotal)
            } else if OperationipTextField.text?.isEmpty == true {
                OperationtLabel.text = OperationsLabel.text
            }
        } else {
            if OperationjpTextField.text?.isEmpty == true {
                OperationTotal = Int(OperationsLabel.text!)! + Int(sender.text!)!
                OperationtLabel.text = String(OperationTotal)
            } else {
                OperationTotal = Int(OperationsLabel.text!)! + Int(OperationjpTextField.text!)! + Int(sender.text!)!
                OperationtLabel.text = String(OperationTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //乗馬
    @objc func RidingJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if RidingipTextField.text?.isEmpty != true {
                RidingTotal = Int(RidingsLabel.text!)! + Int(RidingipTextField.text!)!
                RidingtLabel.text = String(RidingTotal)
            } else if RidingipTextField.text?.isEmpty == true {
                RidingtLabel.text = RidingsLabel.text
            }
        } else {
            if RidingipTextField.text?.isEmpty == true {
                RidingTotal = Int(RidingsLabel.text!)! + Int(sender.text!)!
                RidingtLabel.text = String(RidingTotal)
            } else {
                RidingTotal = Int(RidingsLabel.text!)! + Int(sender.text!)! + Int(RidingipTextField.text!)!
                RidingtLabel.text = String(RidingTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func RidingIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if RidingjpTextField.text?.isEmpty != true {
                RidingTotal = Int(RidingsLabel.text!)! + Int(RidingjpTextField.text!)!
                RidingtLabel.text = String(RidingTotal)
            } else if RidingipTextField.text?.isEmpty == true {
                RidingtLabel.text = RidingsLabel.text
            }
        } else {
            if RidingjpTextField.text?.isEmpty == true {
                RidingTotal = Int(RidingsLabel.text!)! + Int(sender.text!)!
                RidingtLabel.text = String(RidingTotal)
            } else {
                RidingTotal = Int(RidingsLabel.text!)! + Int(RidingjpTextField.text!)! + Int(sender.text!)!
                RidingtLabel.text = String(RidingTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //水泳
    @objc func SwimJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if SwimipTextField.text?.isEmpty != true {
                SwimTotal = Int(SwimsLabel.text!)! + Int(SwimipTextField.text!)!
                SwimtLabel.text = String(SwimTotal)
            } else if SwimipTextField.text?.isEmpty == true {
                SwimtLabel.text = SwimsLabel.text
            }
        } else {
            if SwimipTextField.text?.isEmpty == true {
                SwimTotal = Int(SwimsLabel.text!)! + Int(sender.text!)!
                SwimtLabel.text = String(SwimTotal)
            } else {
                SwimTotal = Int(SwimsLabel.text!)! + Int(sender.text!)! + Int(SwimipTextField.text!)!
                SwimtLabel.text = String(SwimTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func SwimIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if SwimjpTextField.text?.isEmpty != true {
                SwimTotal = Int(SwimsLabel.text!)! + Int(SwimjpTextField.text!)!
                SwimtLabel.text = String(SwimTotal)
            } else if SwimipTextField.text?.isEmpty == true {
                SwimtLabel.text = SwimsLabel.text
            }
        } else {
            if SwimjpTextField.text?.isEmpty == true {
                SwimTotal = Int(SwimsLabel.text!)! + Int(sender.text!)!
                SwimtLabel.text = String(SwimTotal)
            } else {
                SwimTotal = Int(SwimsLabel.text!)! + Int(SwimjpTextField.text!)! + Int(sender.text!)!
                SwimtLabel.text = String(SwimTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //製作
    @objc func ProductionJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ProductionipTextField.text?.isEmpty != true {
                ProductionTotal = Int(ProductionsLabel.text!)! + Int(ProductionipTextField.text!)!
                ProductiontLabel.text = String(ProductionTotal)
            } else if ProductionipTextField.text?.isEmpty == true {
                ProductiontLabel.text = ProductionsLabel.text
            }
        } else {
            if ProductionipTextField.text?.isEmpty == true {
                ProductionTotal = Int(ProductionsLabel.text!)! + Int(sender.text!)!
                ProductiontLabel.text = String(ProductionTotal)
            } else {
                ProductionTotal = Int(ProductionsLabel.text!)! + Int(sender.text!)! + Int(ProductionipTextField.text!)!
                ProductiontLabel.text = String(ProductionTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func ProductionIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ProductionjpTextField.text?.isEmpty != true {
                ProductionTotal = Int(ProductionsLabel.text!)! + Int(ProductionjpTextField.text!)!
                ProductiontLabel.text = String(ProductionTotal)
            } else if ProductionipTextField.text?.isEmpty == true {
                ProductiontLabel.text = ProductionsLabel.text
            }
        } else {
            if ProductionjpTextField.text?.isEmpty == true {
                ProductionTotal = Int(ProductionsLabel.text!)! + Int(sender.text!)!
                ProductiontLabel.text = String(ProductionTotal)
            } else {
                ProductionTotal = Int(ProductionsLabel.text!)! + Int(ProductionjpTextField.text!)! + Int(sender.text!)!
                ProductiontLabel.text = String(ProductionTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //操縦
    @objc func ControlJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ControlipTextField.text?.isEmpty != true {
                ControlTotal = Int(ControlsLabel.text!)! + Int(ControlipTextField.text!)!
                ControltLabel.text = String(ControlTotal)
            } else if ControlipTextField.text?.isEmpty == true {
                ControltLabel.text = ControlsLabel.text
            }
        } else {
            if ControlipTextField.text?.isEmpty == true {
                ControlTotal = Int(ControlsLabel.text!)! + Int(sender.text!)!
                ControltLabel.text = String(ControlTotal)
            } else {
                ControlTotal = Int(ControlsLabel.text!)! + Int(sender.text!)! + Int(ControlipTextField.text!)!
                ControltLabel.text = String(ControlTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func ControlIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ControljpTextField.text?.isEmpty != true {
                ControlTotal = Int(ControlsLabel.text!)! + Int(ControljpTextField.text!)!
                ControltLabel.text = String(ControlTotal)
            } else if ControlipTextField.text?.isEmpty == true {
                ControltLabel.text = ControlsLabel.text
            }
        } else {
            if ControljpTextField.text?.isEmpty == true {
                ControlTotal = Int(ControlsLabel.text!)! + Int(sender.text!)!
                ControltLabel.text = String(ControlTotal)
            } else {
                ControlTotal = Int(ControlsLabel.text!)! + Int(ControljpTextField.text!)! + Int(sender.text!)!
                ControltLabel.text = String(ControlTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //跳躍
    @objc func LeapJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if LeapipTextField.text?.isEmpty != true {
                LeapTotal = Int(LeapsLabel.text!)! + Int(LeapipTextField.text!)!
                LeaptLabel.text = String(LeapTotal)
            } else if LeapipTextField.text?.isEmpty == true {
                LeaptLabel.text = LeapsLabel.text
            }
        } else {
            if LeapipTextField.text?.isEmpty == true {
                LeapTotal = Int(LeapsLabel.text!)! + Int(sender.text!)!
                LeaptLabel.text = String(LeapTotal)
            } else {
                LeapTotal = Int(LeapsLabel.text!)! + Int(sender.text!)! + Int(LeapipTextField.text!)!
                LeaptLabel.text = String(LeapTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func LeapIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if LeapjpTextField.text?.isEmpty != true {
                LeapTotal = Int(LeapsLabel.text!)! + Int(LeapjpTextField.text!)!
                LeaptLabel.text = String(LeapTotal)
            } else if LeapipTextField.text?.isEmpty == true {
                LeaptLabel.text = LeapsLabel.text
            }
        } else {
            if LeapjpTextField.text?.isEmpty == true {
                LeapTotal = Int(LeapsLabel.text!)! + Int(sender.text!)!
                LeaptLabel.text = String(LeapTotal)
            } else {
                LeapTotal = Int(LeapsLabel.text!)! + Int(LeapjpTextField.text!)! + Int(sender.text!)!
                LeaptLabel.text = String(LeapTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //電気修理
    @objc func ERepairJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ERepairipTextField.text?.isEmpty != true {
                ERepairTotal = Int(ERepairsLabel.text!)! + Int(ERepairipTextField.text!)!
                ERepairtLabel.text = String(ERepairTotal)
            } else if ERepairipTextField.text?.isEmpty == true {
                ERepairtLabel.text = ERepairsLabel.text
            }
        } else {
            if ERepairipTextField.text?.isEmpty == true {
                ERepairTotal = Int(ERepairsLabel.text!)! + Int(sender.text!)!
                ERepairtLabel.text = String(ERepairTotal)
            } else {
                ERepairTotal = Int(ERepairsLabel.text!)! + Int(sender.text!)! + Int(ERepairipTextField.text!)!
                ERepairtLabel.text = String(ERepairTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func ERepairIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ERepairjpTextField.text?.isEmpty != true {
                ERepairTotal = Int(ERepairsLabel.text!)! + Int(ERepairjpTextField.text!)!
                ERepairtLabel.text = String(ERepairTotal)
            } else if ERepairipTextField.text?.isEmpty == true {
                ERepairtLabel.text = ERepairsLabel.text
            }
        } else {
            if ERepairjpTextField.text?.isEmpty == true {
                ERepairTotal = Int(ERepairsLabel.text!)! + Int(sender.text!)!
                ERepairtLabel.text = String(ERepairTotal)
            } else {
                ERepairTotal = Int(ERepairsLabel.text!)! + Int(ERepairjpTextField.text!)! + Int(sender.text!)!
                ERepairtLabel.text = String(ERepairTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //ナビゲート
    @objc func NaviJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if NaviipTextField.text?.isEmpty != true {
                NaviTotal = Int(NavisLabel.text!)! + Int(NaviipTextField.text!)!
                NavitLabel.text = String(NaviTotal)
            } else if NaviipTextField.text?.isEmpty == true {
                NavitLabel.text = NavisLabel.text
            }
        } else {
            if ERepairipTextField.text?.isEmpty == true {
                NaviTotal = Int(NavisLabel.text!)! + Int(sender.text!)!
                NavitLabel.text = String(NaviTotal)
            } else {
                ERepairTotal = Int(ERepairsLabel.text!)! + Int(sender.text!)! + Int(ERepairipTextField.text!)!
                ERepairtLabel.text = String(ERepairTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func NaviIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if NavijpTextField.text?.isEmpty != true {
                NaviTotal = Int(NavisLabel.text!)! + Int(NavijpTextField.text!)!
                NavitLabel.text = String(NaviTotal)
            } else if NaviipTextField.text?.isEmpty == true {
                NavitLabel.text = NavisLabel.text
            }
        } else {
            if NavijpTextField.text?.isEmpty == true {
                NaviTotal = Int(NavisLabel.text!)! + Int(sender.text!)!
                NavitLabel.text = String(NaviTotal)
            } else {
                NaviTotal = Int(NavisLabel.text!)! + Int(NavijpTextField.text!)! + Int(sender.text!)!
                NavitLabel.text = String(NaviTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //変装
    @objc func DisguiseJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if DisguiseipTextField.text?.isEmpty != true {
                DisguiseTotal = Int(DisguisesLabel.text!)! + Int(DisguiseipTextField.text!)!
                DisguisetLabel.text = String(DisguiseTotal)
            } else if DisguiseipTextField.text?.isEmpty == true {
                DisguisetLabel.text = DisguisesLabel.text
            }
        } else {
            if DisguiseipTextField.text?.isEmpty == true {
                DisguiseTotal = Int(DisguisesLabel.text!)! + Int(sender.text!)!
                DisguisetLabel.text = String(DisguiseTotal)
            } else {
                DisguiseTotal = Int(DisguisesLabel.text!)! + Int(sender.text!)! + Int(DisguiseipTextField.text!)!
                DisguisetLabel.text = String(DisguiseTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func DisguiseIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if DisguisejpTextField.text?.isEmpty != true {
                DisguiseTotal = Int(DisguisesLabel.text!)! + Int(DisguisejpTextField.text!)!
                DisguisetLabel.text = String(DisguiseTotal)
            } else if DisguiseipTextField.text?.isEmpty == true {
                DisguisetLabel.text = DisguisesLabel.text
            }
        } else {
            if DisguisejpTextField.text?.isEmpty == true {
                DisguiseTotal = Int(DisguisesLabel.text!)! + Int(sender.text!)!
                DisguisetLabel.text = String(DisguiseTotal)
            } else {
                DisguiseTotal = Int(DisguisesLabel.text!)! + Int(DisguisejpTextField.text!)! + Int(sender.text!)!
                DisguisetLabel.text = String(DisguiseTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //----交渉技能----
    //言いくるめ
    @objc func TalkintoJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if TalkintoipTextField.text?.isEmpty != true {
                TalkintoTotal = Int(TalkintosLabel.text!)! + Int(TalkintoipTextField.text!)!
                TalkintotLabel.text = String(TalkintoTotal)
            } else if TalkintoipTextField.text?.isEmpty == true {
                TalkintotLabel.text = TalkintosLabel.text
            }
        } else {
            if TalkintoipTextField.text?.isEmpty == true {
                TalkintoTotal = Int(TalkintosLabel.text!)! + Int(sender.text!)!
                TalkintotLabel.text = String(TalkintoTotal)
            } else {
                TalkintoTotal = Int(TalkintosLabel.text!)! + Int(sender.text!)! + Int(TalkintoipTextField.text!)!
                TalkintotLabel.text = String(TalkintoTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func TalkintoIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if TalkintojpTextField.text?.isEmpty != true {
                TalkintoTotal = Int(TalkintosLabel.text!)! + Int(TalkintojpTextField.text!)!
                TalkintotLabel.text = String(TalkintoTotal)
            } else if TalkintoipTextField.text?.isEmpty == true {
                TalkintotLabel.text = TalkintosLabel.text
            }
        } else {
            if TalkintojpTextField.text?.isEmpty == true {
                TalkintoTotal = Int(TalkintosLabel.text!)! + Int(sender.text!)!
                TalkintotLabel.text = String(TalkintoTotal)
            } else {
                TalkintoTotal = Int(TalkintosLabel.text!)! + Int(TalkintojpTextField.text!)! + Int(sender.text!)!
                TalkintotLabel.text = String(TalkintoTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //信用
    @objc func TrustJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if TrustipTextField.text?.isEmpty != true {
                TrustTotal = Int(TrustsLabel.text!)! + Int(TrustipTextField.text!)!
                TrusttLabel.text = String(TrustTotal)
            } else if TrustipTextField.text?.isEmpty == true {
                TrusttLabel.text = TrustsLabel.text
            }
        } else {
            if TrustipTextField.text?.isEmpty == true {
                TrustTotal = Int(TrustsLabel.text!)! + Int(sender.text!)!
                TrusttLabel.text = String(TrustTotal)
            } else {
                TrustTotal = Int(TrustsLabel.text!)! + Int(sender.text!)! + Int(TrustipTextField.text!)!
                TrusttLabel.text = String(TrustTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func TrustIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if TrustjpTextField.text?.isEmpty != true {
                TrustTotal = Int(TrustsLabel.text!)! + Int(TrustjpTextField.text!)!
                TrusttLabel.text = String(TrustTotal)
            } else if TrustipTextField.text?.isEmpty == true {
                TrusttLabel.text = TrustsLabel.text
            }
        } else {
            if TrustjpTextField.text?.isEmpty == true {
                TrustTotal = Int(TrustsLabel.text!)! + Int(sender.text!)!
                TrusttLabel.text = String(TrustTotal)
            } else {
                TrustTotal = Int(TrustsLabel.text!)! + Int(TrustjpTextField.text!)! + Int(sender.text!)!
                TrusttLabel.text = String(TrustTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //説得
    @objc func PersuasionJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PersuasionipTextField.text?.isEmpty != true {
                PersuasionTotal = Int(PersuasionsLabel.text!)! + Int(PersuasionipTextField.text!)!
                PersuasiontLabel.text = String(PersuasionTotal)
            } else if PersuasionipTextField.text?.isEmpty == true {
                PersuasiontLabel.text = PersuasionsLabel.text
            }
        } else {
            if PersuasionipTextField.text?.isEmpty == true {
                PersuasionTotal = Int(PersuasionsLabel.text!)! + Int(sender.text!)!
                PersuasiontLabel.text = String(PersuasionTotal)
            } else {
                PersuasionTotal = Int(PersuasionsLabel.text!)! + Int(sender.text!)! + Int(PersuasionipTextField.text!)!
                PersuasiontLabel.text = String(PersuasionTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func PersuasionIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PersuasionjpTextField.text?.isEmpty != true {
                PersuasionTotal = Int(PersuasionsLabel.text!)! + Int(PersuasionjpTextField.text!)!
                PersuasiontLabel.text = String(PersuasionTotal)
            } else if PersuasionipTextField.text?.isEmpty == true {
                PersuasiontLabel.text = PersuasionsLabel.text
            }
        } else {
            if PersuasionjpTextField.text?.isEmpty == true {
                PersuasionTotal = Int(PersuasionsLabel.text!)! + Int(sender.text!)!
                PersuasiontLabel.text = String(PersuasionTotal)
            } else {
                PersuasionTotal = Int(PersuasionsLabel.text!)! + Int(PersuasionjpTextField.text!)! + Int(sender.text!)!
                PersuasiontLabel.text = String(PersuasionTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //値切り
    @objc func BargainJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if BargainipTextField.text?.isEmpty != true {
                BargainTotal = Int(BargainsLabel.text!)! + Int(BargainipTextField.text!)!
                BargaintLabel.text = String(BargainTotal)
            } else if BargainipTextField.text?.isEmpty == true {
                BargaintLabel.text = BargainsLabel.text
            }
        } else {
            if BargainipTextField.text?.isEmpty == true {
                BargainTotal = Int(BargainsLabel.text!)! + Int(sender.text!)!
                BargaintLabel.text = String(BargainTotal)
            } else {
                BargainTotal = Int(BargainsLabel.text!)! + Int(sender.text!)! + Int(BargainipTextField.text!)!
                BargaintLabel.text = String(BargainTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func BargainIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if BargainjpTextField.text?.isEmpty != true {
                BargainTotal = Int(BargainsLabel.text!)! + Int(BargainjpTextField.text!)!
                BargaintLabel.text = String(BargainTotal)
            } else if BargainipTextField.text?.isEmpty == true {
                BargaintLabel.text = BargainsLabel.text
            }
        } else {
            if BargainjpTextField.text?.isEmpty == true {
                BargainTotal = Int(BargainsLabel.text!)! + Int(sender.text!)!
                BargaintLabel.text = String(BargainTotal)
            } else {
                BargainTotal = Int(BargainsLabel.text!)! + Int(BargainjpTextField.text!)! + Int(sender.text!)!
                BargaintLabel.text = String(BargainTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //母国語
    @objc func MTongueJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if MTongueipTextField.text?.isEmpty != true {
                MTongueTotal = Int(MTonguesLabel.text!)! + Int(MTongueipTextField.text!)!
                MTonguetLabel.text = String(MTongueTotal)
            } else if MTongueipTextField.text?.isEmpty == true {
                MTonguetLabel.text = MTonguesLabel.text
            }
        } else {
            if MTongueipTextField.text?.isEmpty == true {
                MTongueTotal = Int(MTonguesLabel.text!)! + Int(sender.text!)!
                MTonguetLabel.text = String(MTongueTotal)
            } else {
                MTongueTotal = Int(MTonguesLabel.text!)! + Int(sender.text!)! + Int(MTongueipTextField.text!)!
                MTonguetLabel.text = String(MTongueTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func MTongueIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if MTonguejpTextField.text?.isEmpty != true {
                MTongueTotal = Int(MTonguesLabel.text!)! + Int(MTonguejpTextField.text!)!
                MTonguetLabel.text = String(MTongueTotal)
            } else if MTongueipTextField.text?.isEmpty == true {
                MTonguetLabel.text = MTonguesLabel.text
            }
        } else {
            if MTonguejpTextField.text?.isEmpty == true {
                MTongueTotal = Int(MTonguesLabel.text!)! + Int(sender.text!)!
                MTonguetLabel.text = String(MTongueTotal)
            } else {
                MTongueTotal = Int(MTonguesLabel.text!)! + Int(MTonguejpTextField.text!)! + Int(sender.text!)!
                MTonguetLabel.text = String(MTongueTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //----知識技能----
    //医学
    @objc func MedicineJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if MedicineipTextField.text?.isEmpty != true {
                MedicineTotal = Int(MedicinesLabel.text!)! + Int(MedicineipTextField.text!)!
                MedicinetLabel.text = String(MedicineTotal)
            } else if MedicineipTextField.text?.isEmpty == true {
                MedicinetLabel.text = MedicinesLabel.text
            }
        } else {
            if MedicineipTextField.text?.isEmpty == true {
                MedicineTotal = Int(MedicinesLabel.text!)! + Int(sender.text!)!
                MedicinetLabel.text = String(MedicineTotal)
            } else {
                MedicineTotal = Int(MedicinesLabel.text!)! + Int(sender.text!)! + Int(MedicineipTextField.text!)!
                MedicinetLabel.text = String(MedicineTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func MedicineIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if MedicinejpTextField.text?.isEmpty != true {
                MedicineTotal = Int(MedicinesLabel.text!)! + Int(MedicinejpTextField.text!)!
                MedicinetLabel.text = String(MedicineTotal)
            } else if MedicineipTextField.text?.isEmpty == true {
                MedicinetLabel.text = MedicinesLabel.text
            }
        } else {
            if MedicinejpTextField.text?.isEmpty == true {
                MedicineTotal = Int(MedicinesLabel.text!)! + Int(sender.text!)!
                MedicinetLabel.text = String(MedicineTotal)
            } else {
                MedicineTotal = Int(MedicinesLabel.text!)! + Int(MedicinejpTextField.text!)! + Int(sender.text!)!
                MedicinetLabel.text = String(MedicineTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //オカルト
    @objc func OccultJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if OccultipTextField.text?.isEmpty != true {
                OccultTotal = Int(OccultsLabel.text!)! + Int(OccultipTextField.text!)!
                OcculttLabel.text = String(OccultTotal)
            } else if OccultipTextField.text?.isEmpty == true {
                OcculttLabel.text = OccultsLabel.text
            }
        } else {
            if OccultipTextField.text?.isEmpty == true {
                OccultTotal = Int(OccultsLabel.text!)! + Int(sender.text!)!
                OcculttLabel.text = String(OccultTotal)
            } else {
                OccultTotal = Int(OccultsLabel.text!)! + Int(sender.text!)! + Int(OccultipTextField.text!)!
                OcculttLabel.text = String(OccultTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func OccultIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if OccultjpTextField.text?.isEmpty != true {
                OccultTotal = Int(OccultsLabel.text!)! + Int(MedicinejpTextField.text!)!
                OcculttLabel.text = String(OccultTotal)
            } else if OccultipTextField.text?.isEmpty == true {
                OcculttLabel.text = OccultsLabel.text
            }
        } else {
            if OccultjpTextField.text?.isEmpty == true {
                OccultTotal = Int(OccultsLabel.text!)! + Int(sender.text!)!
                OcculttLabel.text = String(OccultTotal)
            } else {
                OccultTotal = Int(OccultsLabel.text!)! + Int(OccultjpTextField.text!)! + Int(sender.text!)!
                OcculttLabel.text = String(OccultTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //化学
    @objc func ChemistryJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ChemistryipTextField.text?.isEmpty != true {
                ChemistryTotal = Int(ChemistrysLabel.text!)! + Int(ChemistryipTextField.text!)!
                ChemistrytLabel.text = String(ChemistryTotal)
            } else if ChemistryipTextField.text?.isEmpty == true {
                ChemistrytLabel.text = ChemistrysLabel.text
            }
        } else {
            if ChemistryipTextField.text?.isEmpty == true {
                ChemistryTotal = Int(ChemistrysLabel.text!)! + Int(sender.text!)!
                ChemistrytLabel.text = String(ChemistryTotal)
            } else {
                ChemistryTotal = Int(ChemistrysLabel.text!)! + Int(sender.text!)! + Int(ChemistryipTextField.text!)!
                ChemistrytLabel.text = String(ChemistryTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func ChemistryIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ChemistryjpTextField.text?.isEmpty != true {
                ChemistryTotal = Int(ChemistrysLabel.text!)! + Int(ChemistryjpTextField.text!)!
                ChemistrytLabel.text = String(ChemistryTotal)
            } else if ChemistryipTextField.text?.isEmpty == true {
                ChemistrytLabel.text = ChemistrysLabel.text
            }
        } else {
            if ChemistryjpTextField.text?.isEmpty == true {
                ChemistryTotal = Int(ChemistrysLabel.text!)! + Int(sender.text!)!
                ChemistrytLabel.text = String(ChemistryTotal)
            } else {
                ChemistryTotal = Int(ChemistrysLabel.text!)! + Int(ChemistryjpTextField.text!)! + Int(sender.text!)!
                ChemistrytLabel.text = String(ChemistryTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //ｸﾄｩﾙﾌ神話
    @objc func CthulhuJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if CthulhuipTextField.text?.isEmpty != true {
                CthulhuTotal = Int(CthulhusLabel.text!)! + Int(CthulhuipTextField.text!)!
                CthulhutLabel.text = String(CthulhuTotal)
            } else if CthulhuipTextField.text?.isEmpty == true {
                CthulhutLabel.text = CthulhusLabel.text
            }
        } else {
            if CthulhuipTextField.text?.isEmpty == true {
                CthulhuTotal = Int(CthulhusLabel.text!)! + Int(sender.text!)!
                CthulhutLabel.text = String(CthulhuTotal)
            } else {
                CthulhuTotal = Int(CthulhusLabel.text!)! + Int(sender.text!)! + Int(CthulhuipTextField.text!)!
                CthulhutLabel.text = String(CthulhuTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func CthulhuIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if CthulhujpTextField.text?.isEmpty != true {
                CthulhuTotal = Int(CthulhusLabel.text!)! + Int(CthulhujpTextField.text!)!
                CthulhutLabel.text = String(CthulhuTotal)
            } else if CthulhuipTextField.text?.isEmpty == true {
                CthulhutLabel.text = CthulhusLabel.text
            }
        } else {
            if CthulhujpTextField.text?.isEmpty == true {
                CthulhuTotal = Int(CthulhusLabel.text!)! + Int(sender.text!)!
                CthulhutLabel.text = String(CthulhuTotal)
            } else {
                CthulhuTotal = Int(CthulhusLabel.text!)! + Int(CthulhujpTextField.text!)! + Int(sender.text!)!
                CthulhutLabel.text = String(CthulhuTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //芸術
    @objc func ArtJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ArtipTextField.text?.isEmpty != true {
                ArtTotal = Int(ArtsLabel.text!)! + Int(ArtipTextField.text!)!
                ArttLabel.text = String(ArtTotal)
            } else if ArtipTextField.text?.isEmpty == true {
                ArttLabel.text = ArtsLabel.text
            }
        } else {
            if ArtipTextField.text?.isEmpty == true {
                ArtTotal = Int(ArtsLabel.text!)! + Int(sender.text!)!
                ArttLabel.text = String(ArtTotal)
            } else {
                ArtTotal = Int(ArtsLabel.text!)! + Int(sender.text!)! + Int(ArtipTextField.text!)!
                ArttLabel.text = String(ArtTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func ArtIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ArtjpTextField.text?.isEmpty != true {
                ArtTotal = Int(ArtsLabel.text!)! + Int(ArtjpTextField.text!)!
                ArttLabel.text = String(ArtTotal)
            } else if ArtipTextField.text?.isEmpty == true {
                ArttLabel.text = ArtsLabel.text
            }
        } else {
            if ArtjpTextField.text?.isEmpty == true {
                ArtTotal = Int(ArtsLabel.text!)! + Int(sender.text!)!
                ArttLabel.text = String(ArtTotal)
            } else {
                ArtTotal = Int(ArtsLabel.text!)! + Int(ArtjpTextField.text!)! + Int(sender.text!)!
                ArttLabel.text = String(ArtTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //経理
    @objc func AccountingJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if AccountingipTextField.text?.isEmpty != true {
                AccountingTotal = Int(AccountingsLabel.text!)! + Int(AccountingipTextField.text!)!
                AccountingtLabel.text = String(AccountingTotal)
            } else if AccountingipTextField.text?.isEmpty == true {
                AccountingtLabel.text = AccountingsLabel.text
            }
        } else {
            if AccountingipTextField.text?.isEmpty == true {
                AccountingTotal = Int(AccountingsLabel.text!)! + Int(sender.text!)!
                AccountingtLabel.text = String(AccountingTotal)
            } else {
                AccountingTotal = Int(AccountingsLabel.text!)! + Int(sender.text!)! + Int(AccountingipTextField.text!)!
                AccountingtLabel.text = String(AccountingTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func AccountingIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if AccountingjpTextField.text?.isEmpty != true {
                AccountingTotal = Int(AccountingsLabel.text!)! + Int(AccountingjpTextField.text!)!
                AccountingtLabel.text = String(AccountingTotal)
            } else if AccountingipTextField.text?.isEmpty == true {
                AccountingtLabel.text = AccountingsLabel.text
            }
        } else {
            if AccountingjpTextField.text?.isEmpty == true {
                AccountingTotal = Int(AccountingsLabel.text!)! + Int(sender.text!)!
                AccountingtLabel.text = String(AccountingTotal)
            } else {
                AccountingTotal = Int(AccountingsLabel.text!)! + Int(AccountingjpTextField.text!)! + Int(sender.text!)!
                AccountingtLabel.text = String(AccountingTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //考古学
    @objc func ArcheologyJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ArcheologyipTextField.text?.isEmpty != true {
                ArcheologyTotal = Int(ArcheologysLabel.text!)! + Int(ArcheologyipTextField.text!)!
                ArcheologytLabel.text = String(ArcheologyTotal)
            } else if ArcheologyipTextField.text?.isEmpty == true {
                ArcheologytLabel.text = ArcheologysLabel.text
            }
        } else {
            if ArcheologyipTextField.text?.isEmpty == true {
                ArcheologyTotal = Int(ArcheologysLabel.text!)! + Int(sender.text!)!
                ArcheologytLabel.text = String(ArcheologyTotal)
            } else {
                ArcheologyTotal = Int(ArcheologysLabel.text!)! + Int(sender.text!)! + Int(ArcheologyipTextField.text!)!
                ArcheologytLabel.text = String(ArcheologyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func ArcheologyIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ArcheologyjpTextField.text?.isEmpty != true {
                ArcheologyTotal = Int(ArcheologysLabel.text!)! + Int(ArcheologyjpTextField.text!)!
                ArcheologytLabel.text = String(ArcheologyTotal)
            } else if ArcheologyipTextField.text?.isEmpty == true {
                ArcheologytLabel.text = ArcheologysLabel.text
            }
        } else {
            if ArcheologyjpTextField.text?.isEmpty == true {
                ArcheologyTotal = Int(ArcheologysLabel.text!)! + Int(sender.text!)!
                ArcheologytLabel.text = String(ArcheologyTotal)
            } else {
                ArcheologyTotal = Int(ArcheologysLabel.text!)! + Int(ArcheologyjpTextField.text!)! + Int(sender.text!)!
                ArcheologytLabel.text = String(ArcheologyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //ｺﾝﾋﾟｭｰﾀｰ
    @objc func ComputerJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ComputeripTextField.text?.isEmpty != true {
                ComputerTotal = Int(ComputersLabel.text!)! + Int(ComputeripTextField.text!)!
                ComputertLabel.text = String(ComputerTotal)
            } else if ComputeripTextField.text?.isEmpty == true {
                ComputertLabel.text = ComputersLabel.text
            }
        } else {
            if ComputeripTextField.text?.isEmpty == true {
                ComputerTotal = Int(ComputersLabel.text!)! + Int(sender.text!)!
                ComputertLabel.text = String(ComputerTotal)
            } else {
                ComputerTotal = Int(ComputersLabel.text!)! + Int(sender.text!)! + Int(ComputeripTextField.text!)!
                ComputertLabel.text = String(ComputerTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func ComputerIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if ComputerjpTextField.text?.isEmpty != true {
                ComputerTotal = Int(ComputersLabel.text!)! + Int(ComputerjpTextField.text!)!
                ComputertLabel.text = String(ComputerTotal)
            } else if ComputeripTextField.text?.isEmpty == true {
                ComputertLabel.text = ComputersLabel.text
            }
        } else {
            if ComputerjpTextField.text?.isEmpty == true {
                ComputerTotal = Int(ComputersLabel.text!)! + Int(sender.text!)!
                ComputertLabel.text = String(ComputerTotal)
            } else {
                ComputerTotal = Int(ComputersLabel.text!)! + Int(ComputerjpTextField.text!)! + Int(sender.text!)!
                ComputertLabel.text = String(ComputerTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //心理学
    @objc func PsychologyJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PsychologyipTextField.text?.isEmpty != true {
                PsychologyTotal = Int(PsychologysLabel.text!)! + Int(PsychologyipTextField.text!)!
                PsychologytLabel.text = String(PsychologyTotal)
            } else if PsychologyipTextField.text?.isEmpty == true {
                PsychologytLabel.text = PsychologysLabel.text
            }
        } else {
            if PsychologyipTextField.text?.isEmpty == true {
                PsychologyTotal = Int(PsychologysLabel.text!)! + Int(sender.text!)!
                PsychologytLabel.text = String(PsychologyTotal)
            } else {
                PsychologyTotal = Int(PsychologysLabel.text!)! + Int(sender.text!)! + Int(PsychologyipTextField.text!)!
                PsychologytLabel.text = String(PsychologyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func PsychologyIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PsychologyjpTextField.text?.isEmpty != true {
                PsychologyTotal = Int(PsychologysLabel.text!)! + Int(PsychologyjpTextField.text!)!
                PsychologytLabel.text = String(PsychologyTotal)
            } else if PsychologyipTextField.text?.isEmpty == true {
                PsychologytLabel.text = PsychologysLabel.text
            }
        } else {
            if PsychologyjpTextField.text?.isEmpty == true {
                PsychologyTotal = Int(PsychologysLabel.text!)! + Int(sender.text!)!
                PsychologytLabel.text = String(PsychologyTotal)
            } else {
                PsychologyTotal = Int(PsychologysLabel.text!)! + Int(PsychologyjpTextField.text!)! + Int(sender.text!)!
                PsychologytLabel.text = String(PsychologyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //人類学
    @objc func AnthropologyJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if AnthropologyipTextField.text?.isEmpty != true {
                AnthropologyTotal = Int(AnthropologysLabel.text!)! + Int(AnthropologyipTextField.text!)!
                AnthropologytLabel.text = String(AnthropologyTotal)
            } else if AnthropologyipTextField.text?.isEmpty == true {
                AnthropologytLabel.text = AnthropologysLabel.text
            }
        } else {
            if AnthropologyipTextField.text?.isEmpty == true {
                AnthropologyTotal = Int(AnthropologysLabel.text!)! + Int(sender.text!)!
                AnthropologytLabel.text = String(AnthropologyTotal)
            } else {
                AnthropologyTotal = Int(AnthropologysLabel.text!)! + Int(sender.text!)! + Int(AnthropologyipTextField.text!)!
                AnthropologytLabel.text = String(AnthropologyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func AnthropologyIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if AnthropologyjpTextField.text?.isEmpty != true {
                AnthropologyTotal = Int(AnthropologysLabel.text!)! + Int(AnthropologyjpTextField.text!)!
                AnthropologytLabel.text = String(AnthropologyTotal)
            } else if AnthropologyipTextField.text?.isEmpty == true {
                AnthropologytLabel.text = AnthropologysLabel.text
            }
        } else {
            if AnthropologyjpTextField.text?.isEmpty == true {
                AnthropologyTotal = Int(AnthropologysLabel.text!)! + Int(sender.text!)!
                AnthropologytLabel.text = String(AnthropologyTotal)
            } else {
                AnthropologyTotal = Int(AnthropologysLabel.text!)! + Int(AnthropologyjpTextField.text!)! + Int(sender.text!)!
                AnthropologytLabel.text = String(AnthropologyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //生物学
    @objc func BiologyJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if BiologyipTextField.text?.isEmpty != true {
                BiologyTotal = Int(BiologysLabel.text!)! + Int(BiologyipTextField.text!)!
                BiologytLabel.text = String(BiologyTotal)
            } else if BiologyipTextField.text?.isEmpty == true {
                BiologytLabel.text = BiologysLabel.text
            }
        } else {
            if BiologyipTextField.text?.isEmpty == true {
                BiologyTotal = Int(BiologysLabel.text!)! + Int(sender.text!)!
                BiologytLabel.text = String(BiologyTotal)
            } else {
               BiologyTotal = Int(BiologysLabel.text!)! + Int(sender.text!)! + Int(BiologyipTextField.text!)!
                BiologytLabel.text = String(BiologyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func BiologyIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if BiologyjpTextField.text?.isEmpty != true {
                BiologyTotal = Int(BiologysLabel.text!)! + Int(BiologyjpTextField.text!)!
                BiologytLabel.text = String(BiologyTotal)
            } else if BiologyipTextField.text?.isEmpty == true {
                BiologytLabel.text = BiologysLabel.text
            }
        } else {
            if BiologyjpTextField.text?.isEmpty == true {
                BiologyTotal = Int(BiologysLabel.text!)! + Int(sender.text!)!
                BiologytLabel.text = String(BiologyTotal)
            } else {
                BiologyTotal = Int(BiologysLabel.text!)! + Int(BiologyjpTextField.text!)! + Int(sender.text!)!
                BiologytLabel.text = String(BiologyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //地質学
    @objc func GeologyJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if GeologyipTextField.text?.isEmpty != true {
                GeologyTotal = Int(GeologysLabel.text!)! + Int(GeologyipTextField.text!)!
                GeologytLabel.text = String(GeologyTotal)
            } else if GeologyipTextField.text?.isEmpty == true {
                GeologytLabel.text = GeologysLabel.text
            }
        } else {
            if GeologyipTextField.text?.isEmpty == true {
                GeologyTotal = Int(GeologysLabel.text!)! + Int(sender.text!)!
                GeologytLabel.text = String(GeologyTotal)
            } else {
                GeologyTotal = Int(GeologysLabel.text!)! + Int(sender.text!)! + Int(GeologyipTextField.text!)!
                GeologytLabel.text = String(GeologyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func GeologyIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if GeologyjpTextField.text?.isEmpty != true {
                GeologyTotal = Int(GeologysLabel.text!)! + Int(GeologyjpTextField.text!)!
                GeologytLabel.text = String(GeologyTotal)
            } else if GeologyipTextField.text?.isEmpty == true {
                GeologytLabel.text = GeologysLabel.text
            }
        } else {
            if GeologyjpTextField.text?.isEmpty == true {
                GeologyTotal = Int(GeologysLabel.text!)! + Int(sender.text!)!
                GeologytLabel.text = String(GeologyTotal)
            } else {
                GeologyTotal = Int(GeologysLabel.text!)! + Int(GeologyjpTextField.text!)! + Int(sender.text!)!
                GeologytLabel.text = String(GeologyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //電子工学
    @objc func EEJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if EEipTextField.text?.isEmpty != true {
                EETotal = Int(EEsLabel.text!)! + Int(EEipTextField.text!)!
                EEtLabel.text = String(EETotal)
            } else if EEipTextField.text?.isEmpty == true {
                EEtLabel.text = EEsLabel.text
            }
        } else {
            if EEipTextField.text?.isEmpty == true {
                EETotal = Int(EEsLabel.text!)! + Int(sender.text!)!
                EEtLabel.text = String(EETotal)
            } else {
                EETotal = Int(EEsLabel.text!)! + Int(sender.text!)! + Int(EEipTextField.text!)!
                EEtLabel.text = String(EETotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func EEIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if EEjpTextField.text?.isEmpty != true {
                EETotal = Int(EEsLabel.text!)! + Int(EEjpTextField.text!)!
                EEtLabel.text = String(EETotal)
            } else if EEipTextField.text?.isEmpty == true {
                EEtLabel.text = EEsLabel.text
            }
        } else {
            if EEjpTextField.text?.isEmpty == true {
                EETotal = Int(EEsLabel.text!)! + Int(sender.text!)!
                EEtLabel.text = String(EETotal)
            } else {
                EETotal = Int(EEsLabel.text!)! + Int(EEjpTextField.text!)! + Int(sender.text!)!
                EEtLabel.text = String(EETotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //天文学
    @objc func AstronomyJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if AstronomyipTextField.text?.isEmpty != true {
                AstronomyTotal = Int(AstronomysLabel.text!)! + Int(AstronomyipTextField.text!)!
                AstronomytLabel.text = String(AstronomyTotal)
            } else if AstronomyipTextField.text?.isEmpty == true {
                AstronomytLabel.text = AstronomysLabel.text
            }
        } else {
            if AstronomyipTextField.text?.isEmpty == true {
                AstronomyTotal = Int(AstronomysLabel.text!)! + Int(sender.text!)!
                AstronomytLabel.text = String(AstronomyTotal)
            } else {
                AstronomyTotal = Int(AstronomysLabel.text!)! + Int(sender.text!)! + Int(AstronomyipTextField.text!)!
                AstronomytLabel.text = String(AstronomyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func AstronomyIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if AstronomyjpTextField.text?.isEmpty != true {
                AstronomyTotal = Int(AstronomysLabel.text!)! + Int(AstronomyjpTextField.text!)!
                AstronomytLabel.text = String(AstronomyTotal)
            } else if AstronomyipTextField.text?.isEmpty == true {
                AstronomytLabel.text = AstronomysLabel.text
            }
        } else {
            if AstronomyjpTextField.text?.isEmpty == true {
                AstronomyTotal = Int(AstronomysLabel.text!)! + Int(sender.text!)!
                AstronomytLabel.text = String(AstronomyTotal)
            } else {
                AstronomyTotal = Int(AstronomysLabel.text!)! + Int(AstronomyjpTextField.text!)! + Int(sender.text!)!
                AstronomytLabel.text = String(AstronomyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //博物学
    @objc func NHistoryJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if NHistoryipTextField.text?.isEmpty != true {
                NHistoryTotal = Int(NHistorysLabel.text!)! + Int(NHistoryipTextField.text!)!
                NHistorytLabel.text = String(NHistoryTotal)
            } else if NHistoryipTextField.text?.isEmpty == true {
                NHistorytLabel.text = NHistorysLabel.text
            }
        } else {
            if NHistoryipTextField.text?.isEmpty == true {
                NHistoryTotal = Int(NHistorysLabel.text!)! + Int(sender.text!)!
                NHistorytLabel.text = String(NHistoryTotal)
            } else {
                NHistoryTotal = Int(NHistorysLabel.text!)! + Int(sender.text!)! + Int(NHistoryipTextField.text!)!
                NHistorytLabel.text = String(NHistoryTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func NHistoryIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if NHistoryjpTextField.text?.isEmpty != true {
                NHistoryTotal = Int(NHistorysLabel.text!)! + Int(NHistoryjpTextField.text!)!
                NHistorytLabel.text = String(NHistoryTotal)
            } else if NHistoryipTextField.text?.isEmpty == true {
                NHistorytLabel.text = NHistorysLabel.text
            }
        } else {
            if NHistoryjpTextField.text?.isEmpty == true {
                NHistoryTotal = Int(NHistorysLabel.text!)! + Int(sender.text!)!
                NHistorytLabel.text = String(NHistoryTotal)
            } else {
                NHistoryTotal = Int(NHistorysLabel.text!)! + Int(NHistoryjpTextField.text!)! + Int(sender.text!)!
                NHistorytLabel.text = String(NHistoryTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //物理学
    @objc func PhysicsJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PhysicsipTextField.text?.isEmpty != true {
                PhysicsTotal = Int(PhysicssLabel.text!)! + Int(PhysicsipTextField.text!)!
                PhysicstLabel.text = String(PhysicsTotal)
            } else if PhysicsipTextField.text?.isEmpty == true {
                PhysicstLabel.text = PhysicssLabel.text
            }
        } else {
            if PhysicsipTextField.text?.isEmpty == true {
                PhysicsTotal = Int(PhysicssLabel.text!)! + Int(sender.text!)!
                PhysicstLabel.text = String(PhysicsTotal)
            } else {
                PhysicsTotal = Int(PhysicssLabel.text!)! + Int(sender.text!)! + Int(PhysicsipTextField.text!)!
                PhysicstLabel.text = String(PhysicsTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func PhysicsIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PhysicsjpTextField.text?.isEmpty != true {
                PhysicsTotal = Int(PhysicssLabel.text!)! + Int(PhysicsjpTextField.text!)!
                PhysicstLabel.text = String(PhysicsTotal)
            } else if PhysicsipTextField.text?.isEmpty == true {
                PhysicstLabel.text = PhysicssLabel.text
            }
        } else {
            if PhysicsjpTextField.text?.isEmpty == true {
                PhysicsTotal = Int(PhysicssLabel.text!)! + Int(sender.text!)!
                PhysicstLabel.text = String(PhysicsTotal)
            } else {
                PhysicsTotal = Int(PhysicssLabel.text!)! + Int(PhysicsjpTextField.text!)! + Int(sender.text!)!
                PhysicstLabel.text = String(PhysicsTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //法律
    @objc func LawJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if LawipTextField.text?.isEmpty != true {
                LawTotal = Int(LawsLabel.text!)! + Int(LawipTextField.text!)!
                LawtLabel.text = String(LawTotal)
            } else if LawipTextField.text?.isEmpty == true {
                LawtLabel.text = LawsLabel.text
            }
        } else {
            if LawipTextField.text?.isEmpty == true {
                LawTotal = Int(LawsLabel.text!)! + Int(sender.text!)!
                LawtLabel.text = String(LawTotal)
            } else {
                LawTotal = Int(LawsLabel.text!)! + Int(sender.text!)! + Int(LawipTextField.text!)!
                LawtLabel.text = String(LawTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func LawIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if LawjpTextField.text?.isEmpty != true {
                LawTotal = Int(LawsLabel.text!)! + Int(LawjpTextField.text!)!
                LawtLabel.text = String(LawTotal)
            } else if LawipTextField.text?.isEmpty == true {
                LawtLabel.text = LawsLabel.text
            }
        } else {
            if LawjpTextField.text?.isEmpty == true {
                LawTotal = Int(LawsLabel.text!)! + Int(sender.text!)!
                LawtLabel.text = String(LawTotal)
            } else {
                LawTotal = Int(LawsLabel.text!)! + Int(LawjpTextField.text!)! + Int(sender.text!)!
                LawtLabel.text = String(LawTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //薬学
    @objc func PharmacyJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PharmacyipTextField.text?.isEmpty != true {
                PharmacyTotal = Int(PharmacysLabel.text!)! + Int(PharmacyipTextField.text!)!
                PharmacytLabel.text = String(PharmacyTotal)
            } else if PharmacyipTextField.text?.isEmpty == true {
                PharmacytLabel.text = PharmacysLabel.text
            }
        } else {
            if PharmacyipTextField.text?.isEmpty == true {
                PharmacyTotal = Int(PharmacysLabel.text!)! + Int(sender.text!)!
                PharmacytLabel.text = String(PharmacyTotal)
            } else {
                PharmacyTotal = Int(PharmacysLabel.text!)! + Int(sender.text!)! + Int(PharmacyipTextField.text!)!
                PharmacytLabel.text = String(PharmacyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func PharmacyIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if PharmacyjpTextField.text?.isEmpty != true {
                PharmacyTotal = Int(PharmacysLabel.text!)! + Int(PharmacyjpTextField.text!)!
                PharmacytLabel.text = String(PharmacyTotal)
            } else if PharmacyipTextField.text?.isEmpty == true {
                PharmacytLabel.text = PharmacysLabel.text
            }
        } else {
            if PharmacyjpTextField.text?.isEmpty == true {
                PharmacyTotal = Int(PharmacysLabel.text!)! + Int(sender.text!)!
                PharmacytLabel.text = String(PharmacyTotal)
            } else {
                PharmacyTotal = Int(PharmacysLabel.text!)! + Int(PharmacyjpTextField.text!)! + Int(sender.text!)!
                PharmacytLabel.text = String(PharmacyTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    //歴史
    @objc func HistoryJPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if HistoryipTextField.text?.isEmpty != true {
                HistoryTotal = Int(HistorysLabel.text!)! + Int(HistoryipTextField.text!)!
                HistorytLabel.text = String(HistoryTotal)
            } else if HistoryipTextField.text?.isEmpty == true {
                HistorytLabel.text = HistorysLabel.text
            }
        } else {
            if HistoryipTextField.text?.isEmpty == true {
                HistoryTotal = Int(HistorysLabel.text!)! + Int(sender.text!)!
                HistorytLabel.text = String(HistoryTotal)
            } else {
                HistoryTotal = Int(HistorysLabel.text!)! + Int(sender.text!)! + Int(HistoryipTextField.text!)!
                HistorytLabel.text = String(HistoryTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldjpArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(JobaLabel.text!)! - total
        JobnLabel.text = String(total)
        
        if total < 0 {
            JobnLabel.backgroundColor = UIColor.red
        } else {
            JobnLabel.backgroundColor = UIColor.white
        }
    }
    
    
    @objc func HistoryIPChange(_ sender: UITextField) {
        if sender.text?.isEmpty == true {
            sender.text = ""
            if HistoryjpTextField.text?.isEmpty != true {
                HistoryTotal = Int(HistorysLabel.text!)! + Int(HistoryjpTextField.text!)!
                HistorytLabel.text = String(HistoryTotal)
            } else if HistoryipTextField.text?.isEmpty == true {
                HistorytLabel.text = HistorysLabel.text
            }
        } else {
            if HistoryjpTextField.text?.isEmpty == true {
                HistoryTotal = Int(HistorysLabel.text!)! + Int(sender.text!)!
                HistorytLabel.text = String(HistoryTotal)
            } else {
                HistoryTotal = Int(HistorysLabel.text!)! + Int(HistoryjpTextField.text!)! + Int(sender.text!)!
                HistorytLabel.text = String(HistoryTotal)
            }
        }
        
        var total = 0
        for tf in TextFieldipArray {
            if tf.text?.isEmpty != true {
                total = total + Int(tf.text!)!
            }
        }
        
        total = Int(InterestaLabel.text!)! - total
        InterestnLabel.text = String(total)
        
        if total < 0 {
            InterestnLabel.backgroundColor = UIColor.red
        } else {
            InterestnLabel.backgroundColor = UIColor.white
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
    }
    
    
    @objc func tapCancelButton(sender: UIButton) {
        backgroundView.removeFromSuperview()
        for box in checkboxArray {
            box.isSelected = false
        }
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
            }
            
            i = i + 1
        }
    }
    
    //STR
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
    
    //CON
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
    
    //POW
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
    
    //DEX
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
    
    //APP
    @objc func APPDies(_ sender: Timer) {
        let rnd1 = Int.random(in: 1...6)
        let rnd2 = Int.random(in: 1...6)
        let rnd3 = Int.random(in: 1...6)
        let total = rnd1 + rnd2 + rnd3
        APPaLabel.text = String(total)
        APPnLabel.text = String(total)
    }
    
    //SIZ
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
    
    //INT
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
    
    //EDU
    @objc func EDUDies(_ sender: Timer) {
        let rnd1 = Int.random(in: 1...6)
        let rnd2 = Int.random(in: 1...6)
        let rnd3 = Int.random(in: 1...6)
        let total = rnd1 + rnd2 + rnd3 + 3
        EDUaLabel.text = String(total)
        EDUnLabel.text = String(total)
        if total > 99 {
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
