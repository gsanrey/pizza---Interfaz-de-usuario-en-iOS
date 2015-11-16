//
//  IngredientesController.swift
//  Pizza
//
//  Created by Gabriel Urso Santana Reyes on 16/11/15.
//  Copyright © 2015 Gabriel Urso Santana Reyes. All rights reserved.
//

import UIKit

class IngredientesController: UIViewController {
    
    var etam = "No seleccionado"
    var emas = "No seleccionado"
    var eque = "No seleccionado"
    var eing = ["","","","","",""]
    var ipiña = 0

    @IBOutlet weak var piña: UIButton!
    @IBAction func piñaA(sender: AnyObject) {
        if self.ipiña == 1{
            self.ipiña = 0
            self.piña.setImage(UIImage(named: "si"), forState: UIControlState.Normal)
        }
        else{
            self.ipiña = 1
                        self.piña.setImage(UIImage(named: "no"), forState: UIControlState.Normal)
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! EleccionController
        /*
        switch (self.que.selectedSegmentIndex){
        case 0:
            sigVista.etam = "MOZZARELLA"
        case 1:
            sigVista.etam = "CHEDDAR"
        case 2:
            sigVista.etam = "PARMESANO"
        case 3:
            sigVista.etam = "SIN QUESO"
        default:
            print("error")
        }*/
        if self.ipiña == 1{
            sigVista.eing[0] = "PIÑA"
        }
        sigVista.emas = self.emas
        sigVista.eque = self.eque
        sigVista.etam = self.etam
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
