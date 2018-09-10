class BraveBrowser < Formula
    desc "Brave browser for Desktop and Laptop computers running Windows, OSX, and Linux."
    homepage "https://github.com/brave/browser-laptop"
    version "0.23.105"

    url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave.tar.bz2"
    sha256 "658e76c7d48d0403c1df6ed192637af9d1a4b89d5aa0b3f8fa6b81291a3f514d"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/brave" => "brave")
    end

    def caveats; <<~EOS
        Executable is linked as "brave".
        EOS
    end
end
