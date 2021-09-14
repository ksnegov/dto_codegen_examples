struct CarTypeConvertor {

    func makeDomain(from result: CodableEnum<CarType>) -> DomainModel? {
        switch result {
            case let .decoded(carTypeValue):
            // make domain model from CarType
            case let .undefined(invalidValue):
                // make desicion about invalid value
                return nil
        }
    }

}

