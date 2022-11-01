#!/bin/sh -e
RESTIC_REPOSITORY="$(cat .secrets/restic-config/repository)"
export RESTIC_REPOSITORY
AWS_ACCESS_KEY_ID="$(cat .secrets/restic-secret/access_key_id)"
export AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY="$(cat .secrets/restic-secret/secret_access_key)"
export AWS_SECRET_ACCESS_KEY
RESTIC_PASSWORD="$(cat .secrets/restic-secret/password)"
export RESTIC_PASSWORD

restic unlock --remove-all
