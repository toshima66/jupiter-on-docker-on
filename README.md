# notebook-on-docker

## ローカルでの実行例

1. VS Code(cursor) でプロジェクトを開く

    notebook-on-docker ディレクトリを VS Code で開きます。

1. docker compose を起動

    docker-compose.yml を右クリックし、「Compose Up」を選択。

    もしくは、ターミナルで以下のコマンドを実行。

    ```bash
    docker compose up
    ```

1. Docker コンテナを接続

    VS Code の左サイドバーにある Docker アイコンをクリック。
    起動中の Jupyter Notebook コンテナを右クリックし、「Attach Visual Studio Code」を選択。

    🐳 これで仮想的に Docker 上で VS Code が起動している構造になります。

1. Jupyter Notebook を VS Code で開く

    ※初回のみ、 /home/jovyan/work ディレクトリを開きます
    ※ローカルの notebooks と work ディレクトリが同期します

    notebooks ディレクトリ内に .ipynb ファイルを作成。
    ファイルを開くと VS Code 内の Notebook インターフェースで Jupyter を操作できます。

1. Copilot を有効化

    コードセルで Copilot が有効になっていることを確認（設定済みであれば、提案が自動で表示されます）。
