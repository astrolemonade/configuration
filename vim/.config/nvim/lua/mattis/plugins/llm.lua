return {
  {
    'yacineMTB/dingllm.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
      local llm = require 'dingllm'
      local system_prompt =
        'You should replace the code that you are sent, only following the comments. Do not talk at all. Only output valid code. Do not provide any backticks that surround the code. Never ever output backticks like this ```. Any comment that is asking you for something should be removed after you satisfy them. Other comments should left alone. Do not output backticks'
      local helpful_prompt = 'You are a helpful assistant. What I have sent are my notes so far. You are very curt, yet helpful.'

      local function openai_replace()
        llm.invoke_llm_and_stream_into_editor({
          url = 'https://api.openai.com/v1/chat/completions',
          model = 'gpt-4o',
          api_key_name = 'OPENAI_API_KEY',
          system_prompt = system_prompt,
          replace = true,
        }, llm.make_openai_spec_curl_args, llm.handle_openai_spec_data)
      end

      local function openai_help()
        llm.invoke_llm_and_stream_into_editor({
          url = 'https://api.openai.com/v1/chat/completions',
          model = 'gpt-4o',
          api_key_name = 'OPENAI_API_KEY',
          system_prompt = helpful_prompt,
          replace = false,
        }, llm.make_openai_spec_curl_args, llm.handle_openai_spec_data)
      end
      vim.keymap.set('n', '<leader>lp', openai_help, { desc = 'llm: [l]lm [p]rompt' })
      vim.keymap.set('v', '<leader>lp', openai_help, { desc = 'llm: [l]lm [p]rompt' })
      vim.keymap.set('v', '<leader>lr', openai_replace, { desc = 'llm: [l]lm [r]eplace' })
    end,
  },
}
