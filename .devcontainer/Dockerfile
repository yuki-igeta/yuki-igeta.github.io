# ベースイメージとして Ruby 3.1 を使用（適宜バージョンは調整）
FROM ruby:3.3

# 必要なパッケージをインストール（Node.js は JavaScript のビルドなどに利用）
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

# Bundler と Jekyll をグローバルにインストール
RUN gem install bundler jekyll

# 作業ディレクトリを /workspace に設定
WORKDIR /workspace

# コンテナ外と同期するために、ホストのコードをマウントする前提
EXPOSE 4000
