//
//  ViewController.swift
//  bady-day
//
//  Created by peter.huang on 2018/8/8.
//  Copyright © 2018 peter.huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var date: UIDatePicker!
    
    @IBOutlet weak var dayLabel: UILabel!
    
    @IBOutlet weak var weekLabel: UILabel!
    
    @IBOutlet weak var monthLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        calculate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func valueChange(_ sender: Any) {
       calculate()
    }
    
    func calculate() {
        print("value change\r\n")
        print(date.date)
        
        let cur = Date()
        let componentsDay = Calendar.current.dateComponents([.day], from: date.date, to: cur)
        let componentsMonth = Calendar.current.dateComponents([.month], from: date.date, to: cur)
        let componentsWeek = Calendar.current.dateComponents([.weekdayOrdinal], from: date.date, to: cur)
        let componentsYear = Calendar.current.dateComponents([.year], from: date.date, to: cur)
        
        let days = componentsDay.day ?? 0
        let months = componentsMonth.month ?? 0
        let weeks = componentsWeek.weekdayOrdinal ?? 0
        let years = componentsYear.year ?? 0
        
        dayLabel.text = "日： \(days)"
        weekLabel.text = "周： \(weeks)"
        monthLabel.text = "月： \(months)"
        yearLabel.text = "年： \(years)"
    }
}

