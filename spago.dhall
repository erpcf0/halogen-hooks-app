{ name = "halogen-project"
, dependencies =
  [ "console", "effect", "halogen", "halogen-hooks", "psci-support" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
