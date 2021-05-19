enum RnaTranscription {
    enum TranscriptionError: Error {
        case invalidNucleotide(String)
    }
}

class Nucleotide {
    
    var nucleotide : String
    
    init(_ nucleotide : String){
        self.nucleotide = nucleotide
    }
    
    func erroreMEssage(_ value : String) -> String {
        return String(value) + " is not a valid Nucleotide"
    }
    
    func complementOfDNA() throws -> String {
        var RNA = ""
        
        for n in self.nucleotide{
            
            let nucleotidesValid = "GCTA"
            guard nucleotidesValid.characters.contains(n) else {
                throw RnaTranscription.TranscriptionError.invalidNucleotide(erroreMEssage(String(n)))
            }
            
            switch n {
            case "G":
                RNA += String("C")
            case "C":
                RNA += String("G")
            case "T":
                RNA += String("A")
            case "A":
                RNA += String("U")
            default:
                RNA += ""
            }
        }
        
        return RNA
    }
}
