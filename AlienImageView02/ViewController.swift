//
//  ViewController.swift
//  AlienImageView02
//
//  Created by D7703_26 on 2019. 3. 28..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var monsterImage: UIImageView!
    
    @IBOutlet weak var countLabel: UILabel!
    
    var check = false, count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        monsterImage.image = UIImage(named: "frame1.png")
        //countLabel.text = String(count)
        countLabel.text = "frame\(count).png"
    }

    @IBAction func btnAction(_ sender: Any) {
       /*if(!check){
            if(count == 5){
                check = true
                count -= 1
            }else{
            count += 1
        }
        }else{
            if(count == 1){
                check = false
                count -= 1
            }
        }*/
        if count == 5 {
            check = false
        }else if count == 1{
            check = true
        }
        if check == true {
            count += 1
        }else if check == false{
            count -= 1
        }
        monsterImage.image = UIImage(named: "frame\(count).png")
        //countLabel.text = String(count)
        countLabel.text = "frame\(count).png"
    }
    
    }
    


