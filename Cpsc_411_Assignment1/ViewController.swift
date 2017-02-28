//
//  ViewController.swift
//  Cpsc_411_Assignment1
//
//  Created by Tray on 2/26/17.
//  Copyright © 2017 Tray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variables
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var weightLbl: UITextField!
    @IBOutlet weak var heightLbl: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var bmiLbl: UILabel!
    @IBOutlet weak var metric: UISwitch!
    var w: Float = 0.0
    var h: Float = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Button calculation
    @IBAction func calculateBtn(_ sender: Any) {
        w = Float(weight.text!)!
        h = Float(height.text!)!
        if(!metric.isOn){
            w = w * 0.45
            h = h * 0.025
        }
        h = h * h
        let bmi:Float = w / h
        bmiLbl.text = "Bmi is " + String(bmi)
        bmiLbl.isHidden = false
        if bmi < 18 {
            imgView.image = UIImage(named: "skinny.jpg")
        }
        else if bmi > 18 && bmi < 25{
            imgView.image = UIImage(named: "healthy.jpg")
        }
        else if bmi > 25 && bmi < 30 {
            imgView.image = UIImage(named: "overweight.jpg")
        }
        else{
            imgView.image = UIImage(named: "damn.jpg")
        }
    }
}

