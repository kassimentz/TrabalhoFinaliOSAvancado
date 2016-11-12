//
//  StationsTableViewController.swift
//  WheatherStationsPOA
//
//  Created by iossenac on 29/10/16.
//  Copyright © 2016 Kassiane Mentz. All rights reserved.
//

import UIKit

class StationsTableViewController: UITableViewController {
    
    var weatherStations = [WeatherStation]()
    
    //MARK: - Custom Methods
    
    func loadData(){
        
        let weatherStationManager = WeatherStationManager()
        
        weatherStationManager.loadWeatherStations{ (weatherStations, error) in
            if error == nil {
                
                self.weatherStations = weatherStations!
                
                self.tableView.reloadData()
                
                //                self.performSelector(onMainThread: #selector(NowPlayingCVController.updateCollectionView), with: nil, waitUntilDone: false)
                
            }
            
        }
    }
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.title = "Estações Meteorológicas"
        
        self.loadData()
        
    }
    
    // TableView Methods (Delegate)
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return weatherStations.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "stationCell", for: indexPath)
        
        // Configure the cell...
        
        let weatherStation = weatherStations[indexPath.row]
        
        cell.textLabel?.text = weatherStation.station
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "moreDetail", sender: weatherStations[indexPath.row])
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "moreDetail" {
            let detailStationViewController = segue.destination as! DetailStationViewController
            if let weatherStation = sender as? WeatherStation {
                detailStationViewController.weatherStation = weatherStation
            }
        }
    }
    
    
}
