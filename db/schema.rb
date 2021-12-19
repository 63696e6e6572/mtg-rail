# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_19_061655) do

  create_table "cards", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "artist"
    t.text "asciiName"
    t.text "availability"
    t.column "borderColor", "enum('black','white','borderless','silver','gold')", default: "black"
    t.text "cardKingdomEtchedId"
    t.text "cardKingdomFoilId"
    t.text "cardKingdomId"
    t.text "cardType"
    t.text "cardTypes"
    t.text "colorIdentity"
    t.text "colorIndicator"
    t.text "colors"
    t.decimal "convertedManaCost", precision: 3
    t.text "duelDeck"
    t.integer "edhrecRank", default: 0
    t.decimal "faceConvertedManaCost", precision: 3
    t.text "faceFlavorName"
    t.decimal "faceManaValue", precision: 3
    t.text "faceName"
    t.text "finishes"
    t.text "flavorName"
    t.text "flavorText"
    t.text "frameEffects"
    t.column "frameVersion", "enum('2003','1993','2015','1997','future')", default: "future"
    t.text "hand"
    t.boolean "hasAlternativeDeckLimit", default: false, null: false
    t.boolean "hasContentWarning", default: false, null: false
    t.boolean "hasFoil", default: false, null: false
    t.boolean "hasNonFoil", default: false, null: false
    t.boolean "isAlternative", default: false, null: false
    t.boolean "isFullArt", default: false, null: false
    t.boolean "isOnlineOnly", default: false, null: false
    t.boolean "isOversized", default: false, null: false
    t.boolean "isPromo", default: false, null: false
    t.boolean "isReprint", default: false, null: false
    t.boolean "isReserved", default: false, null: false
    t.boolean "isStarter", default: false, null: false
    t.boolean "isStorySpotlight", default: false, null: false
    t.boolean "isTextless", default: false, null: false
    t.boolean "isTimeshifted", default: false, null: false
    t.text "keywords"
    t.column "layout", "enum('normal','adventure','class','aftermath','split','flip','leveler','saga','transform','vanguard','meld','modal_dfc','scheme','planar','reversible_card','host','augment')", default: "normal"
    t.text "leadershipSkills"
    t.text "life"
    t.text "loyalty"
    t.text "manaCost"
    t.decimal "manaValue", precision: 3
    t.text "mcmId"
    t.text "mcmMetaId"
    t.text "mtgArenaId"
    t.text "mtgjsonV4Id"
    t.text "mtgoFoilId"
    t.text "mtgoId"
    t.text "multiverseId"
    t.text "name"
    t.text "number"
    t.text "originalReleaseDate"
    t.text "originalText"
    t.text "originalType"
    t.text "otherFaceIds"
    t.decimal "power", precision: 3
    t.text "printings"
    t.text "promoTypes"
    t.text "purchaseUrls"
    t.column "rarity", "enum('common','uncommon','token','rare','mythic','mythic_rare','basic_land','sealed','special','bonus')", default: "common"
    t.text "scryfallId"
    t.text "scryfallIllustrationId"
    t.text "scryfallOracleId"
    t.text "setCode"
    t.text "side"
    t.text "signature"
    t.text "subtypes"
    t.text "supertypes"
    t.text "tcgplayerEtchedProductId"
    t.text "tcgplayerProductId"
    t.text "text"
    t.decimal "toughness", precision: 3
    t.string "uuid", limit: 36, default: "", null: false
    t.text "variations"
    t.text "watermark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.index ["uuid"], name: "uuid", unique: true
  end

  create_table "comments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "card_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.index ["card_id"], name: "index_comments_on_card_id"
  end

  create_table "foreign_data", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "cardType"
    t.text "flavorText"
    t.column "language", "enum('German','Spanish','French','Italian','Japanese','Portuguese (Brazil)','Russian','Chinese Simplified','Korean','Chinese Traditional','Phyrexian','Sanskrit','Latin','Hebrew','Arabic','Ancient Greek')"
    t.integer "multiverseid"
    t.text "name"
    t.text "text"
    t.string "uuid", limit: 36, default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["uuid"], name: "uuid", unique: true
  end

  create_table "legalities", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.column "format", "enum('commander','duel','legacy','modern','paupercommander','penny','premodern','vintage','gladiator','historic','historicbrawl','pauper','pioneer','brawl','future','standard','oldschool')"
    t.column "status", "enum('Legal','Restricted','Banned')"
    t.string "uuid", limit: 36, default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["uuid"], name: "uuid", unique: true
  end

  create_table "meta", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "date"
    t.text "version"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rulings", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "date"
    t.text "text"
    t.string "uuid", limit: 36, default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["uuid"], name: "uuid", unique: true
  end

  create_table "set_translations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.column "language", "enum('Chinese Simplified','Chinese Traditional','French','German','Italian','Japanese','Korean','Portuguese (Brazil)','Russian','Spanish')"
    t.string "setCode", limit: 8, default: "", null: false
    t.text "translation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["setCode"], name: "setCode"
  end

  create_table "sets", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "baseSetSize"
    t.text "block"
    t.text "booster", size: :long
    t.string "code", limit: 8, default: "", null: false
    t.boolean "isFoilOnly", default: false, null: false
    t.boolean "isForeignOnly", default: false, null: false
    t.boolean "isNonFoilOnly", default: false, null: false
    t.boolean "isOnlineOnly", default: false, null: false
    t.boolean "isPartialPreview", default: false, null: false
    t.text "keyruneCode"
    t.integer "mcmId"
    t.integer "mcmIdExtras"
    t.text "mcmName"
    t.text "mtgoCode"
    t.text "name"
    t.text "parentCode"
    t.date "releaseDate"
    t.text "sealedProduct"
    t.column "setType", "enum('core','masters','expansion','memorabilia','commander','starter','archenemy','box','draft_innovation','from_the_vault','funny','duel_deck','masterpiece','promo','premium_deck','planechase','token','vanguard','treasure_chest','spellbook')"
    t.integer "tcgplayerGroupId"
    t.integer "totalSetSize"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code"], name: "code", unique: true
  end

  create_table "tokens", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "artist"
    t.text "asciiName"
    t.text "availability"
    t.column "borderColor", "enum('black','borderless','silver','gold')"
    t.text "colorIdentity"
    t.text "colors"
    t.text "edhrecRank"
    t.text "faceName"
    t.text "finishes"
    t.text "flavorText"
    t.text "frameEffects"
    t.text "frameVersion"
    t.boolean "hasFoil", default: false, null: false
    t.boolean "hasNonFoil", default: false, null: false
    t.boolean "isFullArt", default: false, null: false
    t.boolean "isPromo", default: false, null: false
    t.boolean "isReprint", default: false, null: false
    t.text "keywords"
    t.column "layout", "enum('token','art_series','emblem','normal')"
    t.text "mcmId"
    t.text "mtgArenaId"
    t.text "mtgjsonV4Id"
    t.text "multiverseId"
    t.text "name"
    t.text "number"
    t.text "originalText"
    t.text "originalType"
    t.decimal "power", precision: 3
    t.text "promoTypes"
    t.text "reverseRelated"
    t.text "scryfallId"
    t.text "scryfallIllustrationId"
    t.text "scryfallOracleId"
    t.text "setCode"
    t.text "side"
    t.text "signature"
    t.text "subtypes"
    t.text "supertypes"
    t.text "tcgplayerProductId"
    t.text "text"
    t.text "tokenType"
    t.text "tokenTypes"
    t.decimal "toughness", precision: 3
    t.string "uuid", limit: 36, default: "", null: false
    t.text "watermark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "cards"
end
