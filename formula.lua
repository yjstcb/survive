
-- local Player = GetPlayer()
-- isServer = (Player.name == "__MP__admin")
-- if isServer then
--     local server = require("server")
-- end
-- local saveData = GetSavedData()
local saveData = {}
local GUI = require("GUI")
-- local Player = GetPlayer()
-- isServer = (Player.name == "__MP__admin")
-- if isServer then
--     local server = require("server")
-- end
-- local saveData = GetSavedData()
local gameUi = {
  -- 升级界面
  {
      ui_name = "upgrade_background",
      type = "Picture",
      background_color = "0 0 0 255",
      align = "_ct",
      y = 0,
      x = 0,
      height = 400,
      width = 900,
      visible = true,
  },
      {
          ui_name = "upgrade_title",
          type = "Text",
          align = "_ct",
          text = function()
              local text = "能力提升"

              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 45,
          x = function()
              return getUiValue("upgrade_background", "x") - 0
          end,
          y = function()
              return getUiValue("upgrade_background", "y") - 180
          end,
          font_bold = true,
          height = 70,
          width = 300,
          text_format = 1,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      {
          ui_name = "close_button",
          type = "Button",
          align = "_ct",
          background_color = "220 20 60 255",
          text = function()
              local text = "X"

              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 30,
          x = function()
              return getUiValue("upgrade_background", "x") + 420
          end,
          y = function()
              return getUiValue("upgrade_background", "y") - 170
          end,
          onclick = function()
              -- closeSafeHouseUI()
          end,
          font_bold = true,
          height = 50,
          width = 50,
          text_format = 5,
          --text_border = true,
          shadow = true,
          font_color = "220 20 60",
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      {
          ui_name = "upgrade_fightingLevel",
          type = "Text",
          align = "_ct",
          text = function()
              -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
              local text = "战斗力等级:999"
              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 30,
          x = function()
              return getUiValue("upgrade_background", "x") - 250
          end,
          y = function()
              return getUiValue("upgrade_background", "y") - 100
          end,
          font_bold = true,
          height = 70,
          width = 300,
          text_format = 0,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      {
          ui_name = "current_gold",
          type = "Text",
          align = "_ct",
          text = function()
              -- local text = "金钱：" .. tostring(saveData.mMoney)
              local text = "金钱：99999999"
              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 30,
          x = function()
              return getUiValue("upgrade_background", "x") + 150
          end,
          y = function()
              return getUiValue("upgrade_background", "y") - 100
          end,
          font_bold = true,
          height = 70,
          width = 500,
          text_format = 2,
          --text_border = true,
          shadow = true,
          font_color = "255 215 0",
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      -- 血量
      {
          ui_name = "upgrade_HP_background",
          type = "Picture",
          background_color = "12 210 62 255",
          align = "_ct",
          x = function()
              return getUiValue("upgrade_background", "x") - 300
          end,
          y = function()
              return getUiValue("upgrade_background", "y") + 0
          end,
          height = 150,
          width = 200,
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      {
          ui_name = "upgrade_HP",
          type = "Text",
          align = "_ct",
          text = function()
              --local text = "生命等级:" .. tostring(saveData.mHPLevel)
              local text = "生命等级:999\n\n生命值：9999"
              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 20,
          x = function()
              return getUiValue("upgrade_HP_background", "x") + 20
          end,
          y = function()
              return getUiValue("upgrade_HP_background", "y") - 0
          end,
          font_bold = true,
          height = 100,
          width = 200,
          text_format = 0,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      {
          ui_name = "upgrade_HP_button",
          type = "Button",
          align = "_ct",
          background_color = "0 0 0 255",
          text = function()
              local text = "升级"

              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 20,
          x = function()
              return getUiValue("upgrade_HP_background", "x") + 0
          end,
          y = function()
              return getUiValue("upgrade_HP_background", "y") + 140
          end,
          onclick = function()
              -- local money = getNextLvGold(getSavedData().mHPLevel)
              -- if getSavedData().mMoney >= money then
              --     getSavedData().mMoney = getSavedData().mMoney - money
              --     getSavedData().mHPLevel = getSavedData().mHPLevel + 1
              -- end
          end,
          font_bold = true,
          height = 35,
          width = 80,
          text_format = 1,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      {
          ui_name = "upgrade_HP_gold",
          type = "Text",
          align = "_ct",
          text = function()
              -- local text = "需要金钱：" .. tostring(getNextLvGold(getSavedData().mHPLevel))
              local text = "需要金钱：99999999"
              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 20,
          x = function()
              return getUiValue("upgrade_HP_background", "x") + 0
          end,
          y = function()
              return getUiValue("upgrade_HP_background", "y") + 110
          end,
          font_bold = true,
          height = 50,
          width = 200,
          text_format = 0,
          --text_border = true,
          shadow = true,
          font_color = "255 215 0",
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      -- 攻击力
      {
          ui_name = "upgrade_attack_background",
          type = "Picture",
          background_color = "236 45 14 255",
          align = "_ct",
          x = function()
              return getUiValue("upgrade_background", "x") - 0
          end,
          y = function()
              return getUiValue("upgrade_background", "y") + 0
          end,
          height = 150,
          width = 200,
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      {
          ui_name = "upgrade_attack",
          type = "Text",
          align = "_ct",
          text = function()
              -- local text = "攻击等级:" .. tostring(saveData.mAttackValueLevel)
              local text = "攻击等级:999\n\n攻击力：999"
              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 20,
          x = function()
              return getUiValue("upgrade_attack_background", "x") + 20
          end,
          y = function()
              return getUiValue("upgrade_attack_background", "y") + 0
          end,
          font_bold = true,
          height = 100,
          width = 200,
          text_format = 0,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      {
          ui_name = "upgrade_attack_button",
          type = "Button",
          align = "_ct",
          background_color = "0 0 0 255",
          text = function()
              local text = "升级"

              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 20,
          x = function()
              return getUiValue("upgrade_attack_background", "x") + 0
          end,
          y = function()
              return getUiValue("upgrade_attack_background", "y") + 140
          end,
          onclick = function()
              -- local money = getNextLvGold(getSavedData().mAttackValueLevel)
              -- if getSavedData().mMoney >= money then
              --     getSavedData().mMoney = getSavedData().mMoney - money
              --     getSavedData().mAttackValueLevel = getSavedData().mAttackValueLevel + 1
              -- end
          end,
          font_bold = true,
          height = 35,
          width = 80,
          text_format = 1,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      {
          ui_name = "upgrade_attack_gold",
          type = "Text",
          align = "_ct",
          text = function()
              -- local text = "需要金钱：" .. tostring(getNextLvGold(getSavedData().mHPLevel))
              local text = "需要金钱：99999999"
              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 20,
          x = function()
              return getUiValue("upgrade_attack_background", "x") + 0
          end,
          y = function()
              return getUiValue("upgrade_attack_background", "y") + 110
          end,
          font_bold = true,
          height = 50,
          width = 200,
          text_format = 0,
          --text_border = true,
          shadow = true,
          font_color = "255 215 0",
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      -- 攻速
      {
          ui_name = "upgrade_attSpeed_background",
          type = "Picture",
          background_color = "245 230 9 255",
          align = "_ct",
          x = function()
              return getUiValue("upgrade_background", "x") + 300
          end,
          y = function()
              return getUiValue("upgrade_background", "y") + 0
          end,
          height = 150,
          width = 200,
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      {
          ui_name = "upgrade_attSpeed",
          type = "Text",
          align = "_ct",
          text = function()
              -- local text = "攻击等级:" .. tostring(saveData.mAttackValueLevel)
              local text = "攻速等级:999\n\n攻速提升：100%"
              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 20,
          x = function()
              return getUiValue("upgrade_attSpeed_background", "x") + 20
          end,
          y = function()
              return getUiValue("upgrade_attSpeed_background", "y") + 0
          end,
          font_bold = true,
          height = 100,
          width = 200,
          text_format = 0,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      {
          ui_name = "upgrade_attSpeed_button",
          type = "Button",
          align = "_ct",
          background_color = "0 0 0 255",
          text = function()
              local text = "升级"

              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 20,
          x = function()
              return getUiValue("upgrade_attSpeed_background", "x") + 0
          end,
          y = function()
              return getUiValue("upgrade_attSpeed_background", "y") + 140
          end,
          onclick = function()
              -- local money = getNextLvGold(getSavedData().mAttackValueLevel)
              -- if getSavedData().mMoney >= money then
              --     getSavedData().mMoney = getSavedData().mMoney - money
              --     getSavedData().mAttackValueLevel = getSavedData().mAttackValueLevel + 1
              -- end
          end,
          font_bold = true,
          height = 35,
          width = 80,
          text_format = 1,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
      {
          ui_name = "upgrade_attSpeed_gold",
          type = "Text",
          align = "_ct",
          text = function()
              -- local text = "需要金钱：" .. tostring(getNextLvGold(getSavedData().mHPLevel))
              local text = "需要金钱：99999999"
              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 20,
          x = function()
              return getUiValue("upgrade_attSpeed_background", "x") + 0
          end,
          y = function()
              return getUiValue("upgrade_attSpeed_background", "y") + 110
          end,
          font_bold = true,
          height = 50,
          width = 200,
          text_format = 0,
          --text_border = true,
          shadow = true,
          font_color = "255 215 0",
          visible = function()
              return getUiValue("upgrade_background", "visible")
          end,
      },
  -- 左下角状态栏
  {
      ui_name = "state_background",
      type = "Picture",
      background_color = "0 0 0 255",
      align = "_lb",
      y = -10,
      x = 10,
      height = 200,
      width = 300,
      visible = true,
  },
      {
          ui_name = "state_fightingLevel",
          type = "Text",
          align = "_lb",
          text = function()
              -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
              local text = "战斗力等级:999"
              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 30,
          x = function()
              return getUiValue("state_background", "x") - 0
          end,
          y = function()
              return getUiValue("state_background", "y") - 120
          end,
          font_bold = true,
          height = 70,
          width = 400,
          text_format = 0,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("state_background", "visible")
          end,
      },
      {
          ui_name = "state_levels",
          type = "Text",
          align = "_lb",
          text = function()
              -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
              local text = "生命(lv999)：9999\n攻击(lv999)：999\n攻速(lv999)：100%\n"
              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 20,
          x = function()
              return getUiValue("state_background", "x") - 0
          end,
          y = function()
              return getUiValue("state_background", "y") - 30
          end,
          font_bold = true,
          height = 100,
          width = 400,
          text_format = 0,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("state_background", "visible")
          end,
      },
      {
          ui_name = "upgrade_button",
          type = "Button",
          align = "_lb",
          background_color = "22 255 0 255",
          text = function()
              local text = "升级(U)"

              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 20,
          x = function()
              return getUiValue("state_background", "x") + 200
          end,
          y = function()
              return getUiValue("state_background", "y") -60
          end,
          onclick = function()
              -- local money = getNextLvGold(getSavedData().mHPLevel)
              -- if getSavedData().mMoney >= money then
              --     getSavedData().mMoney = getSavedData().mMoney - money
              --     getSavedData().mHPLevel = getSavedData().mHPLevel + 1
              -- end
          end,
          font_bold = true,
          height = 50,
          width = 100,
          text_format = 5,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("state_background", "visible")
          end,
      },
  -- 关卡信息
  {
      ui_name = "levelInfo_background",
      type = "Picture",
      background_color = "0 0 0 0",
      align = "_ctt",
      y = 0,
      x = 0,
      height = 200,
      width = 300,
      visible = true,
  },
      {
          ui_name = "levelInfo_monsterLeft",
          type = "Text",
          align = "_ctt",
          text = function()
              -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
              local text = "怪物剩余：999"
              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 30,
          x = function()
              return getUiValue("levelInfo_background", "x") - 190
          end,
          y = function()
              return getUiValue("levelInfo_background", "y") - 0
          end,
          font_bold = true,
          height = 100,
          width = 220,
          text_format = 2,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("levelInfo_background", "visible")
          end,
      },
      {
          ui_name = "levelInfo_currentLevel",
          type = "Text",
          align = "_ctt",
          text = function()
              -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
              local text = "关卡等级：999"
              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 30,
          x = function()
              return getUiValue("levelInfo_background", "x") + 280
          end,
          y = function()
              return getUiValue("levelInfo_background", "y") - 0
          end,
          font_bold = true,
          height = 100,
          width = 400,
          text_format = 0,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("levelInfo_background", "visible")
          end,
      },
      {
          ui_name = "levelInfo_timeLeft",
          type = "Text",
          align = "_ctt",
          text = function()
              -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
              local text = "剩余时间：9999"
              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 30,
          x = function()
              return getUiValue("levelInfo_background", "x") + 0
          end,
          y = function()
              return getUiValue("levelInfo_background", "y") + 60
          end,
          font_bold = true,
          height = 100,
          width = 300,
          text_format = 1,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("levelInfo_background", "visible")
          end,
      },
      {
          ui_name = "chooseLv_vote_button",
          type = "Button",
          align = "_ctt",
          background_color = "22 255 0 255",
          text = function()
              local text = "选关投票(L)"

              return text
          end,
          -- font_type = "Source Han Sans SC Bold",
          font_size = 18,
          x = function()
              return getUiValue("levelInfo_background", "x") + 370
          end,
          y = function()
              return getUiValue("levelInfo_background", "y") + 5
          end,
          onclick = function()
              -- local money = getNextLvGold(getSavedData().mHPLevel)
              -- if getSavedData().mMoney >= money then
              --     getSavedData().mMoney = getSavedData().mMoney - money
              --     getSavedData().mHPLevel = getSavedData().mHPLevel + 1
              -- end
          end,
          font_bold = true,
          height = 40,
          width = 120,
          text_format = 5,
          --text_border = true,
          shadow = true,
          font_color = "255 255 255",
          visible = function()
              return getUiValue("levelInfo_background", "visible")
          end,
      },
  -- 排行榜
  {
    ui_name = "ranking_background",
    type = "Picture",
    background_color = "0 0 0 0",
    align = "_rt",
    y = 0,
    x = 0,
    height = 200,
    width = 300,
    visible = true,
  },
      {
        ui_name = "ranking_tip",
        type = "Text",
        align = "_rt",
        text = function()
            -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
            local text = "按tab打开/关闭排行榜"
            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 18,
        x = function()
            return getUiValue("ranking_background", "x") + 0
        end,
        y = function()
            return getUiValue("ranking_background", "y") + 100
        end,
        font_bold = true,
        height = 100,
        width = 200,
        text_format = 0,
        --text_border = true,
        shadow = true,
        font_color = "255 255 255 150",
        visible = function()
            return getUiValue("ranking_background", "visible")
        end,
      },
      {
        ui_name = "ranking_tittle",
        type = "Text",
        align = "_rt",
        text = function()
            -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
            local text = "玩家        战斗力等级     金钱         杀怪数"
            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 18,
        x = function()
            return getUiValue("ranking_background", "x") + 80
        end,
        y = function()
            return getUiValue("ranking_background", "y") + 130
        end,
        font_bold = true,
        height = 100,
        width = 400,
        text_format = 0,
        --text_border = true,
        shadow = true,
        font_color = "255 255 255",
        visible = function()
            return getUiValue("ranking_background", "visible")
        end,
      },
      {
        ui_name = "ranking_playerName",
        type = "Text",
        align = "_rt",
        text = function()
            -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
            local text = "1.玩家名玩家名\n1.玩家名玩家名\n1.玩家名玩家名\n1.玩家名玩家名\n1.玩家名玩家名\n1.玩家名玩家名\n1.玩家名玩家名\n1.玩家名玩家名\n1.玩家名玩家名\n1.玩家名玩家名\n1.玩家名玩家名\n1.玩家名玩家名\n1.玩家名玩家名\n1.玩家名玩家名\n1.玩家名玩家名\n1.玩家名玩家名\n"
            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 18,
        x = function()
            return getUiValue("ranking_background", "x") - 210
        end,
        y = function()
            return getUiValue("ranking_background", "y") + 160
        end,
        font_bold = true,
        height = 500,
        width = 150,
        text_format = 0,
        --text_border = true,
        shadow = true,
        font_color = "255 255 255",
        visible = function()
            return getUiValue("ranking_background", "visible")
        end,
      },
      {
        ui_name = "ranking_fightLevel",
        type = "Text",
        align = "_rt",
        text = function()
            -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
            local text = "999\n999\n999\n999\n999\n999\n999\n999\n999\n999\n999\n999\n999\n999\n999\n999\n"
            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 18,
        x = function()
            return getUiValue("ranking_background", "x") - 170
        end,
        y = function()
            return getUiValue("ranking_background", "y") + 160
        end,
        font_bold = true,
        height = 500,
        width = 50,
        text_format = 0,
        --text_border = true,
        shadow = true,
        font_color = "255 255 255",
        visible = function()
            return getUiValue("ranking_background", "visible")
        end,
      },
      {
        ui_name = "ranking_gold",
        type = "Text",
        align = "_rt",
        text = function()
            -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
            local text = "999999\n999999\n999999\n999999\n999999\n999999\n999999\n999999\n999999\n999999\n999999\n999999\n999999\n999999\n999999\n999999\n"
            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 18,
        x = function()
            return getUiValue("ranking_background", "x") - 50
        end,
        y = function()
            return getUiValue("ranking_background", "y") + 160
        end,
        font_bold = true,
        height = 500,
        width = 100,
        text_format = 0,
        --text_border = true,
        shadow = true,
        font_color = "255 255 255",
        visible = function()
            return getUiValue("ranking_background", "visible")
        end,
      },
      {
        ui_name = "ranking_kills",
        type = "Text",
        align = "_rt",
        text = function()
            -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
            local text = "99999\n99999\n99999\n99999\n99999\n99999\n99999\n99999\n99999\n99999\n99999\n99999\n99999\n99999\n99999\n99999\n"
            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 18,
        x = function()
            return getUiValue("ranking_background", "x") +30
        end,
        y = function()
            return getUiValue("ranking_background", "y") + 160
        end,
        font_bold = true,
        height = 500,
        width = 100,
        text_format = 0,
        --text_border = true,
        shadow = true,
        font_color = "255 255 255",
        visible = function()
            return getUiValue("ranking_background", "visible")
        end,
      },
-- 选关界面
  {
    ui_name = "chooseLevel_background",
    type = "Picture",
    background_color = "0 0 0 255",
    align = "_ct",
    y = 0,
    x = 0,
    height = 400,
    width = 800,
    visible = true,
  },
      {
        ui_name = "close_chooseLevel_button",
        type = "Button",
        align = "_ct",
        background_color = "220 20 60 255",
        text = function()
            local text = "X"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("chooseLevel_background", "x") + 370
        end,
        y = function()
            return getUiValue("chooseLevel_background", "y") - 170
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 50,
        text_format = 5,
        --text_border = true,
        shadow = true,
        font_color = "220 20 60",
        visible = function()
            return getUiValue("chooseLevel_background", "visible")
        end,
      },
      {
        ui_name = "chooseLevel_title",
        type = "Text",
        align = "_ct",
        text = function()
            -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
            local text =  "选关投票"
           return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 40,
        x = function()
            return getUiValue("chooseLevel_background", "x") +0
        end,
        y = function()
            return getUiValue("chooseLevel_background", "y") - 180
        end,
        font_bold = true,
        height = 50,
        width = 200,
        text_format = 1,
        --text_border = true,
        shadow = true,
        font_color = "255 255 255",
        visible = function()
            return getUiValue("chooseLevel_background", "visible")
        end,
      },
      {
        ui_name = "chooseLevel_text",
        type = "Text",
        align = "_ct",
        text = function()
            -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
           local text =  "1.仅能选择低于自己战斗力等级的关卡发起投票\n2.需要大于50%的队友同意，才能选关成功"
           return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 20,
        x = function()
            return getUiValue("chooseLevel_background", "x") +50
        end,
        y = function()
            return getUiValue("chooseLevel_background", "y") - 100
        end,
        font_bold = true,
        height = 100,
        width = 500,
        text_format = 0,
        --text_border = true,
        shadow = true,
        font_color = "255 255 255",
        visible = function()
            return getUiValue("chooseLevel_background", "visible")
        end,
      },
      {
        ui_name = "level1_button",
        type = "Button",
        align = "_ct",
        background_color = "255 255 255 255",
        text = function()
            local text = "1"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("chooseLevel_background", "x") - 300
        end,
        y = function()
            return getUiValue("chooseLevel_background", "y") - 40
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 80,
        text_format = 5,
        --text_border = true,
        shadow = true,
        font_color = "220 20 60",
        visible = function()
            return getUiValue("chooseLevel_background", "visible")
        end,
      },
      {
        ui_name = "level2_button",
        type = "Button",
        align = "_ct",
        background_color = "255 255 255 255",
        text = function()
            local text = "30"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("chooseLevel_background", "x") - 150
        end,
        y = function()
            return getUiValue("chooseLevel_background", "y") - 40
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 80,
        text_format = 5,
        --text_border = true,
        shadow = true,
        font_color = "220 20 60",
        visible = function()
            return getUiValue("chooseLevel_background", "visible")
        end,
      },
      {
        ui_name = "level3_button",
        type = "Button",
        align = "_ct",
        background_color = "255 255 255 255",
        text = function()
            local text = "60"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("chooseLevel_background", "x") - 0
        end,
        y = function()
            return getUiValue("chooseLevel_background", "y") - 40
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 80,
        text_format = 5,
        --text_border = true,
        shadow = true,
        font_color = "220 20 60",
        visible = function()
            return getUiValue("chooseLevel_background", "visible")
        end,
      },
      {
        ui_name = "level4_button",
        type = "Button",
        align = "_ct",
        background_color = "255 255 255 255",
        text = function()
            local text = "90"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("chooseLevel_background", "x") + 150
        end,
        y = function()
            return getUiValue("chooseLevel_background", "y") - 40
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 80,
        text_format = 5,
        --text_border = true,
        shadow = true,
        font_color = "220 20 60",
        visible = function()
            return getUiValue("chooseLevel_background", "visible")
        end,
      },
      {
        ui_name = "level5_button",
        type = "Button",
        align = "_ct",
        background_color = "255 255 255 255",
        text = function()
            local text = "120"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("chooseLevel_background", "x") + 300
        end,
        y = function()
            return getUiValue("chooseLevel_background", "y") - 40
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 80,
        text_format = 5,
        --text_border = true,
        shadow = true,
        font_color = "220 20 60",
        visible = function()
            return getUiValue("chooseLevel_background", "visible")
        end,
      },
      {
        ui_name = "level6_button",
        type = "Button",
        align = "_ct",
        background_color = "255 255 255 255",
        text = function()
            local text = "150"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("chooseLevel_background", "x") - 300
        end,
        y = function()
            return getUiValue("chooseLevel_background", "y") + 80
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 80,
        text_format = 5,
        --text_border = true,
        shadow = true,
        font_color = "220 20 60",
        visible = function()
            return getUiValue("chooseLevel_background", "visible")
        end,
      },
      {
        ui_name = "level7_button",
        type = "Button",
        align = "_ct",
        background_color = "255 255 255 255",
        text = function()
            local text = "180"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("chooseLevel_background", "x") - 150
        end,
        y = function()
            return getUiValue("chooseLevel_background", "y") + 80
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 80,
        text_format = 5,
        --text_border = true,
        shadow = true,
        font_color = "220 20 60",
        visible = function()
            return getUiValue("chooseLevel_background", "visible")
        end,
      },
      {
        ui_name = "level8_button",
        type = "Button",
        align = "_ct",
        background_color = "255 255 255 255",
        text = function()
            local text = "210"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("chooseLevel_background", "x") - 0
        end,
        y = function()
            return getUiValue("chooseLevel_background", "y") + 80
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 80,
        text_format = 5,
        --text_border = true,
        shadow = true,
        font_color = "220 20 60",
        visible = function()
            return getUiValue("chooseLevel_background", "visible")
        end,
      },
      {
        ui_name = "level9_button",
        type = "Button",
        align = "_ct",
        background_color = "255 255 255 255",
        text = function()
            local text = "240"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("chooseLevel_background", "x") + 150
        end,
        y = function()
            return getUiValue("chooseLevel_background", "y") + 80
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 80,
        text_format = 5,
        --text_border = true,
        shadow = true,
        font_color = "220 20 60",
        visible = function()
            return getUiValue("chooseLevel_background", "visible")
        end,
      },
      {
        ui_name = "level10_button",
        type = "Button",
        align = "_ct",
        background_color = "255 255 255 255",
        text = function()
            local text = "270"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("chooseLevel_background", "x") + 300
        end,
        y = function()
            return getUiValue("chooseLevel_background", "y") + 80
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 80,
        text_format = 5,
        --text_border = true,
        shadow = true,
        font_color = "220 20 60",
        visible = function()
            return getUiValue("chooseLevel_background", "visible")
        end,
      },
  {
    ui_name = "voteLevel_background",
    type = "Picture",
    background_color = "0 0 0 255",
    align = "_ct",
    y = 0,
    x = 0,
    height = 400,
    width = 800,
    visible = true,
  },
      {
        ui_name = "close_voteLevel_button",
        type = "Button",
        align = "_ct",
        background_color = "220 20 60 255",
        text = function()
            local text = "X"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("voteLevel_background", "x") + 370
        end,
        y = function()
            return getUiValue("voteLevel_background", "y") - 170
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 50,
        text_format = 5,
        --text_border = true,
        shadow = true,
        font_color = "220 20 60",
        visible = function()
            return getUiValue("voteLevel_background", "visible")
        end,
      },
      {
        ui_name = "voteLevel_title",
        type = "Text",
        align = "_ct",
        text = function()
            -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
           local text =  "换关投票"
           return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 40,
        x = function()
            return getUiValue("voteLevel_background", "x") +0
        end,
        y = function()
            return getUiValue("voteLevel_background", "y") - 150
        end,
        font_bold = true,
        height = 100,
        width = 500,
        text_format = 1,
        --text_border = true,
        shadow = true,
        font_color = "255 255 255",
        visible = function()
            return getUiValue("voteLevel_background", "visible")
        end,
      },
      {
        ui_name = "voteTimeLeft",
        type = "Text",
        align = "_ct",
        text = function()
            local text = "剩余时间：200"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 20,
        x = function()
            return getUiValue("voteLevel_background", "x") - 250
        end,
        y = function()
            return getUiValue("voteLevel_background", "y") - 150
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 250,
        text_format = 0,
        --text_border = true,
        shadow = true,
        font_color = "255 255 255",
        visible = function()
            return getUiValue("voteLevel_background", "visible")
        end,
      },
      {
        ui_name = "voteLevel_text",
        type = "Text",
        align = "_ct",
        text = function()
            -- local text = "战斗力等级:" .. tostring(saveData.mHPLevel + saveData.mAttackValueLevel + saveData.mAttackTimeLevel)
           local text =  "玩家名玩家名 想切换到关卡等级200，是否同意？"
           return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 20,
        x = function()
            return getUiValue("voteLevel_background", "x") +50
        end,
        y = function()
            return getUiValue("voteLevel_background", "y") - 100
        end,
        font_bold = true,
        height = 100,
        width = 500,
        text_format = 0,
        --text_border = true,
        shadow = true,
        font_color = "255 255 255",
        visible = function()
            return getUiValue("voteLevel_background", "visible")
        end,
      },
      {
        ui_name = "agree_button",
        type = "Button",
        align = "_ct",
        background_color = "255 255 255 255",
        text = function()
            local text = "同意(Y)"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("voteLevel_background", "x") - 180
        end,
        y = function()
            return getUiValue("voteLevel_background", "y") + 0
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 150,
        text_format = 5,
        --text_border = true,
        shadow = true,
        font_color = "220 20 60",
        visible = function()
            return getUiValue("voteLevel_background", "visible")
        end,
      },
      {
        ui_name = "disagree_button",
        type = "Button",
        align = "_ct",
        background_color = "255 255 255 255",
        text = function()
            local text = "不同意(N)"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("voteLevel_background", "x") + 180
        end,
        y = function()
            return getUiValue("voteLevel_background", "y") + 0
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 150,
        text_format = 1,
        --text_border = true,
        shadow = true,
        font_color = "220 20 60",
        visible = function()
            return getUiValue("voteLevel_background", "visible")
        end,
      },
      {
        ui_name = "agree_text",
        type = "Text",
        align = "_ct",
        text = function()
            local text = "(10票)"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("voteLevel_background", "x") - 180
        end,
        y = function()
            return getUiValue("voteLevel_background", "y") + 80
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 150,
        text_format = 1,
        --text_border = true,
        shadow = true,
        font_color = "255 255 255",
        visible = function()
            return getUiValue("voteLevel_background", "visible")
        end,
      },
      {
        ui_name = "disagree_text",
        type = "Text",
        align = "_ct",
        text = function()
            local text = "(10票)"

            return text
        end,
        -- font_type = "Source Han Sans SC Bold",
        font_size = 30,
        x = function()
            return getUiValue("voteLevel_background", "x") + 180
        end,
        y = function()
            return getUiValue("voteLevel_background", "y") + 80
        end,
        onclick = function()
            -- closeSafeHouseUI()
        end,
        font_bold = true,
        height = 50,
        width = 150,
        text_format = 1,
        --text_border = true,
        shadow = true,
        font_color = "255 255 255",
        visible = function()
            return getUiValue("voteLevel_background", "visible")
        end,
      },
}




function main ()

  initUi()
end
--------------------------------------------------------------------------------ui--------------------------------------------------
function initUi()
	for i=1,#gameUi do
		GUI.UI(gameUi[i])
	end
end

function getUi(name)
	for i=1,#gameUi do
		if gameUi[i].ui_name == name then
			return gameUi[i]
		end
	end
	return {}
end

function getUiValue(ui_name, key)
	local ui = getUi(ui_name)
	if type(ui[key]) == "function" then
		return ui[key]()
	end
	return ui[key]
end

function setUiValue(ui_name, key, value)
	local ui = getUi(ui_name)
	if ui then
		ui[key] = value
	end
end

function showUi(name)
	local ui = getUi(name)
	if ui then
		ui.visible = true
	end
end

function hideUi(name)
	local ui = getUi(name)
	if ui then
		ui.visible = false
	end
end

---------------------------------------------------------------------------------------------------------------------------------------
function hitMonsterDamage (playerAtt,monDef)
  local finalDamage
  finalDamage = playerAtt - monDef
  if finalDamage > 0 then
    return finalDamage
  else
    return 0
  end
end

function hitPlayerDamage (monAtt,playerDef)
  local finalDamage
  finalDamage = monAtt - playerDef
  if finalDamage > 0 then
    return finalDamage
  else
    return 0
  end
end


function monLootGold (lv)
  local function getNextLvTime (lv)
    if lv < 11 then
      return 0.02*lv^2 + 0.3*lv + 1.08
    elseif lv >= 11 and lv <31 then
      return 0.02*lv^2 + 0.3*lv + 1.08
    elseif lv >= 31 and lv >61 then
      return 0.06*lv^2 + 0.1*lv -27.5
    elseif lv >= 61 then
      return 0.25*lv^2 + 0.3*lv -710
    end
  end
  local nextLvTime = getNextLvTime(lv)
  local killEfficiency = 5/60
  local goldEfficiency = lv*20+40
  local nextLvGold = goldEfficiency *nextLvTime
  local nextLvMonNum = nextLvTime/killEfficiency
  local monLootGold = nextLvGold/nextLvMonNum
  return monLootGold
end
