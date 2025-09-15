#!/usr/bin/env bash

echo "=> Updating Checksum."
updpkgsums

echo "=> Updating .SRCINFO."
makepkg --printsrcinfo > .SRCINFO

echo "=> Staging Changes."
git add .SRCINFO PKGBUILD release.sh README.md

echo "=> Pushing Changes, Please Enter Commit Message:"
git commit

git push origin
git push github


echo -e "\n==> Done."
