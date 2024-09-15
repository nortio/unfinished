{ pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
	nativeBuildInputs = with pkgs.buildPackages; [
		pkg-config
		clang-tools_18
		clang_18
		gnumake
		bear
		gcc14
	];
	buildInputs = with pkgs; [
		SDL2.dev
		SDL2_ttf
	];
}
