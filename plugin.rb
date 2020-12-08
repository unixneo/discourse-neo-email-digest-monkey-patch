# frozen_string_literal: true

# name: discourse-neo-email-digest-monkey-patch
# about: change default behavior of email digests job scheduler
# version: 0.0.11
# date: 8 December 2020
# authors: Neo
# url: https://github.com/unixneo/discourse-neo-email-digest-monkey-patch

PLUGIN_NAME = "discourse-neo-email-digest-monkey-patch"

after_initialize do
  load File.expand_path("../app/jobs/scheduled/monkey_patch_enqueue_digest_emails.rb", __FILE__)
end
