# UITableSwiftUIViewCell

## 🤔 What and Why? 
UIKit 의 UITableView 에서 자유롭게 SwiftUI 를 사용하기 위해 만들었습니다.

## 📄 Example Code
### UIKit Side
```
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableSwiftUIViewCell<TableCellView>()
    let view = TableCellView(person: dataSource.people[indexPath.row])
    cell.set(rootView: view)
    return cell
}
```

### SwiftUI Side
```
struct TableCellView: View {
    
    let person: DataSource.Person
    
    var body: some View {
      ...
    }
}
```

## 📱 Screenshot 
<img src="https://github.com/insub4067/UITableSwiftUIViewCell/assets/85481204/6049578e-e1f8-462c-9d19-94a5d5418924" width="250">

## 💻 Project
<img width="1099" alt="스크린샷 2023-05-17 오후 8 40 25" src="https://github.com/insub4067/UITableSwiftUIViewCell/assets/85481204/30d37d82-090c-40ba-8e96-635a002012eb">

