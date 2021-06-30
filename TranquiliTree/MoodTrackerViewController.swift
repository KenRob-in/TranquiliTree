//
//  MoodTrackerViewController.swift
//  TranquiliTree
//
//  Created by Kennedi Robison on 6/29/21.
//  Copyright © 2021 Kennedi Robison. All rights reserved.
//

import UIKit

class MoodTrackerViewController: UIViewController {
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var stressedScroll: UIScrollView!
    @IBOutlet weak var sadScroll: UIScrollView!
    @IBOutlet weak var happyScroll: UIScrollView!
    @IBOutlet weak var tiredScroll: UIScrollView!
    @IBOutlet weak var stressedView: UIView!
    @IBOutlet weak var happyView: UIView!
    @IBOutlet weak var tiredView: UIView!
    @IBOutlet weak var stressedText: UILabel!
    @IBOutlet weak var happyText: UILabel!
    @IBOutlet weak var sadText: UILabel!
    @IBOutlet weak var tiredText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func stressedButton(_ sender: UIButton) {
        if stressedText.isHidden == true {
        stressedText.isHidden = false
        }
    }
    
    @IBAction func happyButton(_ sender: UIButton) {
        if happyText.isHidden == true{
            happyText.isHidden = false
        }
    }
    
    @IBAction func sadButton(_ sender: UIButton) {
        if sadText.isHidden == true{
            sadText.isHidden = false
        }
    }
    
    @IBAction func tiredButton(_ sender: UIButton) {
        if tiredText.isHidden == true{
            tiredText.isHidden = false
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
