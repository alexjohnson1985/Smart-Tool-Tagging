//
//  ViewController.swift
//  Smart Tool Tagging
//
//  Created by Alex Johnson on 10/12/2017.
//  Copyright © 2017 Alex Johnson. All rights reserved.
//

import UIKit
import CoreNFC

var result = ""

class ViewController: UIViewController, NFCNDEFReaderSessionDelegate {
    
    @IBOutlet weak var scannedTagID: UILabel!
    
    var scannedTagIDText = "Tap 'Scan' button below then place tag behind top of phone to read"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scannedTagID.text = scannedTagIDText
    }
    
    @IBAction func scanButtonPressed(_ sender: UIButton) {
        let session = NFCNDEFReaderSession(delegate: self, queue: nil, invalidateAfterFirstRead: true)
        session.begin()
        self.scannedTagID.text = "Scanning..."
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
        for message in messages {
            for record in message.records {
                result+=String.init(data: record.payload.advanced(by: 3), encoding: .utf8)!
                print(result)
    }
            
    DispatchQueue.main.async {
        self.scannedTagID.text = result + " Now In Use"
        
//        self.scannedTagID.text = self.scannedTagIDText
    }
            
   }
  }
}
