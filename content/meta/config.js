const colors = require("../../src/styles/colors");

module.exports = {
  siteTitle: "Med Mouine personal blog", // <title>
  shortSiteTitle: "Med Mouine", // <title> ending for posts and pages
  siteDescription:
    "Med Mouine is a Devops / Software engineer. This is his personal blog where you can find his latest articles, contact information and other",
  siteUrl: "https://med.codes",
  pathPrefix: "",
  siteImage: "preview.png",
  siteLanguage: "en",
  // author
  authorName: "Med Mouine",
  authorTwitterAccount: "@yoyoman42_",
  // info
  infoTitle: "Med Mouine",
  infoTitleNote: "personal blog",
  // manifest.json
  manifestName: "Med Mouine personal blog",
  manifestShortName: "medcodes", // max 12 characters
  manifestStartUrl: "/",
  manifestBackgroundColor: colors.background,
  manifestThemeColor: colors.background,
  manifestDisplay: "standalone",
  // contact
  contactEmail: "me@med.codes",
  // social
  authorSocialLinks: [
    { name: "github", url: "https://github.com/medmouine" },
    { name: "twitter", url: "https://twitter.com/yoyoman42_" },
    { name: "linkedin", url: "https://www.linkedin.com/in/medmouine/" }
  ]
};
