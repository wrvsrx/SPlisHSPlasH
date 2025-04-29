{
  cmake,
  pkg-config,
  mkShell,
  llvmPackages,

  freeglut,
  libGLU,
  libGL,
  glew,
  glfw,

  xorg,
}:
mkShell.override { inherit (llvmPackages) stdenv; } {
  shellHook = ''
    export NIX_ENFORCE_NO_NATIVE=
  '';
  nativeBuildInputs = [
    cmake
    pkg-config
    llvmPackages.clang-tools
  ];
  buildInputs = [
    llvmPackages.openmp

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
