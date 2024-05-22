local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-oniro4openharmony') {
  settings+: {
    description: "",
    name: "Eclipse Oniro for OpenHarmony",
    web_commit_signoff_required: false,
  },
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('eclipse-oniro4openharmony.github.io') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "main",
      gh_pages_source_path: "/",
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "main"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('manifest') {
      allow_auto_merge: true,
      allow_update_branch: false,
      default_branch: "OpenHarmony-4.0-Release",
    },
    orgs.newRepo('oniro-ide') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      has_wiki: false,
      squash_merge_commit_message: "BLANK",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          required_approving_review_count: 0,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('third_party_kanto') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      description: "Kanto integration for Oniro ",
      homepage: "",
    },
    orgs.newRepo('third_party_mosquitto') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "oniro",
      description: "Fork of Eclipse Mosquitto for Oniro integration",
      homepage: "",
    },
    orgs.newRepo('f-oh') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "oniro",
      description: "Fork of F-OH application store for Oniro",
      homepage: "",
    },
    orgs.newRepo('f-oh-data') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "oniro",
      description: "Fork of F-OH backend for Oniro",
      homepage: "",
    },
  ],
}
