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

|Mockデータ|実際の教務Webのデータ|
|:---:|:---:|
|![Simulator Screen Shot - iPhone 13 mini - 2022-09-07 at 03 26 15](https://user-images.githubusercontent.com/83168581/188712610-0bdf2236-fa90-40a6-b62f-526643b0b8fe.png)|![Simulator Screen Shot - iPhone 13 mini - 2022-09-07 at 03 28 23](https://user-images.githubusercontent.com/83168581/188712661-667a5c3e-2c00-4eea-aa32-eec00279ee82.png)|

