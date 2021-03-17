//
//  ViewController.swift
//  War Card Game
//
//  Created by Kyle Shal on 2021-02-19.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    
    @IBOutlet weak var RightScoreLabel: UILabel!
    //intitialize variables
    var rightScore = 0
    var leftScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func DealTapped(_ sender: Any) {
        
        //Randomize numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        //change the left card
        LeftImageView.image = UIImage(named: "card\(leftNumber)")
        
        //change the right card
        RightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //compare the random numbers
        if leftNumber > rightNumber{
            
            //left side wins
            leftScore += 1
            LeftScoreLabel.text = String(leftScore)
            
            
        }else if leftNumber < rightNumber{
            //right side wins
            rightScore += 1
            RightScoreLabel.text = String(rightScore)
            
        }else{
            //tie
            rightScore += 1
            RightScoreLabel.text = String(rightScore)
            
            leftScore += 1
            LeftScoreLabel.text = String(leftScore)

        }
        
    }
    

}
 
 
