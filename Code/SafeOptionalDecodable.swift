public protocol DecodingDefaultValueProviding where Self: Decodable {
    static var decodingDefaultValue: Self { get }
}

@propertyWrapper
public struct SafeOptionalDecodable<T: DecodingDefaultValueProviding?>: Decodable {
    public let wrappedValue: T

    public init(
        wrappedValue: T
    ) {
        self.wrappedValue = wrappedValue
    }

    public init(
        from decoder: Decoder
    ) throws {
        let container = try decoder.singleValueContainer()
        do {
            wrappedValue = try container.decode(T.self)
        } catch {
            // log error
            wrappedValue = T.decodingDefaultValue
        }
    }
}

extension Optional: DecodingDefaultValueProviding where Wrapped: Decodable {
    public static var decodingDefaultValue: Self {
        return nil
    }
}

