local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-oniro4openharmony') {
  settings+: {
    description: "",
    name: "Eclipse Oniro for OpenHarmony",
    web_commit_signoff_required: false,
  },
  secrets: [
    orgs.newOrgSecret('ONIRO_APP_SIGNATURE_ZIP') {
      value: "pass:bots/oniro.oniro4openharmony/github.com/app-signature-zip",
    },
  ],
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
      description: "Oniro Documentation",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "main",
      gh_pages_source_path: "/",
      homepage: "https://docs.oniroproject.org/",
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
      default_branch: "OpenHarmony-4.1-Release",
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
    orgs.newRepo('app-wikipedia') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "Wikipedia application for Oniro",
      homepage: "",
    },
    orgs.newRepo('app-discord') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "Discord application for Oniro",
      homepage: "",
    },
    orgs.newRepo('app-youtube') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "YouTube application for Oniro",
      homepage: "",
    },
    orgs.newRepo('app-gmail') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "Gmail application for Oniro",
      homepage: "",
    },
    orgs.newRepo('app-duolingo') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "Duolingo application for Oniro",
      homepage: "",
    },
    orgs.newRepo('device_board_rpi') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "OpenHarmony-4.1-Release",
      description: "Raspberry Pi 4B board support packages for Oniro - Fork of https://gitee.com/openharmony-sig/device_board_rpi",
      homepage: "",
      auto_init: false,
    },
    orgs.newRepo('vendor_iscas') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "OpenHarmony-4.1-Release",
      description: "Raspberry Pi 4B vendor support packages for Oniro - Fork of https://gitee.com/openharmony-sig/vendor_iscas",
      homepage: "",
      auto_init: false,
    },
    orgs.newRepo('device_soc_broadcom') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "OpenHarmony-4.1-Release",
      description: "Raspberry Pi soc support packages for Oniro - Fork of https://gitee.com/openharmony-sig/device_soc_broadcom",
      homepage: "",
      auto_init: false,
    },
    orgs.newRepo('oniro-planning') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "Oniro development planning",
      homepage: "",
    },
    orgs.newRepo('device_board_oniro') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "OpenHarmony-4.1-Release",
      description: "Oniro board support packages",
      homepage: "",
      auto_init: false,
    },
    orgs.newRepo('vendor_oniro') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "OpenHarmony-4.1-Release",
      description: "Oniro vendor support packages",
      homepage: "",
      auto_init: false,
    },
    orgs.newRepo('device_soc_oniro') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "OpenHarmony-4.1-Release",
      description: "Oniro soc support packages",
      homepage: "",
      auto_init: false,
    },
    orgs.newRepo('app-math_practice_demo') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "An application for math problems practice",
      homepage: "",
    },
    orgs.newRepo('app-TimeAroundWorld') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "Time Around The World: An app showcasing multi-timezone clocks",
      homepage: "",
    },
    orgs.newRepo('app-GuessNumber') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "An interactive number guessing game application",
      homepage: "",
    },
    orgs.newRepo('app-SuperBrightFlashlight') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "Oniro flashlight application",
      homepage: "",
    },
    orgs.newRepo('app-WaterTracker') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "App that tracks your water intake, allowing the user to follow their hydration levels.",
      homepage: "",
    },
    orgs.newRepo('app-Magic8Ball') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "A simulation of the Magic 8 ball - ask a yes/no question, press the button and you will receive an answer.",
      homepage: "",
    },
    orgs.newRepo('app-QuoteOfTheDay') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "Get an inspirational quote with the push of a button",
      homepage: "",
    },
    orgs.newRepo('app-MyList') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "An application to help you quickly organize and track items to buy or bring, so you never forget anything.",
      homepage: "",
    },
    orgs.newRepo('app-bmicalculator') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "A straightforward application that calculates Body Mass Index (BMI) based on user-input height and weight. This tool provides instant BMI results along with corresponding weight status categories, making it a handy resource for health and fitness tracking.",
      homepage: "",
    },
    orgs.newRepo('app-unitconverter') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "A simple, user-friendly application designed to convert between various units of measurement. This tool supports a wide range of unit categories, including length, weight, volume, and temperature, providing quick and accurate conversions for everyday use.",
      homepage: "",
    },
    orgs.newRepo('app-ThrowTheDice') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "main",
      description: "Throw the dice is a simple example of helper app for RPG / boardgames",
      homepage: "",
    },
  ],
}
