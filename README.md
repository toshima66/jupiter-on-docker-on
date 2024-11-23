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

4. そのディレクトリでVS Code(cursor)で開く

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

### pipでパッケージ管理の手順(Dockerfileのrequirements.txtで自動化済み)

1. インストールされているパッケージを確認

    ```bash
    pip list
    ```
    numpyがインストールされていることを確認

2. Docker内でnumpyをインストール

    ```bash
    pip install numpy
    ```

#### 無効の拡張機能について

1. ワークスペースで無効になっているJupyterを有効化する

    VS Code(cursor) の左サイドバーにある 拡張機能 アイコンをクリック。
    拡張機能の検索窓に jupyter と入力し、「Jupyter」を選択。
    「install」をクリック。

##### Kaggle API キーを使う

1. https://www.kaggle.com/ にアクセスし、右上のアカウントをクリックする

2. settings をクリックする

3. API をクリックする

4. Create New Token をクリックする

5. ダウンロードした json ファイルを .kaggle ディレクトリに配置する

example

```
./notebook-on-docker/
├── docker-compose.yml
├── .kaggle/
│   └── kaggle.json
└── notebooks/
```

6. (optional) ターミナルでkaggle コマンドの確認

sampleはすぐに結果を返します。

    ```bash
    kaggle competitions list
    ```

7. テストデータのフォルダを作り、フォルダ名をjane-street-real-time-market-data-forecastingにする

8. jane-street-real-time-market-data-forecastingフォルダ内でターミナルでデータをダウンロードする

sampleデータは60分程度かかります。

```bash
kaggle competitions download -c jane-street-real-time-market-data-forecasting
```
##### zipファイルの解凍方法
重要:以下はfile,unzipコマンドを使える環境で行う。(仮想環境を立てる前のローカル環境で行う)

1. データを確認する

```bash
file jane-street-real-time-market-data-forecasting.zip
```
期待するreturn
jane-street-real-time-market-data-forecasting.zip: Zip archive data, at least v4.5 to extract, compression method=deflate

2. データを解凍する

```bash
unzip jane-street-real-time-market-data-forecasting.zip
```

3. zipファイルはファイルを削除する。

なお、解凍ファイルはファイルが大きいためgitで管理しない。jane-street-real-time-market-data-forecastingフォルダを.gitignoreに追加した。
