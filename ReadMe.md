# Vision-cli dev environment

This repository contains the current vision cli, libraries, and plugins as submodules.
It is intended to allow a single checkout to provide all the required projects to work
on the core vision-cli components.

## Go workspace

A Go workspace configuration is provided to unify all the parts of the vision-cli system
into a single project.

## Unified development workflow with `vision_dev`

If the `vision_dev` build tag is provided to the `vision` submodule, which builds the main
cli tool, then the build will pull all the plugin modules into the main cli executable.
This configuration runs the plugins inside the main process, allowing for the plugin to be
run and debugged using a normal IDE or other debugging tool, without having to deal with
separate executables that are invoked by the main cli executable.

Any plugins that are defined as internal will override and shadow plugin executables that are
already installed on the developers system.
Any installed plugins that are not shadowed by internal plugins are still available as normal.

The list of internal plugins is found in `vision/plugins/plugins_dev.go`.
