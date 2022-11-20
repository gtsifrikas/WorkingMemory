
public typealias Identifiable = Equatable & CustomStringConvertible

public protocol Memorable {
    associatedtype T: Identifiable
    var id: T { get }
}


public protocol WorkingMemory {
    
    func get<MemorableObject: Memorable>(id: any Identifiable) async -> MemorableObject
    
}

public struct WorkingMemoryImp {
    
    public init() {
        
    }
}
