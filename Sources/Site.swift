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
    var name = "Amelia Shekikhacheva"
    var titleSuffix = ""
    var url = URL(static: "https://www.ameliashe.com")
    var builtInIconsEnabled = true
//	var favicon: URL? = URL(static: "https://github.com/ameliashe/Portfolio/blob/main/Assets/images/favicon.ico?raw=true")

    var author = "Amelia Shekikhacheva"

    var homePage = Home()
    var layout = MainLayout()
}
