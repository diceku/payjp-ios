//
//  String+PAYJPTests.swift
//  PAYJPTests
//
//  Created by Tadashi Wakayanagi on 2019/07/31.
//  Copyright © 2019 PAY, Inc. All rights reserved.
//

import XCTest
@testable import PAYJP

class String_PAYJPTests: XCTestCase {

    private func testNumberfy(cases: [(String, String)]) {
        for (input, expcted) in cases {
            let filtered = input.numberfy()
            XCTAssertEqual(filtered, expcted)
        }
    }

    func testStringToDigitString() {
        let cases = [
            ("", ""),
            ("12", "12"),
            ("1234 567", "1234567"),
            ("1234 5678 90", "1234567890"),
            ("1 @ 234 # 5", "12345")
        ]
        testNumberfy(cases: cases)
    }
}
