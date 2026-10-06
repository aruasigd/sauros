{
 description = "saurOS";
 
 inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
 
 outputs = { self, nixpkgs }:
   let
     mk = extras: nixpkgs.lib.nixosSystem {
       system = "x86_64-linux";
       modules = [ ./configuration.nix ] ++ extras;
   };
 in {
   nixosConfigurations = {
     nixos = mk [ ./video.nix ];
     video = mk [ ./video.nix ];
     musica = mk [ ./musica.nix ];
     jogos = mk [ ./jogos.nix ];
    };
   };

}
 
