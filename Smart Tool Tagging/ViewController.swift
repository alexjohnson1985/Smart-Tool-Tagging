//
//  ViewController.swift
//  Smart Tool Tagging
//
//  Created by Alex Johnson on 10/12/2017.
//  Copyright © 2017 Alex Johnson. All rights reserved.
//

import UIKit
import CoreNFC

class ViewController: UIViewController, NFCNDEFReaderSessionDelegate {
    
    var result = ""
    
    @IBOutlet weak var scannedTagID: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func scanButtonPressed(_ sender: UIButton) {
        let session = NFCNDEFReaderSession(delegate: self, queue: nil, invalidateAfterFirstRead: true)
        session.begin()
        self.scannedTagID.text = "Tag ID"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
        var result = ""
        for message in messages {
            for record in message.records {
                result += String.init(data: record.payload.advanced(by: 3), encoding: .utf8)!
                print(result)
            }
            DispatchQueue.main.async {
                self.scannedTagID.text = result
            }
        }
    }
}
