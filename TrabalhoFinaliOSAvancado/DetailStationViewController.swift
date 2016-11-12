//
//  DetailStationViewController.swift
//  WheatherStationsPOA
//
//  Created by iossenac on 29/10/16.
//  Copyright © 2016 Kassiane Mentz. All rights reserved.
//

import UIKit

class DetailStationViewController: UIViewController {
    
    var weatherStation: WeatherStation?
    
    @IBOutlet weak var lblEstacao: UILabel!
    @IBOutlet weak var lblTemperatura: UILabel!
    @IBOutlet weak var lblSensacaoTermica: UILabel!
    @IBOutlet weak var lblTemperaturaMaxima: UILabel!
    @IBOutlet weak var lblTemperaturaMinima: UILabel!
    
    
    func getDetails() {
        
        if let weatherStation = weatherStation {
            
            if let estacao = weatherStation.station {
                lblEstacao.text = "Estação: \(estacao)"
            } else {
                lblEstacao.text = "Estação não informada"
            }
            
            if let temperatura = weatherStation.temperaturaExterna {
                lblTemperatura.text = "Temperatura: \(temperatura)"
            } else {
                lblTemperatura.text = "Temperatura não informada"
            }
            
            if let sensacao = weatherStation.sensacaoTermica {
                lblSensacaoTermica.text = "Sensação Térmica: \(sensacao)"
            } else {
                lblSensacaoTermica.text = "Sensação Térmica não informada"
            }
            
            if let maxima = weatherStation.temperaturaMaximaPrevisao {
                lblTemperaturaMaxima.text = "Máxima Prevista: \(maxima)"
            } else {
                lblTemperaturaMaxima.text = "Máxima Prevista não informada"
            }
            
            if let minima = weatherStation.temperaturaMinimaPrevisao {
                lblTemperaturaMinima.text = "Mínima Prevista: \(minima)"
            } else {
                lblTemperaturaMinima.text = "Mínima Prevista não informada"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Detalhes"
        
        getDetails()
        
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
