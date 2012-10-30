eZ Publish 5 REST API scripts
=============================

This is a collection of scripts to help test the REST API v2 introduced with eZ Publish 5. It contains scripts for most of the features available, both in XML and JSON variants.

Requirements
------------

To run these scripts, you need two things:
  - Fully installed and configured eZ Publish 5 - [GitHub repository](https://github.com/ezsystems/ezpublish5)
  - HTTPie - a command line HTTP client - [GitHub repository](https://github.com/jkbr/httpie)

These scripts are based on clean install of eZ Publish 5 with eZ Demo package with demo content and with eng-GB translation available. Scripts in each folder are ordered in a way that will allow each of them to be executed successfully if executed in that specific order. However, scripts in different folders are completely independent of one another, so before executing scripts in different folders, you should ensure that you have the database in clean install state.

Installation instructions
-------------------------

  - Clone this repo
  - Copy rest.cfg.example to rest.cfg in the root folder of the repo
  - Edit rest.cfg and configure the path to your eZ Publish 5 installation, admin username & password
  - You're done! You can now run the scripts from the shell
