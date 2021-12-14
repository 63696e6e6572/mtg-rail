class Card < ApplicationRecord
    validates :name, presence: true
    validates :text, presence: true, length: { minimum: 10 }
   # enum borderColor: { black: 'Black', white: 'White', borderless:'Borderless', silver: 'Silver', gold: 'Gold' }, _default: 'Black'
   # enum frameVersion: { '2003': '2003', '1993': '1993', '2015': '2015', '1997': '1997', future: 'Future' }, _default: 'Future'
   # enum layout: { normal: 'Normal', adventure: 'Adventure', class: 'Class', aftermath: 'Aftermath', split: 'Split', flip: 'Flip', leveler: 'Leveler', saga: 'Saga', transform: 'Transform', vanguard: 'Vanguard', meld: 'Meld', modal_dfc: 'Modal DFC', scheme: 'Scheme', planar: 'Planar', reversible_card: 'Reversible Card', host: 'Host', augment: 'Augment' }, _default: 'Normal'
   # enum rarity: { common: 'Common', uncommon: 'Uncommon', token: 'Token', rare: 'Rare', mythic: 'Mythic', mythic_rare: 'Mythic Rare', basic_land: 'Basic Land', sealed: 'Sealed', special: 'Special', bonus: 'Bonus' }, _default: 'Common'
end
