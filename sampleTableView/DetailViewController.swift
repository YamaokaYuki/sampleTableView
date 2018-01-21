//
//  DetailViewController.swift
//  sampleTableView
//
//  Created by 山岡由季 on 2018/01/19.
//  Copyright © 2018年 山岡由季. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    //選択された行番号が受け渡されるプロパティ
    var passedIndex = -1 //渡されてないことを認識するために-1を代入
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        myImageView.image = UIImage(named:"Darjeeling.png")
        

        print("渡された行番号:\(passedIndex)")
        
        //if文
        
        if passedIndex == 0{
            myTextView.text = "Darjeeling tea\n\n Darjeeling tea is a tea from the Darjeeling district in West Bengal, India. It is available in black, green, white and oolong. When properly brewed, it yields a thin-bodied, light-coloured infusion with a floral aroma."
            
            
            
        }else if passedIndex == 1{
            myTextView.text = "Earl Gray tea\n\n Earl Grey tea is a tea blend which has been flavoured with the addition of oil of bergamot. Bergamot is a variety of orange that is often grown in Italy and France. The rind's fragrant oil is added to black tea to give Earl Grey its signature pungent punch."
            
        }else if passedIndex == 2{
            myTextView.text = "Assam tea\n\n Assam tea is a black tea named after the region of its production, Assam, in India. It is also traditionally used in Yunnan province in China.Assam tea is manufactured specifically from the plant Camellia sinensis var. assamica (Masters)."
            
        }else{
            myTextView.text = "Orenge Pekoe tea\n\n Pekoe tea grades are classified into various qualities, each determined by how many of the adjacent young leaves (two, one, or none) were picked along with the leaf buds. Top-quality pekoe grades consist of only the leaf buds, which are picked using the balls of the fingertips."
            
        }
        
        
        // 角に丸みをつける.
        myTextView.layer.masksToBounds = true
        
        // 丸みのサイズを設定する.
        myTextView.layer.cornerRadius = 20.0
        
        // 枠線の太さを設定する.
        myTextView.layer.borderWidth = 1
        
        // 枠線の色を設定する.
        myTextView.layer.borderColor = UIColor.lightGray.cgColor
        
        //編集不可(読み取り専用)
        myTextView.isEditable = false
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


