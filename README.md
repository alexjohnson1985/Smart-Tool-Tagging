# Smart-Tool-Tagging

Language Type: Swift
Language Version: 4 (iOS11)

My background:
Studied Electrical and Electronics Engineering 10 years ago that included some coding efforts but I'm currently trying to refresh myself with a personal project during this more recent age of app development!

High level use case:
Use iPhone to track active tool/stock use (by scanning NFC data) when taken out of van.

Desired outcome for the app:
Use initial ViewController to callup NFCNDEFReaderSession (via UIButton) and scan NFC data.

Once an NFC scan has been successful, I'd like to understand how to pull out the relevant information packet (simple text label of the tag) in the NFCNDEFMessage and segue the data as rolling table entries on a separate TableViewController

I'd like each table cell to store that NFCNDEFMessage information and the date/time it was logged to the table.

Each table entry shall be logged and queued incrementally with individual entries able to be deleted by the uder via a swipe function.

HELP REQUIRED:

How to take the below CoreNFC fucntion from ym main ViewController, translate the [NFCNDEFMessage] and segue into a custom table on a separate TableViewController

func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
    }
