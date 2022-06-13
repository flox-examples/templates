{ inputs, auto }:
  
{
  ############################################
  #          Channel Configuration           #
  ############################################

  __reflect.projects = inputs.projects;
  __reflect.adopted = inputs.adopted;


  ############################################
  #    Channel Re-Exports and Definitions    #
  ############################################

  packages = (auto.localPkgs ./.) // {};

  apps = {};

  devShells = {};

  lib = {};

}
