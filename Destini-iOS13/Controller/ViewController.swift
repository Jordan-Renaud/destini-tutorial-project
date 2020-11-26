//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(choiceNumber: storyBrain.storyNumber)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI(choiceNumber: storyBrain.storyNumber)
        print(storyBrain.storyNumber)
        print(sender.currentTitle!)
    }
    
    func updateUI(choiceNumber: Int) {
        storyLabel.text = storyBrain.stories[choiceNumber].text
        choice1Button.setTitle(storyBrain.stories[choiceNumber].one, for: .normal)
        choice2Button.setTitle(storyBrain.stories[choiceNumber].two, for: .normal)
    }
    
}

