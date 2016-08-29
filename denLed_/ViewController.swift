//
//  ViewController.swift
//  denLed_
//
//  Created by Admin on 8/29/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var _margin_row: CGFloat = 40
    var _margin_col: CGFloat = 65
    var n = 0
    var iconView = [UIImageView]()

    @IBOutlet weak var number: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
            }
    
    @IBAction func action_Draw(sender: AnyObject) {
        number.resignFirstResponder()

        n = Int(number.text!)!
        removeBall()
        drawBall()
        
    }
    
    
    func drawBall()  {
        var ball: UIImageView? = nil
        
        for indexRow in 1...n{
            for indexdCol in 1...n{
                
                let image = UIImage(named: "green")
                 ball = UIImageView(image: image)

                ball!.center = CGPointMake(_margin_row + CGFloat(indexRow-1 ) * spaceRow() , CGFloat(indexdCol-1) * spaceCol() + _margin_col)
                self.view.addSubview(ball!)
                iconView.append(ball!)

            }
        }
        
    }
    func removeBall(){
        for i in 0..<iconView.count{
            iconView[i].removeFromSuperview()
        }
        iconView.removeAll()
    }
    func spaceRow() -> CGFloat {
        var space: CGFloat = 0
        
        if(n > 1){
             space = (self.view.bounds.size.width - 2*_margin_row)/CGFloat(n-1)
        }else{
             space = CGFloat(0)
        }
                return space
    }
    func spaceCol() -> CGFloat {
        var space: CGFloat = 0
        if(n > 1){
            space = (self.view.bounds.size.height - 2*_margin_col)/CGFloat(n-1)
        }else{
            space = CGFloat(0)
        }
        
        return space
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        
        number.resignFirstResponder()
        
    }

    


}

