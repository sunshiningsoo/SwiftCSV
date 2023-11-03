# SwiftCSV

CSV or TXT data to Swift Array Super Easily!


## How to Use

### File Example
```swift
File: titanic.csv

name,age
park,20
kim,30
```

### Usage
```swift
let (header, datas) = SwiftCSV.fileReader(fileName: "titanic", fileType: .csv)

header: [String]
datas: [[String]]

header = ["name", "age"]
datas = [
        ["park", "20"],
        ["kim", "30"]
    ]
```

### FileType
```swift
enum FileType {
    case csv
    case txt
}
```

## Contribute

You can make an Issue For Contribution
