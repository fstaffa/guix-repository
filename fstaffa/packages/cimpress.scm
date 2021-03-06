(define-module (fstaffa packages cimpress)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy)
  #:use-module (guix licenses))

(define-public stskeygen
  (package
   (name "stskeygen")
   (version "2.2.6")
   (source
    (origin
     (method url-fetch/tarbomb)
     (file-name "stskeygen")
     (uri (string-append "https://ce-installation-binaries.s3.amazonaws.com/stskeygen/" version "/stskeygen_" version "_Linux_x86_64.tar.gz"))
     (sha256
      (base32 "0ws1dlv6r7dxzmwxzj5zlscfzjvpvg84aqpqfn14zybhmpd4pkdd"))))

   (build-system copy-build-system)
   (arguments
    `(#:install-plan
      `(("stskeygen" "bin/"))))
   (synopsis "Stskeygen")
   (description "Stskeygen")
   (home-page "https://support.cimpress.cloud/hc/en-us/articles/360049195674-stskeygen")
   (license asl2.0)))
