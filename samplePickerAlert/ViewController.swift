//
//  ViewController.swift
//  samplePickerAlert
//
//  Created by Tsukasa Chinen on 2017/10/24.
//  Copyright © 2017年 Tsukasa Chinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var myPickerView: UIPickerView!

    var teaList = [
        "ダージリン"
        ,"アールグレイ"
        ,"アッサム"
        ,"オレンジペコ"
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickerView.dataSource = self
        myPickerView.delegate = self
    }
    //2.ピッカービューの数列を決定する
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //3.ピッカービューの行数を決定する
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teaList.count
    }
    
    //4.ピッカービューに表示する文字の設定。
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //今ピッカービューが何行目のデータを作ろうとしているか
        return teaList[row]
    }
    
    //(6.)選択された項目をデバックエリアに表示
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let alert = UIAlertController(
            title: "紅茶選択"
            ,message: "\(teaList[row])飲みたい！"
            ,preferredStyle: .alert
        )

        alert.addAction(UIAlertAction(
            title: "OK"
            ,style: .default
            ,handler: nil
        ))

        present(
             alert
            ,animated: true
            ,completion: nil
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


