# TitechKyomuSample

[TitechKyomuKit](https://github.com/TitechAppProject/titech-kyomu-kit) と [TitechPortalKit](https://github.com/TitechAppProject/titech-portal-kit) を使ったサンプルアプリです

## 使用上の注意
- TitechKyomuSample.swift にあるbool型の `useMock` を `true` にするとローカルのデータを、`false` にすると実際の教務Webのデータを使用します
- このリポジトリ上にはTitechPortalKitに渡す `name`、`pass`、`matrixcode` を載せていません、どこかに
  ```swift
  import Foundation
  import TitechPortalKit
  
  let username = "00B00000"
  let password = "password"
  let matrixcode: [TitechPortalMatrix: String] = [
      .a1: "A",
      .a2: "A",
      .a3: "A",
      .a4: "A",
      .a5: "A",
      ...
  ]
  ```
  のような形でログイン時のデータを記してから使ってください

## 表示の例