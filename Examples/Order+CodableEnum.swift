struct Order: Decodable {
    let orderId: Int
    let carNumber: String
    @SafeOptionalDecodable var carPark: Park?
    @SafeOptionalDecodable var carType: CodableEnum<CarType>?
}

enum CarType: String, Codable {
    case .minivan
    case .sedan
}

