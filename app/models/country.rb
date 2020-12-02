class Country < ActiveHash::Base
  has_many :contacts
  self.data = [
              {id: 0, name: '---'}, {id: 1, name: 'ハワイ'}, {id: 2, name: 'ニューヨーク'}, 
              {id: 3, name: 'パリ'}, {id: 4, name: 'イギリス'}, {id: 5, name: 'ロサンゼルス'}, 
              {id: 6, name: 'シンガポール'}, {id: 7, name: 'トルコ'}, {id: 8, name: '韓国'}, 
              {id: 9, name: 'その他'}
  ]

 
end