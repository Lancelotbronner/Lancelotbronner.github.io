import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct MyWebsite: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
		case home
        case posts
		case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://lancelotbronner.github.io")!
    var name = "Lancelotbronner's Hideout"
    var description = "My little experiment"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try MyWebsite()
	.publish(withTheme: .foundation)
