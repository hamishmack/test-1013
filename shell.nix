let project = import ./.;
in project.shellFor { packages = ps: [ ps.bar ]; }
