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
        desc = "[F]ind [F]ile"
      },
      {
        "<leader>fc",
        function()
          require("fzf-lua").files({ cwd = vim.env.CHEZMOI_SOURCE_DIR })
        end,
        desc = "[F]ind in [C]onfig root"
      },
    },
    opts = {}
    ---@diagnostic enable: missing-fields
  }
}
