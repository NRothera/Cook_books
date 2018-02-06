# node

## Cookbook

This cookbook installs node onto your machine. It also installs nginx and redirects calls to port :80 from localhost:3000.

## Usage

Install the correct version of chef at https://downloads.chef.io/chef-server.

Run the following commands in your terminal

```bash
kitchen create
kitchen converge
```

To verify the installation was successful, run ```kitchen verify```
