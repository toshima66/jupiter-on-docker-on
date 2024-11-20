# notebook-on-docker

# プロジェクトの開き方

1. ターミナルを開く

    iTerm2でターミナルを開き、ディレクトリに移動する

    ```bash
    cd ~/desktop/test_v3
    ```

2. プロジェクトをclone

    ```bash
    git clone https://github.com/k-kawabata/notebook-on-docker.git
    ```

3. clone直下のディレクトリに移動する

    ```bash
    cd notebook-on-docker
    ```

4. VS Code(cursor)で開く

    ```bash
    code .
    ```

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

# パッケージ管理の手順

1. Pythonのパスを確認

    ```bash
    which python
    ```

2. インストールされているパッケージを確認

    ```bash
    pip list
    ```
    numpyがインストールされていることを確認

3. Docker内でnumpyをインストール

    ```bash
    pip install numpy
    ```

4. ワークスペースで無効になっているJupyterを有効化する

    VS Code(cursor) の左サイドバーにある 拡張機能 アイコンをクリック。
    拡張機能の検索窓に jupyter と入力し、「Jupyter」を選択。
    「install」をクリック。

# 拡張機能については.vscode/extensions.jsonで管理する
