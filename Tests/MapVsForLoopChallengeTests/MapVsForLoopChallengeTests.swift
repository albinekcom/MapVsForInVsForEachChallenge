import XCTest

final class MapVsForLoopChallengeTests: XCTestCase {

    let arrayLength = 10_000_000

    private var numbers: [Int]!

    // MARK: - Setting

    override func setUp() {
        super.setUp()

        numbers = [Int]()

        for index in 1...arrayLength {
            numbers.append(index)
        }
    }

    // MARK: - Tests

    func testForLoop() {
        measure {
            for _ in numbers { }
        }
    }

    func testForEach() {
        measure {
            numbers.forEach { _ in }
        }
    }

    func testMap() {
        measure {
            _ = numbers.map { _ in }
        }
    }

    // MARK: - All Tests

    static var allTests = [
        ("testForLoop", testForLoop),
        ("testForEach", testForEach),
        ("testMap", testMap)
    ]

}
