# RSSCT — Richer Simulations Scenery Configuration Tool

A Windows desktop installer and configuration utility (Delphi/Pascal) for managing [Richer Simulations](https://richersimulations.com) X-Plane/P3D/MSFS scenery packages. Shipped to end users as part of scenery product releases.

## What it does

Scenery packages require integration with several third-party systems (SODE, ACM, sim config files) and need to handle multiple simulator versions. RSSCT automates all of this for the end user.

- Detects installed sim versions and locates their install paths
- Detects installed Richer Simulations products
- Installs and configures SODE (Scenery Object Display Engine) XML files for animated jetways and objects
- Installs and configures ACM (Autogen Configuration Merger) integration
- Manages street lighting and traffic speed toggles per-product
- Handles HD texture switching
- Provides Third Party Addon compatibility toggles
- Supports legacy patch installation for older product versions
- Sends user feedback via email
- Auto-updates via HTTP version checking
- Writes configuration state to registry

## Tech stack

- Delphi (Object Pascal) — VCL desktop application
- Windows Registry for state persistence
- HTTP client for version checking
- RSCommon — shared utility library

## Dependencies

- RSCommon — shared utility library (see [RSCommon](https://github.com/zevrichards/RSCommon))

## Building

Open `RSSCT.dproj` in Embarcadero Delphi (tested on Delphi 11 Alexandria). Ensure RSCommon is on your library path.
