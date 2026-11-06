import Foundation
import UniformTypeIdentifiers

enum ExportFormat: String, CaseIterable {
    case pdf = "pdf"
    case docx = "docx"
    case rtf = "rtf"
    
    var displayName: String {
        switch self {
        case .pdf: return "PDF..."
        case .docx: return "Word Document (.docx)..."
        case .rtf: return "Rich Text Format (.rtf)..."
        }
    }
    
    var utType: UTType {
        switch self {
        case .pdf: return .pdf
        case .docx: return UTType(filenameExtension: "docx") ?? .data
        case .rtf: return .rtf
        }
    }
}

extension Notification.Name {
    static let exportPDFRequested = Notification.Name("exportPDFRequested")
    static let exportDOCXRequested = Notification.Name("exportDOCXRequested")
    static let exportRTFRequested = Notification.Name("exportRTFRequested")
    static let performPDFExport = Notification.Name("performPDFExport")
}

class DocumentExporter {
    static let shared = DocumentExporter()
    
    // We will implement Folio and RTF later, but for now, these allow the app to compile.
    func exportToDocx(markdown: String, destinationURL: URL, completion: @escaping (Result<URL, Error>) -> Void) {
        // TODO: Folio Implementation
        completion(.failure(NSError(domain: "Exporter", code: 0, userInfo: [NSLocalizedDescriptionKey: "DOCX export not implemented yet."])))
    }
    
    func exportToRtf(markdown: String, destinationURL: URL, completion: @escaping (Result<URL, Error>) -> Void) {
        // TODO: RTF Implementation
        completion(.failure(NSError(domain: "Exporter", code: 0, userInfo: [NSLocalizedDescriptionKey: "RTF export not implemented yet."])))
    }
}