//
//  TestViewController.swift
//  TestTableView
//
//  Created by Masaki on R 4/01/14.
//

import UIKit

class TestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    @IBOutlet weak var testTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - UITableViewDelegateまとめ
    //テーブルビューにおける選択項目の管理、セクションヘッダーとフッターの設定、セルの削除と並べ替え、その他のアクションを実行するための方法。
    
    // MARK: - テーブルビューの行を設定する
    
    //テーブルビューが特定の行のセルを描画しようとしていることをデリゲートに通知します。
    func tableView(_ tableView: UITableView, willDisplay: UITableViewCell, forRowAt: IndexPath) {
        
    }
    
    //指定されたセクションの行のインデントのレベルを返すようにデリゲートに依頼します。
    func tableView(_ tableView: UITableView, indentationLevelForRowAt: IndexPath) -> Int {
        
    }
    
    
    //テーブルの行のスプリングローディングの動作を微調整するために呼び出されます。
    func tableView(_ tableView: UITableView, shouldSpringLoadRowAt: IndexPath, with: UISpringLoadedInteractionContext) -> Bool {
        
    }
    
    // MARK: - 行選択への対応

    //行が選択されようとしていることをデリゲートに通知します。
    func tableView(_ tableView: UITableView, willSelectRowAt: IndexPath) -> IndexPath? {
        
    }
    
    //行が選択されていることをデリゲートに通知します。
    func tableView(_ tableView: UITableView, didSelectRowAt: IndexPath) {
        
    }
    
    //指定された行が非選択になることをデリゲートに通知します。
    func tableView(_ tableView: UITableView, willDeselectRowAt: IndexPath) -> IndexPath? {
        
    }
    
    //指定された行が非選択状態になったことをデリゲートに通知します。
    func tableView(_ tableView: UITableView, didDeselectRowAt: IndexPath) {
        
    }
    
    //ユーザーが2本指のパンジェスチャでテーブルビューの複数の項目を選択できるかどうかをデリゲートに問い合わせます。
    func tableView(_ tableView: UITableView, shouldBeginMultipleSelectionInteractionAt: IndexPath) -> Bool {
        
    }
    
    //ユーザーが2本指のパンジェスチャでテーブルビューの複数の行を選択し始めたときにデリゲートに通知します。
    func tableView(_ tableView: UITableView, didBeginMultipleSelectionInteractionAt: IndexPath) {
        
    }
    
    //ユーザーがテーブルビューで複数の行を選択するために2本指のパンジェスチャを使用しなくなったときに、デリゲートに通知します。
    func tableViewDidEndMultipleSelectionInteraction(_ tableView: UITableView) {
        
    }


    
    // MARK: - ヘッダーとフッターのカスタムビューの提供
    
    //テーブルビューの指定されたセクションのヘッダに表示するビューをデリゲートに要求します。
    func tableView(_ tableView: UITableView, viewForHeaderInSection: Int) -> UIView? {
        
    }
    
    //テーブルビューの指定されたセクションのフッターに表示するビューをデリゲートに要求します。
    func tableView(_ tableView: UITableView, viewForFooterInSection: Int) -> UIView? {
        
    }
    
    //テーブルが指定されたセクションのヘッダービューを表示しようとしていることをデリゲートに通知します。
    func tableView(_ tableView: UITableView, willDisplayHeaderView: UIView, forSection: Int) {
        
    }
    
    //テーブルが指定されたセクションのフッタビューを表示しようとしていることをデリゲートに通知します。
    func tableView(_ tableView: UITableView, willDisplayFooterView: UIView, forSection: Int) {
        
    }

    
    // MARK: -
    
    // MARK: -
    
    // MARK: -
    
    // MARK: -
    
    // MARK: -
    


}
