import XCTest

final class MapVsForLoopChallengeTests: XCTestCase {

    let attempts = 10_000_000

    func testForLoop() {
        measure {
            XCTAssertTrue(true) // TODO: Insert code here
        }
    }

    func testMap() {
        measure {
            XCTAssertTrue(true) // TODO: Insert code here
        }
    }

    static var allTests = [
        ("testForLoop", testForLoop),
        ("testMap", testMap)
    ]

}
