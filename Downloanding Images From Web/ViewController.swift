//
//  ViewController.swift
//  Downloanding Images From Web
//
//  Created by Hugo Morelli on 10/17/16.
//  Copyright © 2016 Hugo Morelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        if documentsPath.count > 0 {
            
            let documentsDirectory = documentsPath[0]
            
            let restorePath = documentsDirectory + "/zidane.jpg"
            
                
                try imageView.image = UIImage(contentsOfFile: restorePath)
            
        }
        
        
        
        /*
        
        let url = URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Zidane_Zizu.jpg/160px-Zidane_Zizu.jpg")
        
        let request = NSMutableURLRequest(url: url!)
        
        let task = URLSession.shared.dataTask(with: request as URLRequest){data,response,error in
            
            if error != nil {
            
                print(error)
            } else {
                
                if let data = data {
                    
                    if let image = UIImage(data: data) {
                        
                        self.imageView.image = image
                        
                        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
                        if documentsPath.count > 0 {
                            
                            let documentsDirectory = documentsPath[0]
                            
                            let savePath = documentsDirectory + "/zidane.jpg"
                            do{
                                
                                try UIImageJPEGRepresentation(image, 1)?.write(to: URL(fileURLWithPath: savePath))
                                
                            } catch {
                                
                                print("Error")
                                
                            }
                        }
                    }
                }
            }
            
        }
        task.resume()
 */ 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

