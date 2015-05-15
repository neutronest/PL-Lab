


package language.sexp


import scala.util.parsing.combinator.lexical._
import scala.util.parsing.combinator.syntactical._
import scala.util.parsing.syntax._
import scala.util.parsing.input.Positional 



// AST Nodes 
trait SExp extends Positional 

object SExpSyntax {
  case class L(var args: List[SExp]) extends SExp 
  case class S(var symbol: String) extends SExp  
  case class Z(var z: BigInt) extends SExp  
}



import SExpSyntax._  

// Tokens  
trait STokens extends Tokens {
  case class SSymbol(val chars: String) extends Token 
  case class SInteger(val chars: String) extends Token  
  case class SPunct(val chars: String) extends Token  
}


// Lexer  
class SLexical extends Lexical with STokens {
  
}

