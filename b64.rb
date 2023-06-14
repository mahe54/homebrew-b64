class B64 < Formula
  desc "b64 is a base64 encoder/decoder"
  homepage "https://github.com/mahe54/b64"

  on_macos do
    url "https://github.com/mahe54/b64/releases/download/v0.0.5/b64-darwin-amd64.tar.gz"
    sha256 "22bc229f5f1e16277697e2f3ddf07ff322e8d920acd49e83f70d664e7826238b"
  end

  on_linux do
    url "https://github.com/mahe54/b64/releases/download/v0.0.5/b64-linux-amd64.tar.gz"
    sha256 "54dcfb33bbf7c72f1a3cd1a698efdfa2a12316e59c936716ff2c680b8d6fd60d"
  end

  def install
    if OS.mac?
        bin.install "b64-darwin-amd64" => "b64"
    elsif OS.linux?
        bin.install "b64-linux-amd64" => "b64"
    end
  end

  test do
    system "#{bin}/b64", "--version"
  end
end
