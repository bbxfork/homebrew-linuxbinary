class Nwjs < Formula
    desc "NW.js (previously known as node-webkit) lets you call all Node.js modules directly from DOM and enables a new way of writing applications with all Web technologies. This is the normal version."
    homepage "https://nwjs.io/"
    version "0.26.0"

    url "https://dl.nwjs.io/v#{version}/nwjs-v#{version}-linux-x64.tar.gz"
    sha256 "b812f7ec58a983079d86cc6ce36800fb3891b20939be57e3b948c3f33608b733"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/nw")
    end

    def caveats; <<~EOS
        Chromium 62 + Node 8.7.0
        EOS
    end
end
