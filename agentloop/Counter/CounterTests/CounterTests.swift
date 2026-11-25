import XCTest
@testable import Counter

final class CounterTests: XCTestCase {
    func testIncrementAddsOne() {
        let m = CounterModel()
        m.increment()
        XCTAssertEqual(m.count, 1)
    }
    func testResetGoesToZero() {
        let m = CounterModel()
        m.increment(); m.reset()
        XCTAssertEqual(m.count, 0)
    }
}
