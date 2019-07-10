//
//  ViewController.swift
//  curso
//
//  Created by DevMakerMobile on 10/07/2019.
//  Copyright © 2019 DevMakerMobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var lbAlcool: UITextField!
    @IBOutlet weak var lbGasoliba: UITextField!
    @IBAction func btCalc(_ sender: Any) {
        
       if let precoAlcool = lbAlcool.text{
        if let precoGasolina = lbGasoliba.text{
            
            //Validar Valor digitado
            
            let validaCampos = self.validarCampo(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
            
            if validaCampos{
                //calcular melhor combustivel
                self.calcularPreco(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                
            }else {
                
                lbResult.text = "Digite os preços para calcular "
            }
            
        }
            
        }
        
    }
    
    
    func calcularPreco (precoAlcool: String, precoGasolina: String){
        
        //Converter valores texto para numeros
        if let valorAlcool = Double (precoAlcool){
            if let valorGasolina = Double(precoGasolina){
                
                let resultPreco = valorAlcool / valorGasolina
                if resultPreco  >= 0.7 {
                    self.lbResult.text = "Melhor utilizar Gasolina! "
                    
                } else{
                    
                    self.lbResult.text = "Melhor utilizar Alcool! "
                }
                
            }
            
        }
        
    }
    
    
    func validarCampo(precoAlcool: String, precoGasolina: String) -> Bool{
        
        var camposValidados = true
        
        if precoAlcool.isEmpty{
            camposValidados = false
        }else if precoGasolina.isEmpty{
            camposValidados = false
        }
        
        return camposValidados
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

