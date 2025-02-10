FROM nixos/nix:latest

COPY shell.nix /app/

WORKDIR /app

ENV NIXPKGS_ALLOW_UNFREE=1

RUN nix-shell

EXPOSE 5678

CMD ["nix-shell", "--command", "n8n"]
