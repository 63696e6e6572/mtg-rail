class CreateTokens < ActiveRecord::Migration[6.1]
  def change
    create_table :tokens, if_not_exists: false do |t|
      t.text :artist
      t.text :asciiName
      t.text :availability
      t.string :borderColor
      t.text :colorIdentity
      t.text :colors
      t.text :edhrecRank
      t.text :faceName
      t.text :finishes
      t.text :flavorText
      t.text :frameEffects
      t.text :frameVersion
      t.boolean :hasFoil, null: false, :default => false
      t.boolean :hasNonFoil, null: false, :default => false
      t.boolean :isFullArt, null: false, :default => false
      t.boolean :isPromo, null: false, :default => false
      t.boolean :isReprint, null: false, :default => false
      t.text :keywords
      t.string :layout
      t.text :mcmId
      t.text :mtgArenaId
      t.text :mtgjsonV4Id
      t.text :multiverseId
      t.text :name
      t.text :number
      t.text :originalText
      t.text :originalType
      t.decimal :power, :precision => 3, :scale => 0
      t.text :promoTypes
      t.text :reverseRelated
      t.text :scryfallId
      t.text :scryfallIllustrationId
      t.text :scryfallOracleId
      t.text :setCode
      t.text :side
      t.text :signature
      t.text :subtypes
      t.text :supertypes
      t.text :tcgplayerProductId
      t.text :text
      t.text :tokenType
      t.text :tokenTypes
      t.decimal :toughness, :precision => 3, :scale => 0
      t.string :uuid, null: false, :limit => 36, :default => ''
      t.text :watermark

      t.timestamps
    end
  end
end
