//
//  ViewController.swift
//  TranquiliTree
//
//  Created by Kennedi Robison on 6/29/21.
//  Copyright © 2021 Kennedi Robison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quizResponse: UILabel!
    @IBOutlet weak var questionText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func firstAnswer(_ sender: UIButton) {
        quizResponse.isHidden = false
        quizResponse.text = "Today might have been bad, but there are better days to come! If you need support, please visit the “Resources” page and look at the hotlines linked underneath “Immediate Help”."
    }
    
    @IBAction func secondAnswer(_ sender: UIButton) {
         quizResponse.isHidden = false
        quizResponse.text = "It is completely normal to be angry. If it’s something you can control, take time to think about it and if it’s necessary to take next steps."
    }
    @IBAction func thirdAnswer(_ sender: UIButton) {
         quizResponse.isHidden = false
        quizResponse.text = "Feeling sad is completely okay, just remember that tomorrow can be better. Try doing something you love, or just give yourself time to come to terms with your emotions."
    }
    @IBAction func forthAnswer(_ sender: UIButton) {
         quizResponse.isHidden = false
        quizResponse.text = "Sometimes things don’t feel good or bad, and that’s completely normal! Something special doesn't have to happen everyday, you can do little things to make the day special!"
    }
    @IBAction func fifthAnswer(_ sender: UIButton) {
         quizResponse.isHidden = false
        quizResponse.text = "Continue to be happy! We’re happy that you’re happy. "
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        questionText.text = "What is bothering you?"
    }
}

