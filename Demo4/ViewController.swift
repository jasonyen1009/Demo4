//
//  ViewController.swift
//  Demo4
//
//  Created by Jason on 2021/7/29.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var greennumber: UILabel!
    @IBOutlet weak var bluenumber: UILabel!
    @IBOutlet weak var alphanumber: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var loveTextField: UITextField!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet var viewBackground: UIView!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func speak(_ sender: Any) {
        let speechUtterance = AVSpeechUtterance(string: loveTextField.text!)
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speechUtterance)
        
    }
    @IBAction func slider(_ sender: Any) {
        viewBackground.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        number.text = String(format: "%.2f", redSlider.value)
        bluenumber.text = String(format: "%.2f", blueSlider.value)
        greennumber.text = String(format: "%.2f", greenSlider.value)
        alphanumber.text = String(format: "%.2f", alphaSlider.value)
        
    }
    @IBAction func randomnumber(_ sender: Any) {
        redSlider.value = Float(Int.random(in: 0...100))/100
        greenSlider.value = Float(Int.random(in: 0...100))/100
        blueSlider.value = Float(Int.random(in: 0...100))/100
        
        viewBackground.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        number.text = String(format: "%.2f", redSlider.value)
        bluenumber.text = String(format: "%.2f", blueSlider.value)
        greennumber.text = String(format: "%.2f", greenSlider.value)
        //alphanumber.text = String(format: "%.2f", alphaSlider.value)
        print(greenSlider.value)
        print(redSlider.value)
    }
    

}


