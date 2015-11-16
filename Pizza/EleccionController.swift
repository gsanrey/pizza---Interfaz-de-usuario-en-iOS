//
//  EleccionController.swift
//  Pizza
//
//  Created by Gabriel Urso Santana Reyes on 16/11/15.
//  Copyright © 2015 Gabriel Urso Santana Reyes. All rights reserved.
//

import UIKit

class EleccionController: UIViewController {
    
    var etam = "No seleccionado"
    var emas = "No seleccionado"
    var eque = "No seleccionado"
    var eing = ["","","","","",""]

    @IBOutlet weak var ltam: UILabel!
    @IBOutlet weak var lmas: UILabel!
    @IBOutlet weak var lque: UILabel!
    @IBOutlet weak var lin1: UILabel!
    @IBOutlet weak var lin2: UILabel!
    @IBOutlet weak var lin3: UILabel!
    @IBOutlet weak var lin4: UILabel!
    @IBOutlet weak var lin5: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.ltam.text = self.etam
        self.lque.text = self.emas
        self.lmas.text = self.eque
        self.lin1.text = self.eing[0]
        self.lin2.text = self.eing[1]
        self.lin3.text = self.eing[2]
        self.lin4.text = self.eing[3]
        self.lin5.text = self.eing[4]

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
