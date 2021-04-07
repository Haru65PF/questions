class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '質問のジャンルを選択してください' },
    { id: 2, name: '日常・生活' },
    { id: 3, name: '自然科学' },
    { id: 4, name: '文化' },
    { id: 5, name: '趣味' },
    { id: 6, name: '歴史' },
    { id: 7, name: '技術' },
    { id: 8, name: '人間' },
    { id: 9, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end