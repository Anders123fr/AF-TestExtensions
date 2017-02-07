//
//  XCTestExtensions
//  BoligBuddy
//
//  Created by Anders Friis on 02/12/2015.
//  Copyright © 2015 Danske Bank. All rights reserved.
//

import XCTest

extension XCTestCase {
	
	func waitForExpectations(_ timeout: TimeInterval = 5.0) {
		waitForExpectations(timeout: timeout) {
			error in
			
			guard let err = error else {
				return
			}
			
			XCTFail(err.localizedDescription)
		}
	}
	
}
