import XCTest

final class CounterUITests: XCTestCase {
    func testTapPlusShowsOne() {
        let app = XCUIApplication()
        app.launch()
        app.buttons["plus"].tap()
        XCTAssertEqual(app.staticTexts["count"].label, "1")
    }
    func testGreeting() {
        let app = XCUIApplication()
        app.launch()
        let f = app.textFields["name"]
        f.tap()
        f.typeText("현수")
        XCTAssertTrue(app.staticTexts["안녕하세요, 현수님"].waitForExistence(timeout: 3))
    }
}
