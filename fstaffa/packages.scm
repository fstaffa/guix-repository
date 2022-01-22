(define-module (fstaffa packages cimpress)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy)
  #:use-module (guix licenses))

(define-public stskeygen
  (package
   (name "stskeygen")
   (version "2.2.4")
   (source
    (origin
     (method url-fetch/tarbomb)
     (file-name "stskeygen")
     (uri (string-append "https://ce-installation-binaries.s3.amazonaws.com/stskeygen/" version "/stskeygen_" version "_Linux_x86_64.tar.gz"))
     (sha256
      (base32 "11dq4hqrv5kl0dwmgrkhxj0x9crnm9zqv2ynv9cxawmbr2h6gjvk"))))

   (build-system copy-build-system)
   (arguments
    `(#:install-plan
      `(("stskeygen" "bin/"))))
   (synopsis "Stskeygen")
   (description "Stskeygen")
   (home-page "https://www.gnu.org/software/hello/")
   (license asl2.0)))
