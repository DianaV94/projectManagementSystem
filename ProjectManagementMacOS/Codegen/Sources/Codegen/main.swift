import ApolloCodegenLib
import Foundation

let parentFolderOfScriptFile = FileFinder.findParentFolder()
let sourceRootURL = parentFolderOfScriptFile
  .apollo.parentFolderURL() // Result: Sources folder
  .apollo.parentFolderURL() // Result: Codegen folder
  .apollo.parentFolderURL() // Result: MyProject source root folder

let cliFolderURL = sourceRootURL
  .apollo.childFolderURL(folderName: "Codegen")
  .apollo.childFolderURL(folderName: "ApolloCLI")

let output = sourceRootURL
    .apollo.childFolderURL(folderName:"ProjectManagementMacOS")

let endpoint = URL(string: "http://localhost:2003")!

try FileManager
  .default
  .apollo.createFolderIfNeeded(at: output)

let schemaDownloadOptions = ApolloSchemaOptions(endpointURL: endpoint,
                                                outputFolderURL: output)

do {
  try ApolloSchemaDownloader.run(with: cliFolderURL,
                                 options: schemaDownloadOptions)
} catch {
  exit(1)
}





print(sourceRootURL)
