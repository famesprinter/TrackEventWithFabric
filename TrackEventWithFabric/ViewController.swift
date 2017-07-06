//
//  ViewController.swift
//  TrackEventWithFabric
//
//  Created by Kittitat Rogphotong on 7/6/2560 BE.
//  Copyright © 2560 FameSprinteR. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Action
import Crashlytics

class ViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var eventBtn: UIButton!
    
    // MARK: - Variable
    let disposeBag = DisposeBag()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
            
        eventBtn.rx.action = Action {
            print("Event Button did tap : ))")
            Crashlytics.sharedInstance().crash()
            return Observable.empty()
        }
    }
}

