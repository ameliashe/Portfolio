import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Amelia's personal page"
    var titleSuffix = ""
    var url = URL(static: "https://www.ameliashe.com")
    var builtInIconsEnabled = true

    var author = "Ameliia Shekikhacheva"

    var homePage = Home()
    var layout = MainLayout()
}
