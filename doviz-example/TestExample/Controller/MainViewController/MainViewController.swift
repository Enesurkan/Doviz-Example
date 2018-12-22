//
//  MainViewController.swift
//  TestExample
//
//  Created by Enes urkan on 1.12.2018.
//  Copyright © 2018 EnesUrkan. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import AlamofireObjectMapper
import ObjectMapper

class MainViewController: BaseViewController{

    
    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
            tableView.separatorStyle = .none
            tableView.registerNib(witClassAndIdentifier: MainCell.self)
        }
    }
   
    var priceData : PriceModel?
    var arrModel = RatesContainerModel()
    var yourArray = [String]()
    var array = [Double]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        serviceConnectionAPI()
    }
    
    override func setup() {
    }
    
    override func refreshViews() {
    }

}

extension MainViewController : UITableViewDataSource,UITableViewDelegate{
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueCell(withClassAndIdentifier: MainCell.self, for: indexPath)
        
        cell.fillData(name: self.yourArray[indexPath.row], value: self.array[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.array.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}

extension MainViewController{
    
    func serviceConnectionAPI() {
        
        DispatchQueue.main.async {
            ServiceManager.shared.initServiceManager()
            ServiceManager.shared.getPrices({ (responseData) in
                guard responseData != nil else {
                    return
                }
                
                if responseData?.base != nil {
                    self.priceData = responseData
                    
                    if self.priceData?.rates?.BGN != nil {
                        self.array.append((self.priceData!.rates!.BGN ?? nil)!)
                        self.yourArray.append("BGN")
                    }
                    if self.priceData?.rates?.CAD != nil {
                        self.array.append((self.priceData!.rates!.CAD ?? nil)!)
                        self.yourArray.append("CAD")
                    }
                    if self.priceData?.rates?.BRL != nil {
                        self.array.append((self.priceData!.rates!.BRL ?? nil)!)
                        self.yourArray.append("BRL")
                    }
                    if self.priceData?.rates?.HUF != nil {
                        self.array.append((self.priceData!.rates!.HUF ?? nil)!)
                        self.yourArray.append("HUF")
                    }
                    if self.priceData?.rates?.DKK != nil {
                        self.array.append((self.priceData!.rates!.DKK ?? nil)!)
                        self.yourArray.append("DKK")
                    }
                    if self.priceData?.rates?.JPY != nil {
                        self.array.append((self.priceData!.rates!.JPY ?? nil)!)
                        self.yourArray.append("JPY")
                    }
                    if self.priceData?.rates?.ILS != nil {
                        self.array.append((self.priceData!.rates!.ILS ?? nil)!)
                        self.yourArray.append("ILS")
                    }
                    if self.priceData?.rates?.TRY != nil {
                        self.array.append((self.priceData!.rates!.TRY ?? nil)!)
                        self.yourArray.append("TRY")
                    }
                    if self.priceData?.rates?.RON != nil {
                        self.array.append((self.priceData!.rates!.RON ?? nil)!)
                        self.yourArray.append("RON")
                    }
                    if self.priceData?.rates?.GBP != nil {
                        self.array.append((self.priceData!.rates!.GBP ?? nil)!)
                        self.yourArray.append("GBP")
                    }
                    if self.priceData?.rates?.PHP != nil {
                        self.array.append((self.priceData!.rates!.PHP ?? nil)!)
                        self.yourArray.append("PHP")
                    }
                    if self.priceData?.rates?.HRK != nil {
                        self.array.append((self.priceData!.rates!.HRK ?? nil)!)
                        self.yourArray.append("HRK")
                    }
                    if self.priceData?.rates?.NOK != nil {
                        self.array.append((self.priceData!.rates!.NOK ?? nil)!)
                        self.yourArray.append("NOK")
                    }
                    if self.priceData?.rates?.USD != nil {
                        self.array.append((self.priceData!.rates!.USD ?? nil)!)
                        self.yourArray.append("USD")
                    }
                    if self.priceData?.rates?.BRL != nil {
                        self.array.append((self.priceData!.rates!.BRL ?? nil)!)
                        self.yourArray.append("BRL")
                    }
                    if self.priceData?.rates?.MXN != nil {
                        self.array.append((self.priceData!.rates!.MXN ?? nil)!)
                        self.yourArray.append("MXN")
                    }
                    if self.priceData?.rates?.AUD != nil {
                        self.array.append((self.priceData!.rates!.AUD ?? nil)!)
                        self.yourArray.append("AUD")
                    }
                    if self.priceData?.rates?.IDR != nil {
                        self.array.append((self.priceData!.rates!.IDR ?? nil)!)
                        self.yourArray.append("IDR")
                    }
                    if self.priceData?.rates?.KRW != nil {
                        self.array.append((self.priceData!.rates!.KRW ?? nil)!)
                        self.yourArray.append("KRW")
                    }
                    if self.priceData?.rates?.HKD != nil {
                        self.array.append((self.priceData!.rates!.HKD ?? nil)!)
                        self.yourArray.append("HKD")
                    }
                    if self.priceData?.rates?.ZAR != nil {
                        self.array.append((self.priceData!.rates!.ZAR ?? nil)!)
                        self.yourArray.append("ZAR")
                    }
                    if self.priceData?.rates?.ISK != nil {
                        self.array.append((self.priceData!.rates!.ISK ?? nil)!)
                        self.yourArray.append("ISK")
                    }
                    if self.priceData?.rates?.CZK != nil {
                        self.array.append((self.priceData!.rates!.CZK ?? nil)!)
                        self.yourArray.append("CZK")
                    }
                    if self.priceData?.rates?.THB != nil {
                        self.array.append((self.priceData!.rates!.THB ?? nil)!)
                        self.yourArray.append("THB")
                    }
                    if self.priceData?.rates?.MYR != nil {
                        self.array.append((self.priceData!.rates!.MYR ?? nil)!)
                        self.yourArray.append("MYR")
                    }
                    if self.priceData?.rates?.NZD != nil {
                        self.array.append((self.priceData!.rates!.NZD ?? nil)!)
                        self.yourArray.append("NZD")
                    }
                    if self.priceData?.rates?.PLN != nil {
                        self.array.append((self.priceData!.rates!.PLN ?? nil)!)
                        self.yourArray.append("PLN")
                    }
                    if self.priceData?.rates?.NOK != nil {
                        self.array.append((self.priceData!.rates!.NOK ?? nil)!)
                        self.yourArray.append("NOK")
                    }
                    if self.priceData?.rates?.SEK != nil {
                        self.array.append((self.priceData!.rates!.SEK ?? nil)!)
                        self.yourArray.append("SEK")
                    }
                    if self.priceData?.rates?.RUB != nil {
                        self.array.append((self.priceData!.rates!.RUB ?? nil)!)
                        self.yourArray.append("RUB")
                    }
                    if self.priceData?.rates?.CNY != nil {
                        self.array.append((self.priceData!.rates!.CNY ?? nil)!)
                        self.yourArray.append("CNY")
                    }
                    if self.priceData?.rates?.SGD != nil {
                        self.array.append((self.priceData!.rates!.SGD ?? nil)!)
                        self.yourArray.append("SGD")
                    }
                    if self.priceData?.rates?.CHF != nil {
                        self.array.append((self.priceData!.rates!.CHF ?? nil)!)
                        self.yourArray.append("CHF")
                    }
                    if self.priceData?.rates?.INR != nil {
                        self.array.append((self.priceData!.rates!.INR ?? nil)!)
                        self.yourArray.append("INR")
                    }
                    self.tableView.reloadData()
                }
            })
        }
    }
    
}

