struct Order: Decodable {
    let orderId: Int
    let carNumber: String
    let carPark: Park?
    let carType: CarType?
}

struct Park: Decodable {
    let parkId: Int
    let name: String
    let address: String?
}

enum CarType: String, Decodable {
    case .minivan
    case .sedan
}

