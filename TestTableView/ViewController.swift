//
//  ViewController.swift
//  TestTableView
//
//  Created by Masaki on R 3/12/28.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    //配列fruitsを設定
    let fruits = ["apple", "orange", "melon", "banana", "pineapple"]
    
    override func viewDidLoad() {
            super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "SampleTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
//        tableView.isEditing = false
        tableView.allowsSelectionDuringEditing = true
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? SampleTableViewCell {
            cell.titleLavel.text = fruits[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        self.view.frame.height/10
    }
    
    /**
     この実装は左スワイプ削除実装
     **/
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

            // 先にデータを削除しないと、エラーが発生します。
//            self.tableData.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteButton = UITableViewRowAction(style: .normal, title: "削除", handler: { _, indexPath in
            tableView.dataSource?.tableView?(tableView, commit: .delete, forRowAt: indexPath)
        })
        deleteButton.backgroundColor = UIColor.blue
        return [deleteButton]
    }
    
    func tableView(_ tableView: UITableView,
                   trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?{
        // 編集処理
        let editAction = UIContextualAction(style: .normal, title: "Edit") { (action, view, completionHandler) in
            // 編集処理を記述
            print("Editがタップされた")

            // 実行結果に関わらず記述
            completionHandler(true)
        }
        // 削除処理
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, view, completionHandler) in
            //削除処理を記述
            print("Deleteがタップされた")

            // 実行結果に関わらず記述
            completionHandler(true)
        }
        // 定義したアクションをセット
        return UISwipeActionsConfiguration(actions: [deleteAction, editAction])
}
    
    /**
     この実装は並び替え実装
     **/
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
            return true
        }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
            //入れ替え時の処理を実装する（データ制御など）
        }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    
//    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
//        return false
//    }
//
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.subviews.forEach { (subview) in
            if String(describing: Swift.type(of: subview.self)) == "UITableViewCellReorderControl" {
                let control = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: subview.frame.size))
                control.addSubview(subview)
                subview.center = control.center
                cell.contentView.addSubview(control)
            }
        }
    }
}

