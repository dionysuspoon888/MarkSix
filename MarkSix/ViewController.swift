//
//  ViewController.swift
//  MarkSix
//
//  Created by aaa on 18/9/2018.
//  Copyright © 2018年 Kam Lung Poon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    
    @IBOutlet weak var generatefield: UITextField!
    
    var i = 0;
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func generateRandomNumber(_ from:Int , _ to:Int , _ qut:Int?) -> [Int]{
//        var randomNumbers = [Int]()
//        return randomNumbers
//
//    }

    
    @IBAction func Generate(_ sender: Any) {
        var randomNumberList = [Int]();
    
        randomNumberList.append(Int.random(in: 1 ... 49));
        
        while(randomNumberList.count < 7){
            let tmpRandomNumber = Int.random(in: 1 ... 49)
            var equalNumber = false;
            for number in randomNumberList{
                if(tmpRandomNumber == number ){
                    equalNumber = true;
                }
            }
            if(!equalNumber){
                randomNumberList.append(tmpRandomNumber);
            }
        }
        
        var result:String = "";
        
    
        var j = 0;
        while(j < 7 ){
            if( j == 0 ){
                result += String(randomNumberList[j])
            }else if( j < 6){
                
                result += "," + String(randomNumberList[j])
            }else{
                
                result += " + " + String(randomNumberList[j])
            }
            j = j + 1;
        }
        
        
        generatefield.text = "\(result)"
    }

    
   
    
}

