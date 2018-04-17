import XCTest

final class MapVsForInVsForEachChallengeTests: XCTestCase {

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

    func testForIn() {
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
        ("testForIn", testForIn),
        ("testForEach", testForEach),
        ("testMap", testMap)
    ]

}
