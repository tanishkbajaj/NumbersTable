//
//  ViewController.swift
//  NumbersTable
//
//  Created by IMCS2 on 7/22/19.
//  Copyright © 2019 Tanishk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBOutlet weak var embededTableView: UITableView!
    var tenNumberArray = [Int] (1...10)
    
    @IBAction func scrollerSelector(_ sender: UISlider) {
        
        let value = Int(sliderValue.value)
        numberLabel.text = String(value)
       
        embededTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tenNumberArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var sliderIntValue = Int(sliderValue.value)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableView
        //
        var result: Int = 1
        
        result = tenNumberArray[indexPath.row] * sliderIntValue
        
        
        var set = ("\(tenNumberArray[indexPath.row]) X \(sliderIntValue) = \(result)")
        
        cell.CellLabel?.text = set
        
        
        return cell
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

