class Lm4tools < Formula
    desc "Tools to enable multi-platform development on the TI Stellaris Launchpad boards"
    homepage "https://github.com/utzig/lm4tools"
    url "https://github.com/utzig/lm4tools/archive/v0.1.3.tar.gz"
    sha256 "e8064ace3c424b429b7e0b50e58b467d8ed92962b6a6dfa7f6a39942416b1627"
    head "https://github.com/utzig/lm4toolsm"
    version "0.1.3"

    depends_on "ArmMbed/homebrew-formulae/arm-none-eabi-gcc"
    depends_on "pkg-config"
    depends_on "libusb"

    def install
        system "make", "-j#{`sysctl -n hw.logicalcpu`.chomp}"
        system "make", "install", "PREFIX=#{prefix}"
    end
end