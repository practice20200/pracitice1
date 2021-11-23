//
//  ChartViewController.swift
//  pracitice1
//
//  Created by Apple New on 2021-11-18.
//

import UIKit
import Charts
import Elements

class ChartViewController: UIViewController {

    lazy var pieChart : PieChartView = {
        let pie = PieChartView()
        pie.translatesAutoresizingMaskIntoConstraints = false
        return pie
    }()

    override func viewDidLoad() {

        super.viewDidLoad()
        view.backgroundColor = UIColor.gray

        view.addSubview(pieChart)
        NSLayoutConstraint.activate([
            pieChart.topAnchor.constraint(equalTo: view.topAnchor),
            pieChart.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pieChart.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pieChart.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

                                                

        
        //-----chartData(Quated: URL)
        let trump = PieChartDataEntry(value: 70.3, label: "TRUMP")
        let biden = PieChartDataEntry(value: 65.4, label: "BIDEN")
        let set = PieChartDataSet(entries: [trump, biden], label: "USA ELECTION")

        set.colors = ChartColorTemplates.liberty()
                                + ChartColorTemplates.colorful()
                                + ChartColorTemplates.vordiplom()
                                + ChartColorTemplates.joyful()
                                + ChartColorTemplates.pastel()
                                + [UIColor(red: 51/255, green: 181/255, blue: 229/255, alpha: 1)]

        let pieChartData = PieChartData(dataSet: set)
        pieChart.data = pieChartData
        
                                                    //-----codes in the lecuture that didn't work--------------------
                                                    //        let vancouverPopulation = PieChartDataEntry(value: 70.2, label: "Vancouver")
                                                    //        let torontoPopulation = PieChartDataEntry(value: 68.5, label: "Toront")
                                                    //        let set = PieChartDataSet(entries: [vancouverPopulation,torontoPopulation], label: "Canada Population")
                                                    //
                                                    //        set.colors = ChartColorTemplates.liberty() + ChartColorTemplates.colorful()
                                                    //
                                                    //        let pieChartData = PieChartData(dataSets: set)
                                                    //        pieChart.data = pieChartData
                                                    //-----codes in the lecuture that didn't work---------------------
        
    }




}
