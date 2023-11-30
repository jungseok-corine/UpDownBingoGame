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
    
    var upDownManager = UpDownManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        makeUI()
        
        
    }

    func makeUI() {
        introduceLabel.text = "선택하세요"
        numSelectedLabel.text = ""
    }
    
    
    @IBAction func numButtonTapped(_ sender: UIButton) {
        guard let numString = sender.currentTitle else { return }
        numSelectedLabel.text = numString
        
        guard let num = Int(numString) else { return }
        upDownManager.setUsersNum(num: num)
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        makeUI()
        upDownManager.resetNum()
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        
        introduceLabel.text = upDownManager.getUpDownResult()
        
    }
    

}

