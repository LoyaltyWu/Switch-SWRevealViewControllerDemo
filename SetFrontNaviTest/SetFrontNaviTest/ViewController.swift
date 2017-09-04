//
//  ViewController.swift
//  SetFrontNaviTest
//
//  Created by Wu on 2017/9/4.
//  Copyright © 2017年 Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var back: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        setSW()
        back.target = getSW()
        back.action = #selector(getSW().revealToggle(_:))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UIViewController{
    func getApp()->AppDelegate{
        return UIApplication.shared.delegate as! AppDelegate
    }
    func setSW(){
        getApp().swVC = getApp().window?.rootViewController as! SWRevealViewController
    }
    func getSW()->SWRevealViewController{
        return getApp().swVC
    }
    func getRoot()->UIViewController{
        return (getApp().window?.rootViewController)!
    }
}
