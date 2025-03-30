{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    ruby
    bundler

    # ビルド依存関係
    zlib
    pkg-config

    # 開発ツール
    git
  ];

  shellHook = ''
    export GEM_HOME="$PWD/.gem"
    export PATH="$GEM_HOME/bin:$PATH"
    export BUNDLE_PATH="$GEM_HOME"

    echo "Ruby $(ruby --version) が利用可能です"

    # blogディレクトリに移動して依存関係をインストール
    echo ""
    echo "使用例:"
    echo "  cd blog                    # blogディレクトリに移動"
    echo "  bundle install             # 依存関係をインストール"
    echo "  bundle exec jekyll build   # サイトをビルド"
    echo "  bundle exec jekyll serve   # サーバーを起動"
    echo ""
  '';
}
