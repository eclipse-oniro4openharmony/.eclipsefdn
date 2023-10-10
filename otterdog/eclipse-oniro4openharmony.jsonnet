local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-oniro4openharmony') {
  settings+: {
    default_repository_permission: "none",
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
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
  ],
}
