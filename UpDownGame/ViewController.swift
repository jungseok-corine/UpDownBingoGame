//
//  ViewController.swift
//  UpDownGame
//
//  Created by 오정석 on 27/11/2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var introduceLabel: UILabel!
    @IBOutlet weak var numSelectedLabel: UILabel!
    
    var comSelectedNumebr = Int.random(in: 1...10)
    var numString: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        makeUI()
        
        
    }

    func makeUI() {
        introduceLabel.text = "선택하세요"
        numSelectedLabel.text = ""
        comSelectedNumebr = Int.random(in: 1...10)
        
    }
    
    
    @IBAction func numButtonTapped(_ sender: UIButton) {
        numString = sender.currentTitle!
        
        
        numSelectedLabel.text = numString
        
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        makeUI()
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        guard let mySelectedNum = Int(numString!) else {
            introduceLabel.text = "선택되지 않았습니다"
            return
        }
        
        if comSelectedNumebr > mySelectedNum {
            introduceLabel.text = "UP"
        } else if comSelectedNumebr < mySelectedNum {
            introduceLabel.text = "DOWN"
        } else {
            introduceLabel.text = "BINGO🥳"
        }
    }
    

}

