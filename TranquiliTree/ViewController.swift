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
    @IBOutlet weak var wordBank: UILabel!
    @IBOutlet weak var quizAnswer: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionText.text = "How are you feeling today?"
        wordBank.text = "Choose from: depressed, angry, sad, meh, happy"
        quizResponse.isHidden = true
    }
    
    var questionNumber = 0
    
    @IBAction func nextButton(_ sender: UIButton) {
        if questionNumber == 0 {
            questionText.text = "What's bothering you?"
            wordBank.text = "Choose from: grief/loss, stress, loneliness/antisocial, unproductive, nothing"
            quizAnswer.text = nil
            quizResponse.isHidden = true
            questionNumber += 1
        } else if questionNumber == 1 {
            questionText.text = "Have you done anything to combat your issues?"
            wordBank.text = "Choose from: talked to a therapist, reduced screen time, enjoyed a hobby, other/more than one/nothing to combat, none"
            quizAnswer.text = nil
            quizResponse.isHidden = true
            questionNumber += 1
        } else if questionNumber == 2 {
            questionText.text = "Did you get a good night's sleep yesterday?"
            wordBank.text = "Choose from: I did, I did not"
            quizAnswer.text = nil
            quizResponse.isHidden = true
            questionNumber += 1
        } else if questionNumber == 3 {
            questionText.text = "Did you strive towards your goals today?"
            wordBank.text = "Choose from: yes I did, no I did not"
            quizAnswer.text = nil
            quizResponse.isHidden = true
        }
        // I would make the last "if else" statement an "else" statement, but this is a safety in case we decide to add more questions. -Leah
    }
    
    @IBAction func submitResponse(_ sender: UIButton) {
        if quizAnswer.text != nil {
            var answer = quizAnswer.text?.lowercased()
            if answer == "depressed" {
                quizResponse.isHidden = false
                quizResponse.text = "Today might have been bad, but there are better days to come! If you need support, please visit the “Resources” page and look at the hotlines linked underneath “Immediate Help”."
            } else if answer == "angry" {
                quizResponse.isHidden = false
                quizResponse.text = "It is completely normal to be angry. If it’s something you can control, take time to think about it and if it’s necessary to take next steps."
            } else if answer == "sad" {
                quizResponse.isHidden = false
                quizResponse.text = "Feeling sad is completely okay, just remember that tomorrow can be better. Try doing something you love, or just give yourself time to come to terms with your emotions."
            } else if answer == "meh" {
                quizResponse.isHidden = false
                quizResponse.text = "Sometimes things don’t feel good or bad, and that’s completely normal! Something special doesn't have to happen everyday, you can do little things to make the day special!"
            } else if answer == "happy" {
                quizResponse.isHidden = false
                quizResponse.text = "Continue to be happy! We’re happy that you’re happy."
            } else if answer == "grief" || answer == "loss" || answer == "grief/loss" {
                quizResponse.isHidden = false
                quizResponse.text = "Everyone grieves differently, so there’s no wrong way to do it. If you’re not sure where to start addressing it, try talking to somebody about what you’re going through."
            } else if answer == "stress" {
                quizResponse.isHidden = false
                quizResponse.text = "Stress can be extremely overwhelming, take some time to care for yourself as you work. You should never put your work over your own health. It’s okay to remove things from your schedule for the sake of your well being."
            } else if answer == "loneliness" || answer == "antisocial" || answer == "loneliness/antisocial" {
                quizResponse.isHidden = false
                quizResponse.text = "Sometimes we get caught in our own thoughts which just shows how intentful we are! However, it is important to not overthink. Remember that no one truly judges as much as yourself!"
            } else if answer == "unproductive" {
                quizResponse.isHidden = false
                quizResponse.text = "Focus is a difficult thing to control. Don’t let this lack of productivity define you. Take a break, reassess, and try again tomorrow."
            } else if answer == "nothing" {
                quizResponse.isHidden = false
                quizResponse.text = "That’s great! Enjoy this time and treat yourself."
            } else if answer == "talked to a therapist" {
                quizResponse.isHidden = false
                quizResponse.text = "We applaud your action and motivation to get better."
            } else if answer == "reduced screen time" {
                quizResponse.isHidden = false
                quizResponse.text = "In this age of technology, it is often difficult to detach ourselves from our screens. Amazing work with doing so, keep it up."
            } else if answer == "enjoyed a hobby" {
                quizResponse.isHidden = false
                quizResponse.text = "Indulging in your hobbies can improve your mental health in a plethora of ways. Continue to do things that make you happy."
            } else if answer == "other" || answer == "more than one" || answer == "nothing to combat" || answer == "other/more than one/nothing to combat" {
                quizResponse.isHidden = false
                quizResponse.text = "We are so proud of all the steps you are taking for better mental health."
            } else if answer == "none" {
                quizResponse.isHidden = false
                quizResponse.text = "Giving yourself time to think is a great way to combat issues. Take time to narrow down priorities and focus on what’s best."
            } else if answer == "i did" {
                quizResponse.isHidden = false
                quizResponse.text = "That’s great to hear! Sleeping well improves mental health, so it’s great to see that you’re maintaining yours!"
            } else if answer == "i did not" {
                quizResponse.isHidden = false
                quizResponse.text = "Schedules can be really hard on you sometimes, so try to get as much sleep as you can every day! Remember, don’t overwork yourself and keep your body healthy!"
            } else if answer == "yes i did" {
                quizResponse.isHidden = false
                quizResponse.text = "Good job! Every step matters, no matter how large the goal might be."
            } else if answer == "no i did not" {
                quizResponse.isHidden = false
                quizResponse.text = "That’s perfectly fine! It’s important to take days off, so relax and unwind."
            } else {
                quizResponse.isHidden = false
                quizResponse.text = "That answer is invalid. Make sure you adhere exactly to the word bank."
            }
        }
    }
    
}
