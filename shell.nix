{
  cmake,
  pkg-config,
  mkShell,

  freeglut,
  libGLU,
  libGL,
  glew,
  glfw,

  xorg,
}:
mkShell {
  shellHook = ''
    export NIX_ENFORCE_NO_NATIVE=
  '';
  nativeBuildInputs = [
    cmake
    pkg-config
  ];
  buildInputs = [
    freeglut
    libGLU
    libGL
    glew
    glfw

    xorg.libX11.dev
    xorg.libXft
    xorg.libXinerama
    xorg.libXrandr
    xorg.libXcursor
    xorg.libXcursor
    xorg.libXi
  ];
}
