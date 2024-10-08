{
  lib,
  config,
  pkgs,
  ...
}:

lib.mkIf config.optional.dev.helix {
  programs.helix = {
    enable = true;
    catppuccin.enable = true;
    settings = {
      editor = {
        line-number = "relative";
        bufferline = "multiple";
        gutters = [
          "diff"
          "diagnostics"
          "line-numbers"
          "spacer"
        ];
        idle-timeout = 100;
        auto-save = false;
        mouse = false;
        indent-guides.render = true;
        cursorline = true;
        true-color = true;
        color-modes = true;
        soft-wrap.enable = true;
        lsp = {
          display-inlay-hints = true;
          display-messages = true;
        };
        cursor-shape = {
          insert = "bar";
        };
      };

      keys.normal = {
        C-s = ":w";
        C-q = ":q";
        L = ":bn";
        H = ":bp";
        C-x = ":bc";
        space.l.f = ":fmt";
        space."." = "file_picker";
        space."," = "buffer_picker";
      };
    };

    languages = {
      language = [
        {
          name = "nix";
          auto-format = true;
          formatter = {
            command = "nixpkgs-fmt";
          };
          language-servers = [
            "nil"
            "codeium"
          ];
        }
        {
          name = "rust";
          language-servers = [ "rust-analyzer" ];
        }
        {
          name = "zig";
          language-servers = [
            "zls"
            "codeium"
          ];
        }
      ];

      language-server = with pkgs; {
        # copilot = {
        #   command = "${helix-gpt}/bin/helix-gpt";
        #   args = [
        #     "--handler"
        #     "copilot"
        #     "--copilotApiKey"
        #     "${github_copilot."github.com"."oauth_token"}"
        #   ];
        # };
        codeium = {
          command = "${helix-gpt}/bin/helix-gpt";
          args = [
            "--handler"
            "codeium"
          ];
        };
        rust-analyzer.config = {
          imports = {
            granularity = {
              group = "module";
            };
            prefix = "self";
          };
          cargo = {
            allReatures = true;
            targetDir = true;
            buildScripts = {
              enable = true;
            };
            loadOutDirsFromCheck = true;
            runBuildScripts = true;
          };
          check = {
            command = "clippy";
            allTargets = false;
          };
          procMacro = {
            enable = true;
          };
        };
      };
    };
  };
}
