//
//  ViewController.swift
//  SampleApp
//
//  Created by Pete Schwamb on 7/5/17.
//  Copyright © 2017 LoopKit Authors. All rights reserved.
//

import UIKit
import xDripG5

class ViewController: UIViewController, TransmitterDelegate {
    
    private var transmitter: Transmitter!
    private let transmitterID = "40SK9E"
    
    @IBOutlet weak var logView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        logView.text = "";
        log("Connecting to transmitter ID: \(transmitterID)")
        log("...")
        self.transmitter = Transmitter(ID: transmitterID, passiveModeEnabled: true)
        self.transmitter?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func log(_ message: String) {
        DispatchQueue.main.async {
            let formatter = DateFormatter()
            formatter.dateStyle = .none
            formatter.timeStyle = .short
            self.logView.text.append(formatter.string(from: Date()) + " \(message)\n")
            NSLog(message)
        }
    }
    
    
    // MARK: - TransmitterDelegate
    
    func transmitter(_ transmitter: Transmitter, didError error: Error) {
        log("didError: \(error)")
    }
    
    func transmitter(_ transmitter: Transmitter, didRead glucose: Glucose) {
        log("didRead: \(glucose)")
//        if !glucose.state.hasReliableGlucose {
//            logger.error(String(describing: glucose.state))
//        }
//        
//        guard glucose != latestReading, let quantity = glucose.glucose else {
//            delegate?.cgmManager(self, didUpdateWith: .noData)
//            return
//        }
//        latestReading = glucose
//        
//        self.delegate?.cgmManager(self, didUpdateWith: .newData([
//            (quantity: quantity, date: glucose.readDate, isDisplayOnly: glucose.isDisplayOnly)
//            ]))
    }
    
    func transmitter(_ transmitter: Transmitter, didReadUnknownData data: Data) {
        log("didReadUnknownData: \(data.hexadecimalString)")
//        logger.error("Unknown sensor data: " + data.hexadecimalString)
//        // This can be used for protocol discovery, but isn't necessary for normal operation
    }
}
