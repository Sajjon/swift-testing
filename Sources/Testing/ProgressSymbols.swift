public enum ProgressSymbol: Sendable, CaseIterable {
  public enum SFSymbol: Sendable, CaseIterable {
    case hourglass
    case sun
    case battery
    case moon
    case numPad
    case lattice
    case radianceBlue
    case radianceYellow
    case radianceGreen
  }
  
  public enum Unicode: Sendable, CaseIterable {
    case braille
  }
  
  case sfSymbol(SFSymbol)
  case unicode(Unicode)
  
  public static let allCases: [ProgressSymbol] = SFSymbol.allCases.map(Self.sfSymbol) + Unicode.allCases.map(Self.unicode)
}
