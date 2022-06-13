{
  
  description = "A very basic flake";

  inputs.capacitor.url = "git+ssh://git@github.com/flox/minicapacitor?ref=main&dir=capacitor";
  inputs.capacitor.inputs.root.follows = "/";
  
  outputs = { capacitor, ... }: {
    templates = builtins.mapAttrs (k: v: {
      path = v.path;
      description = (import "${v.path}/flake.nix").description or "no description provided in ${v.path}/flake.nix";
    }) ( capacitor.lib.dirToAttrs ./templates {} );
  };
}
