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
    @IBOutlet weak var moodText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func stressedButton(_ sender: UIButton) {
        moodText.isHidden = false
        moodText.text = "Feeling Stressed? Stress can stem from a variety of factors. Tackling stress may be harder for some but the first step is finding the cause. List out all potential stressors in your life. (I.e. school, clubs, relationships). Create a To Do list for stressors that have upcoming deadlines. Prioritize your list by most important. What things have the shortest deadline? Put breaks into the list you created. Completing your work won’t always eliminate your stress, sometimes you’ll have to input long term habits. \n-Meditate \n-Yoga \n-Bullet journal \n-Talk to a professional"
        }

    
    @IBAction func happyButton(_ sender: UIButton) {
        moodText.isHidden = false
        moodText.text = "Feeling Happy? If you struggle with fluctuating mental health, it may come hard to find yourself feeling happy. That is why it is extremely important to cherish the feeling rather than focusing on it’s possible short timespan. Focus on the high rather than the potential of an upcoming low. Use this feeling to finish projects that would otherwise go untouched. Look for new hobbies that further spur this emotion so you can use them in the future. Take a moment to treat yourself to some luxuries. Using your ups to begin healthy habits or starting new hobbies can aid in future moments of feeling down, stressed, etc. \n- Buy clothes \n- Visit friends \n- Create study playlists"
    }
    
    @IBAction func sadButton(_ sender: UIButton) {
        moodText.isHidden = false
        moodText.text = "Feeling Down? A multitude of factors can cause you to be filled with sadness. Sometimes, there is no reason behind the feeling at all. Cause or not, tackling sadness involves a good amount of understanding your emotions and what causes you to lessen negative ones. Narrow down and list any potential causes of this feeling. Are there recent events that could be upsetting you? Determine if you have control over the factors making you sad. A sense of direction can aid significantly with improving your mood. Take this time to talk with others. Outside perspectives can help lessen the impact of mood dampeners. Do low-risk actions that can spur positive feelings, no matter how strong. (I.e paint, make your favorite dish, call a friend). Sometimes, even your own hobbies can not do much to pull yourself out of a sad state. This is because sadness often takes a good amount of energy out of you. In these moments, allow yourself to indulge but do so in ways that bring comfort and motivation. Rewatch your favorite shows, visit parks, gardens, or cafes, and create upbeat or nostalgic playlists."
    }
    
    @IBAction func tiredButton(_ sender: UIButton) {
        moodText.isHidden = false
        moodText.text = "Feeling Tired? Sleep troubles can lead to a plethora of other physical and emotional issues. It is extremely important to create healthy sleeping habits and uphold them the best you can. First utilize a To Do list in order to organize your work and prioritize things by deadline. From there you can rearrange your schedule and make more room for sleep. Set aside time before you sleep to fully unwind. This will make it easier to fall asleep in general. Go to sleep at the same time each night, or at least around the same time. This will allow your body to set an internal clock. Stop oversleeping. When you initially wake up, use that adrenaline to get out of bed for any reason. For example, keep your phone away from the bed in order to force you to move to turn off your alarm.Other options: There may be cases in which your sleep troubles are not ratified by editing your schedule. Other options to improve your sleep environment: Utilize calming playlists, lessen your caffeine intake, meditate, invest in new pillows or blankets, or write or read before bed."
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
