//
//  QuesoController.swift
//  Pizza
//
//  Created by Gabriel Urso Santana Reyes on 16/11/15.
//  Copyright © 2015 Gabriel Urso Santana Reyes. All rights reserved.
//

import UIKit

class QuesoController: UIViewController {
    
    var etam = "No seleccionado"
    var emas = "No seleccionado"
    var eque = "No seleccionado"
    var eing = ["","","","","",""]

    @IBOutlet weak var que: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! IngredientesController
        switch (self.que.selectedSegmentIndex){
        case 0:
            sigVista.eque = "MOZZARELLA"
        case 1:
            sigVista.eque = "CHEDDAR"
        case 2:
            sigVista.eque = "PARMESANO"
        case 3:
            sigVista.eque = "SIN QUESO"
        default:
            print("error")
        }
        sigVista.emas = self.emas
        sigVista.etam = self.etam
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
