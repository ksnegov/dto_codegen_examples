public enum CodableEnum<T: RawRepresentable>: Codable where T.RawValue: Codable {

    case decoded(T)
    case undefined(T.RawValue)

    private enum CodingKeys: String, CodingKey {
        case decoded
        case undefined
    }

    public init(
        from decoder: Decoder
    ) throws {
        let rawValue = try decoder.singleValueContainer().decode(T.RawValue.self)
        guard let value = T(rawValue: rawValue) else {
        
            self = .undefined(rawValue)
            return
        }
        self = .decoded(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .decoded(value):
            try container.encode(value.rawValue)
        case let .undefined(value):
            try container.encode(value)
        }
    }
}

public enum CodableEnumError: Error {
    case undefinedValue(Any)
}

