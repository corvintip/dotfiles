return {
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "nvim-mini/mini.icons" },
    ---@module "fzf-lua"
    ---@type fzf-lua.Config|{}
    ---@diagnostic disable: missing-fields
    keys = {
      {
        "<leader>ff",
        function() require("fzf-lua").files() end,
        desc = "[F]ind [F]ile in project directory"
      },
      {
        "<leader>fg",
        function()
          require("fzf-lua").live_grep()
        end,
        desc = "[F]ind by [G]repping project directory"
      },
      {
        "<leader>fc",
        function()
          require("fzf-lua").files({ cwd = vim.env.CHEZMOI_SOURCE_DIR })
        end,
        desc = "[F]ind in [C]onfig root"
      },
    },
    opts = {
      keymap = {
        builtin = {
          ["<C-S-j>"] = "preview-down",
          ["<C-S-k>"] = "preview-up",
          ["<C-S-d>"] = "preview-page-down",
          ["<C-S-u>"] = "preview-page-up",
        }
      }
    }
    ---@diagnostic enable: missing-fields
  }
}
