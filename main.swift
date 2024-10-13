import Foundation
import HummingbirdMustache

let dir = FileManager.default.currentDirectoryPath
let info =
    try! JSONSerialization
    .jsonObject(
        with: try! Data(
            contentsOf: URL(fileURLWithPath: dir.appending("/info.json")),
            options: []
        ),
        options: []) as? [String: Any]

if let output = try! HBMustacheLibrary(
    directory: dir,
    withExtension: "md"
).render(
    info ?? [],
    withTemplate: "template"
) {
    try! output.write(
        toFile: dir.appending("/text.md"),
        atomically: true,
        encoding: .utf8
    )
} else {
    print("⚠️ No output")
}
