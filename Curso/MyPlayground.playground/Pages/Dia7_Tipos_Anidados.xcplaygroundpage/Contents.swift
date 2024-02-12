import Foundation
import Foundation


// ---- Leccion 8: 64 Tipos Anidados ----

// Esuna forma mas compleja de creas los enum
// la utilidad mas comun que los enum,...
// los usemos en una clase para hacer...
// comprobaciones que ya tenemos...
// definidas como valores de un enum.
// en el caso que tengamos que crear...
// enumeraciones para hacer comprobaciones
// es mas exautivas es cuando...
// utilizaremos los tipos anidados.
// que vendran a ser agrupaciones de enum...
// con funcionalidad muy concreta de tipo de numeracion

struct ChessPiece {
    
    let color: Color
    let type: PieceType
    
    enum Color: String {
    case white = "Blanca", black = "Negra"
    }
    
    enum PieceType: String {
    case king = "Rey", queen = "Reina", rock = "Torre", bishop = "Alfil", knight = "Caballo", pawn = "Peon"
        struct Numbers {
            let number: Int
        }// ¿como optener el numero de piezas?
        // vamos a gurdar dento de enum una variables
        var number: Numbers {
            switch self {
            case .king:
                return Numbers(number: 1)
            case .queen:
                return Numbers(number: 1)
            case .rock:
                return Numbers(number: 2)
            case .bishop:
                return Numbers(number: 2)
            case .knight:
                return Numbers(number: 2)
            case.pawn:
                return Numbers(number: 8)
            }
        }
    }
    
    var description: String {
        return "Hay \(type.number.number) pieza de ajedrez de color \(color.rawValue) y de tipo \(type.rawValue)"
    }
}

let myPiece = ChessPiece(color: .black, type: .rock)
print(myPiece.description)


