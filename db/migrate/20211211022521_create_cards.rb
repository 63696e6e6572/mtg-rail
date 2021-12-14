class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards, if_not_exists: false do |t|
      t.text :artist
      t.text :asciiName
      t.text :availability
      t.string :borderColor
      t.text :cardKingdomEtchedId
      t.text :cardKingdomFoilId
      t.text :cardKingdomId
      t.text :cardType
      t.text :cardTypes
      t.text :colorIdentity
      t.text :colorIndicator
      t.text :colors
      t.decimal :convertedManaCost, :precision => 3, :scale => 0
      t.text :duelDeck
      t.text :edhrecRank
      t.decimal :faceConvertedManaCost, :precision => 3, :scale => 0
      t.text :faceFlavorName
      t.decimal :faceManaValue, :precision => 3, :scale => 0
      t.text :faceName
      t.text :finishes
      t.text :flavorName
      t.text :flavorText
      t.text :frameEffects
      t.string :frameVersion
      t.text :hand
      t.boolean :hasAlternativeDeckLimit, null: false, :default => false
      t.boolean :hasContentWarning, null: false, :default => false
      t.boolean :hasFoil, null: false, :default => false
      t.boolean :hasNonFoil, null: false, :default => false
      t.boolean :isAlternative, null: false, :default => false
      t.boolean :isFullArt, null: false, :default => false
      t.boolean :isOnlineOnly, null: false, :default => false
      t.boolean :isOversized, null: false, :default => false
      t.boolean :isPromo, null: false, :default => false
      t.boolean :isReprint, null: false, :default => false
      t.boolean :isReserved, null: false, :default => false
      t.boolean :isStarter, null: false, :default => false
      t.boolean :isStorySpotlight, null: false, :default => false
      t.boolean :isTextless, null: false, :default => false
      t.boolean :isTimeshifted, null: false, :default => false
      t.text :keywords
      t.string :layout
      t.text :leadershipSkills
      t.text :life
      t.text :loyalty
      t.text :manaCost
      t.decimal :manaValue, :precision => 3, :scale => 0
      t.text :mcmId
      t.text :mcmMetaId
      t.text :mtgArenaId
      t.text :mtgjsonV4Id
      t.text :mtgoFoilId
      t.text :mtgoId
      t.text :multiverseId
      t.text :name
      t.text :number
      t.text :originalReleaseDate
      t.text :originalText
      t.text :originalType
      t.text :otherFaceIds
      t.decimal :power, :precision => 3, :scale => 0
      t.text :printings
      t.text :promoTypes
      t.text :purchaseUrls
      t.string :rarity
      t.text :scryfallId
      t.text :scryfallIllustrationId
      t.text :scryfallOracleId
      t.text :setCode
      t.text :side
      t.text :signature
      t.text :subtypes
      t.text :supertypes
      t.text :tcgplayerEtchedProductId
      t.text :tcgplayerProductId
      t.text :text
      t.decimal :toughness, :precision => 3, :scale => 0
      t.string :uuid, null: false, :limit => 36, :default => ''
      t.text :variations
      t.text :watermark

      t.timestamps
    end
    add_index :cards, :uuid, name: "uuid", :unique => true, if_not_exists: false
  end
end
