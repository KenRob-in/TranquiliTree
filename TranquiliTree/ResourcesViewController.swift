//
//  ResourcesViewController.swift
//  TranquiliTree
//
//  Created by Leah Li on 6/30/21.
//  Copyright © 2021 Kennedi Robison. All rights reserved.
//

import UIKit

class ResourcesViewController: UIViewController {

    @IBOutlet weak var resourcesResponse: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resourcesResponse.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func immediateHelp(_ sender: UIButton) {
        resourcesResponse.isHidden = false
        resourcesResponse.text = "All hotlines mentioned below operate 24/7. Please note that there are countless other resources available other than the ones mentioned. \nNational Suicide Prevention Hotline: 1-800-273-8255\nConfidential support for individuals. \nThe Trevor Project: 866-488-7386 \nSupport for the LGBTQ+ young adult community.\nCrisis Text Line: Text “HOME” to:\nUnited States and Canada: 741741\nUnited Kingdom: 85258\nTexting support for all crises.\nEmergency Situations:\nUnited States and Canada: 911\nUnited Kingdom: 999"
    }
    
    @IBAction func feelingDisconnected(_ sender: UIButton) {
        resourcesResponse.isHidden = false
        resourcesResponse.text = "Staying inside a lot often causes people to feel disconnected and can worsen one’s mental state. Here are some things you can do to recharge: bike, volunteer in your community (I.e trash pick up), go to the park, go on walks, and/or walk your pets."
    }
    
    @IBAction func selfCare(_ sender: UIButton) {
        resourcesResponse.isHidden = false
        resourcesResponse.text = "It is always great to spend a little time and money on yourself. Here are some sustainable brands to do just that: Papillon, Rethreaded, Pact, H&M, Reformation, Organic Valley, Cliff Bar and Company, Ella’s Kitchen, Ben & Jerry’s, General Mills, Elate Beauty, 100% Pure, and Nudi Goods."
    }
    
    @IBAction func goGreen(_ sender: UIButton) {
        resourcesResponse.isHidden = false
        resourcesResponse.text = "Studies have shown there is a correlation between one’s mental and their environment. Here are some things you can do to improve your area: \nBegin recycling plastic bottles, cardboard boxes, aluminum cans, non broken glass bottles, etc. \nStart a compost: Fruit scraps, vegetable scraps, coffee grounds, egg shells, and tea bags. \nPurchase greenery such as Pothos, Snake Plant, Aloe Vera.\nFor more information, please visit this link: https://youmatter.world/en/definition/definitions-sustainability-definition-examples-principles/"
    }
    
}
