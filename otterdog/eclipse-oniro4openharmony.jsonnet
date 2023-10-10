local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-oniro4openharmony') {
  settings+: {
    default_repository_permission: "none",
    description: "",
    members_can_change_project_visibility: false,
    members_can_change_repo_visibility: false,
    members_can_create_private_repositories: false,
    members_can_create_public_repositories: false,
    members_can_create_teams: false,
    members_can_delete_repositories: false,
    name: "Eclipse Oniro for OpenHarmony",
    packages_containers_internal: false,
    packages_containers_public: false,
    web_commit_signoff_required: false,
  },
}
