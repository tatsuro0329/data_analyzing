class Batting < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ゴロ' },
    { id: 3, name: 'ライナー' },
    { id: 4, name: 'フライ' },
    { id: 5, name: 'ファールフライ' },
    { id: 6, name: 'エラー' },
    { id: 7, name: '野選' },
    { id: 8, name: 'シングルヒット' },
    { id: 9, name: '2ベースヒット' },
    { id: 10, name: '3ベースヒット' },
    { id: 11, name: 'ホームラン' },
    { id: 12, name: '犠打' },
    { id: 13, name: '犠飛' },
    { id: 14, name: '空振り三振' },
    { id: 15, name: '見逃し三振' },
    { id: 16, name: '振り逃げ' },
    { id: 16, name: '四球' },
    { id: 16, name: '故意四球' },
    { id: 16, name: '死球' },
    { id: 16, name: '打撃妨害' },
    { id: 16, name: '併殺打' }
  ]

end