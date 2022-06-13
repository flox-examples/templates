{
  description = "Template for Channels";
  
  inputs.projects.url = "path:./projects";
  inputs.projects.inputs.capacitor.follows = "capacitor";
  
  outputs = { capacitor, ... } @ args: capacitor args ( {lib, auto,...}: 
    let projects = auto.callSubflake "projects" {};
    in
    auto.callPackageWith ./flox.nix { inputs = { inherit projects; }; } {}
  );
}
