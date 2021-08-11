//
//  HopConstants.swift
//  Pirate
//
//  Created by hyperorchid on 2020/2/25.
//  Copyright © 2020 hyperorchid. All rights reserved.
//

import Foundation
import BigInt
public struct ScryptParam {
        var dkLen:Int
        var N:Int
        var R:Int
        var P:Int
        var S:Int
}

public struct HopConstants {
        static public let EthScanUrl = "https://etherscan.io/tx/"
        static public let DefaultDnsIP = "119.120.92.235"//"198.13.44.159"
        static public let DefaultBasPort = 8853
        static public let ReceiptSyncPort = 42021
        static public let TxReceivePort = 42020
        static public let DefaultRCPTimeOut = 4
        static public let RCPKeepAlive = TimeInterval(30)
        static public let RechargePieceSize  = 1 << 22 //4M
        static public let TimeOutConn = 4.0
        
        public static let UDPBufferSize = 10240
        static public let SocketPortInit  = UInt32(43000)
        static public let SocketPortRange = UInt32(8888)
        
        static public let GroupImageUrl = "https://hopwesley.github.io/group.jpg"
        static public let DefaultTokenAddr = "0x72F391A5fC31b026739C8C26e0c5C01b2783F786"
        static public let DefaultPaymenstService = "0xb7b93d75690C4d1E8110D8D86b09Ff43BcA4335a"
        static public let DefaultInfruaToken = "d64d364124684359ace20feae1f9ac20"
        static public let DefaultServicePrice = Int64(1000)
        
        static public let DefaultApplyFreeAddr = "0x720b04d73082a437a978d9a1229296e069868291"
        static public let DefaultTokenDecimal = BigUInt(1e18)
        
        static public let DefaultTokenDecimal2 = Double(1e18)
        
        static public let ECSDA_AES_MODE = "aes-128-ctr"
        static public let HOP_SUB_PREFIX = "HO"
        static public let HOP_WALLET_VERSION = 1
        static public let HOP_WALLET_IVLEN = 16
        static public let HOP_WALLET_FILENAME = "wallet.json"
        static public let ETH_AES_PARAM = ScryptParam(dkLen: 32, N: 1 << 18, R:8, P:1, S:0)
        static public let HOP_AES_PARAM = ScryptParam(dkLen: 32, N: 1 << 15, R:8, P:1, S:8)
        
        static public let DBNAME_WALLET = "CDWallet"
        static public let DBNAME_APPSETTING = "CDAppSetting"
        static public let DBNAME_TRASACTION = "CDTransaction"
        static public let DBNAME_POOL = "CDPool"
        static public let DBNAME_MINER = "CDMiner"
        static public let DBNAME_MEMBERSHIP = "CDMemberShip"
        static public let DBNAME_MINERCREDIT = "CDMinerCredit"
        
        
        static let NOTI_DNS_CHANGED = Notification.init(name: Notification.Name("NOTI_DNS_CHANGED"))
        static let NOTI_TX_STATUS_CHANGED = Notification.init(name: Notification.Name("NOTI_TX_STATUS_CHANGED"))
        static let NOTI_TX_SYNC_SUCCESS = Notification.init(name: Notification.Name("NOTI_TX_SYNC_SUCCESS"))
        static let NOTI_POOL_CACHE_LOADED = Notification.init(name: Notification.Name("NOTI_POOL_CACHE_LOADED"))
        static let NOTI_MEMBERSHIP_SYNCED = Notification.init(name: Notification.Name("NOTI_MEMBERSHIP_SYNCED"))
        static let NOTI_MEMBERSHIPL_CACHE_LOADED = Notification.init(name: Notification.Name("NOTI_MEMBERSHIPL_CACHE_LOADED"))
        static let NOTI_POOL_INUSE_CHANGED = Notification.init(name: Notification.Name("NOTI_POOL_INUSE_CHANGED"))
        static let NOTI_MINER_CACHE_LOADED = Notification.init(name: Notification.Name("NOTI_MINER_CACHE_LOADED"))
        static let NOTI_MINER_SYNCED = Notification.init(name: Notification.Name("NOTI_MINER_SYNCED"))
        static let NOTI_MINER_INUSE_CHANGED = Notification.init(name: Notification.Name("NOTI_MINER_INUSE_CHANGED"))
        
        static public func WalletPath() -> URL{
                let base = DataShareManager.sharedInstance.containerURL
               return base.appendingPathComponent(HOP_WALLET_FILENAME, isDirectory: false)
        }
}
