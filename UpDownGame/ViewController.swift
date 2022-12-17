//
//  ViewController.swift
//  UpDownGame
//
//  Created by 노민우 on 2022/12/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var comNumber = Int.random(in: 1...10)
    // var myNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) 메인레이블에 "선택하세요"
        mainLabel.text = "선택하세요"
        // 2) 숫자 레이블은 ""
        numberLabel.text = ""
    }
    
    
    // 유저가 클릭하는 버튼 1~10
    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1) 버튼의 숫자를 가져와야함
        guard let numTitle = sender.currentTitle else { return }
        // 2) 숫자 레이블이 변하도록 (숫자에 따라)
        numberLabel.text = numTitle
        // 3) 선택하 숫자를 변수에다가 저장 (선택)
        //        guard let num = Int(numTitle) else { return }
        //        myNumber = num
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1) 랜덤 컴퓨터 숫자와 유저가 선택한 숫자를 비교해서 up/down/bingo (메인 레이블에 표시)
        
        guard let myNumString = numberLabel.text else {return}
        guard let myNumber = Int(myNumString) else {return}
        
        if comNumber > myNumber {
            mainLabel.text = "UP"
        } else if comNumber < myNumber {
            mainLabel.text = "Down"
        } else {
            mainLabel.text = "Bingo🤩"
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1) mainLabel "선택하세요로 변경"
        mainLabel.text = "선택하세요"
        // 2) 컴퓨터의 랜덤 숫자를 다시 선택하게
        comNumber = Int.random(in: 1...10)
        // 3) 숫자 레이블을 "" 빈 문자열
        numberLabel.text = ""
    }
    
}

