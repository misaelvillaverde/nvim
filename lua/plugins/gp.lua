return {
  {
    "robitx/gp.nvim",
    config = function()
      local conf = {
        providers = {
          openai = {
            disable = true,
          },
          openrouter = {
            endpoint = "https://openrouter.ai/api/v1/chat/completions",
            secret = os.getenv("OPENROUTER_GP_API") or { "rbw", "get", "OPENROUTER_GP_API" },
          },
          groq = {
            endpoint = "https://api.groq.com/openai/v1/chat/completions",
            secret = os.getenv("GROQ_API_KEY") or { "rbw", "get", "GROQ_API_KEY" },
          },
          hyperbolic = {
            endpoint = "https://api.hyperbolic.xyz/v1/chat/completions",
            secret = os.getenv("HYPERBOLIC_API_KEY") or { "rbw", "get", "HYPERBOLIC_API_KEY" },
          },
        },
        agents = {
          {
            provider = "openrouter",
            name = "or-gemini",
            model = { model = "google/gemini-2.0-flash-001", temperature = 0.1, top_p = 1 },
            chat = true,
            command = true,
            -- system_prompt = require("gp.defaults").chat_system_prompt,
            system_prompt = "You are an AI working as a code editor.\n\n"
                .. "before providing an answer, check the appropriate documentation.\n"
                .. "do not rely on your memory and always provide reference to the place you found the relevant info.\n"
                .. "then ask yourself - am I correct? reconsider your answer.\n"
                .. "present your answer only when you see no room for improvement.\n"
                .. "Please AVOID COMMENTARY OUTSIDE OF THE SNIPPET RESPONSE.\n"
                .. "START AND END YOUR ANSWER WITH:\n\n```"
          },
          {
            provider = "openrouter",
            name = "or-claude",
            model = { model = "anthropic/claude-3.5-sonnet", temperature = 0.1, top_p = 1 },
            chat = true,
            command = true,
            system_prompt = "You are an AI working as a code editor.\n\n"
                .. "before providing an answer, check the appropriate documentation.\n"
                .. "do not rely on your memory and always provide reference to the place you found the relevant info.\n"
                .. "then ask yourself - am I correct? reconsider your answer.\n"
                .. "present your answer only when you see no room for improvement.\n"
                .. "Please AVOID COMMENTARY OUTSIDE OF THE SNIPPET RESPONSE.\n"
                .. "START AND END YOUR ANSWER WITH:\n\n```"
          },
          {
            provider = "openrouter",
            name = "or-deepseek",
            model = { model = "deepseek/deepseek-r1:free", temperature = 0.1, top_p = 1 },
            chat = true,
            command = true,
            system_prompt = "You are an AI working as a code editor.\n\n"
                .. "before providing an answer, check the appropriate documentation.\n"
                .. "do not rely on your memory and always provide reference to the place you found the relevant info.\n"
                .. "then ask yourself - am I correct? reconsider your answer.\n"
                .. "present your answer only when you see no room for improvement.\n"
                .. "Please provide extensive explanation both of the reasoning and the code\n"
                .. "START AND END YOUR ANSWER WITH:\n\n```"
          },
          {
            provider = "groq",
            name = "gq-deepseek",
            model = { model = "deepseek-r1-distill-llama-70b", temperature = 0.1, top_p = 1 },
            chat = true,
            command = true,
            system_prompt = "You are an AI working as a code editor.\n\n"
                .. "before providing an answer, check the appropriate documentation.\n"
                .. "do not rely on your memory and always provide reference to the place you found the relevant info.\n"
                .. "then ask yourself - am I correct? reconsider your answer.\n"
                .. "present your answer only when you see no room for improvement.\n"
                .. "Please provide extensive explanations both of the reasoning and the code\n"
                .. "START AND END YOUR ANSWER WITH:\n\n```"
          },
          {
            provider = "hyperbolic",
            name = "hy-deepseek",
            model = { model = "deepseek-ai/DeepSeek-R1-Zero", temperature = 0.1, top_p = 1 },
            chat = true,
            command = true,
            system_prompt = "You are an AI working as a code editor.\n\n"
                .. "before providing an answer, check the appropriate documentation.\n"
                .. "do not rely on your memory and always provide reference to the place you found the relevant info.\n"
                .. "then ask yourself - am I correct? reconsider your answer.\n"
                .. "present your answer only when you see no room for improvement.\n"
                .. "Please provide extensive explanations both of the reasoning and the code\n"
                .. "START AND END YOUR ANSWER WITH:\n\n```"
          },
        },
      }
      require("gp").setup(conf)
    end,
  }
}
