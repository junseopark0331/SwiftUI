import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    // 이 모델을 사용할 사용자는 image에만 관심 있으므로 imageName은 Private으로 설정
    private var imageName: String
    
    // 이미지 이름으로부터 이미지를 로드하는 연산 프로퍼티
    var image: Image {
        Image(imageName)
    }
    
    // 역시 locationCoordinate 연산 프로퍼티를 위해서만 사용되기 때문에, 직접 접근할 일이 없으므로 private으로 설정
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
