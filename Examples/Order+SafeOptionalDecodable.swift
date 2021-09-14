struct Order: Decodable {
    let orderId: Int
    let carNumber: String
    @SafeOptionalDecodable var carPark: Park?
    @SafeOptionalDecodable var carType: CarType?
}

struct Park: Decodable {
    let parkId: Int
    let name: String
    @SafeOptionalDecodable var address: String?
}

enum CarType: String, Decodable {
    case .minivan
    case .sedan
}
