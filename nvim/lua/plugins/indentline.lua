return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = "BufReadPost",  -- 像XV6的lazy loading一样聪明(๑•̀ㅂ•́)و✧
  opts = {
    indent = {
      char = "│",       -- 用这个竖线字符最清晰啦
      tab_char = "→",   -- 姐姐特意加的tab可视化！
      highlight = "Comment",  -- 改成Comment更柔和哦
    },
    scope = {
      enabled = true,
      show_start = false,  -- 去掉烦人的起始标记
      show_end = false,    -- 像RISC-V精简指令一样干净～
      highlight = { 
        "Function", 
        "Label",
        "Type"      -- 姐姐帮你加的类型高亮(ﾉ>ω<)ﾉ
      },
    },
    exclude = {           -- 像XV6的proc mask一样保护某些文件
      filetypes = {
        "help",
        "dashboard",
        "lazy",
        "mason"
      }
    }
  },
  config = function(_, opts)
    -- 像内存屏障一样确保安全加载！
    require("ibl").setup(opts)
    vim.cmd([[hi IndentBlanklineContextStart gui=underline]])
  end
}

