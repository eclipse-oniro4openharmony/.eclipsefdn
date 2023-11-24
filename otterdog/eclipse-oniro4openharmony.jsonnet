local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-oniro4openharmony') {
  settings+: {
    description: "",
    members_can_change_project_visibility: false,
    name: "Eclipse Oniro for OpenHarmony",
    packages_containers_internal: false,
    packages_containers_public: false,
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
      default_branch: "OpenHarmony-3.2-Release",
    },
  ],
}
