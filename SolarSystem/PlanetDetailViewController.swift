//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Travis Sasselli on 6/28/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    var planet: Planet?

    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var kiloLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let planet = self.planet {
            updateWithPlanet(planet)
        }
        
        
        // Do any additional setup after loading the view.
    }
    func updateWithPlanet (planet: Planet){
        title = planet.name
        planetImageView.image = UIImage (named: planet.imageName)
        dayLabel.text =  "Day length:     \(planet.dayLength)"
        diameterLabel.text = "Diameter:     \(planet.diameter)"
        nameLabel.text = "Name:     \(planet.name)"
        kiloLabel.text = "Kilometers from Sun:     \(planet.millionKMsFromSun)"
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
