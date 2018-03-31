//
//  EraseMessage.swift
//  xDripG5
//
//  Copyright © 2018 LoopKit Authors. All rights reserved.
//

import Foundation


struct EraseTxMessage: RespondableMessage {
    typealias Response = EraseRxMessage

    var data: Data {
        return Data(for: .eraseTx).appendingCRC()
    }
}


struct EraseRxMessage: TransmitterRxMessage {
    let status: UInt8

    init?(data: Data) {
        guard data.count >= 2, data.starts(with: .eraseRx) else {
            return nil
        }

        status = data[1]
    }
}
