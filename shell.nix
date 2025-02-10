let
  pkgs = import <nixpkgs> {
    channel = "https://nixos.org/channels/nixos-unstable";
    # Optional: Pin to a specific commit for better reproducibility.
    # Un-comment and update this regularly for more recent packages:
    # rev = "some-git-commit-sha"; 
  };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    n8n
    nodejs_22
  ];


  shellHook = ''
    export N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
    export N8N_HOST=192.168.86.248 \
    export N8N_SECURE_COOKIE=false
  '';
}
