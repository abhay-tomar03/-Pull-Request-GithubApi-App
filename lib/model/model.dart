// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

List<PostModel> postModelFromJson(String str) =>
    List<PostModel>.from(json.decode(str).map((x) => PostModel.fromJson(x)));

String postModelToJson(List<PostModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostModel {
  PostModel({
    required this.url,
    required this.id,
    required this.nodeId,
    required this.htmlUrl,
    required this.diffUrl,
    required this.patchUrl,
    required this.issueUrl,
    required this.number,
    required this.state,
    required this.locked,
    required this.title,
    required this.user,
    this.body,
    required this.createdAt,
    required this.updatedAt,
    required this.closedAt,
    required this.mergedAt,
    required this.mergeCommitSha,
    this.assignee,
    required this.assignees,
    required this.requestedReviewers,
    required this.requestedTeams,
    required this.labels,
    this.milestone,
    required this.draft,
    required this.commitsUrl,
    required this.reviewCommentsUrl,
    required this.reviewCommentUrl,
    required this.commentsUrl,
    required this.statusesUrl,
    required this.head,
    required this.base,
    required this.links,
    required this.authorAssociation,
    this.autoMerge,
    this.activeLockReason,
  });

  String url;
  int id;
  String nodeId;
  String htmlUrl;
  String diffUrl;
  String patchUrl;
  String issueUrl;
  int number;
  String state;
  bool locked;
  String title;
  User user;
  String? body;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime closedAt;
  DateTime mergedAt;
  String mergeCommitSha;
  dynamic assignee;
  List<dynamic> assignees;
  List<dynamic> requestedReviewers;
  List<dynamic> requestedTeams;
  List<dynamic> labels;
  dynamic milestone;
  bool draft;
  String commitsUrl;
  String reviewCommentsUrl;
  String reviewCommentUrl;
  String commentsUrl;
  String statusesUrl;
  Base head;
  Base base;
  Links links;
  String authorAssociation;
  dynamic autoMerge;
  dynamic activeLockReason;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        url: json["url"],
        id: json["id"],
        nodeId: json["node_id"],
        htmlUrl: json["html_url"],
        diffUrl: json["diff_url"],
        patchUrl: json["patch_url"],
        issueUrl: json["issue_url"],
        number: json["number"],
        state: json["state"],
        locked: json["locked"],
        title: json["title"],
        user: User.fromJson(json["user"]),
        body: json["body"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        closedAt: DateTime.parse(json["closed_at"]),
        mergedAt: DateTime.parse(json["merged_at"]),
        mergeCommitSha: json["merge_commit_sha"],
        assignee: json["assignee"],
        assignees: List<dynamic>.from(json["assignees"].map((x) => x)),
        requestedReviewers:
            List<dynamic>.from(json["requested_reviewers"].map((x) => x)),
        requestedTeams:
            List<dynamic>.from(json["requested_teams"].map((x) => x)),
        labels: List<dynamic>.from(json["labels"].map((x) => x)),
        milestone: json["milestone"],
        draft: json["draft"],
        commitsUrl: json["commits_url"],
        reviewCommentsUrl: json["review_comments_url"],
        reviewCommentUrl: json["review_comment_url"],
        commentsUrl: json["comments_url"],
        statusesUrl: json["statuses_url"],
        head: Base.fromJson(json["head"]),
        base: Base.fromJson(json["base"]),
        links: Links.fromJson(json["_links"]),
        authorAssociation: json["author_association"],
        autoMerge: json["auto_merge"],
        activeLockReason: json["active_lock_reason"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "id": id,
        "node_id": nodeId,
        "html_url": htmlUrl,
        "diff_url": diffUrl,
        "patch_url": patchUrl,
        "issue_url": issueUrl,
        "number": number,
        "state": state,
        "locked": locked,
        "title": title,
        "user": user.toJson(),
        "body": body,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "closed_at": closedAt.toIso8601String(),
        "merged_at": mergedAt.toIso8601String(),
        "merge_commit_sha": mergeCommitSha,
        "assignee": assignee,
        "assignees": List<dynamic>.from(assignees.map((x) => x)),
        "requested_reviewers":
            List<dynamic>.from(requestedReviewers.map((x) => x)),
        "requested_teams": List<dynamic>.from(requestedTeams.map((x) => x)),
        "labels": List<dynamic>.from(labels.map((x) => x)),
        "milestone": milestone,
        "draft": draft,
        "commits_url": commitsUrl,
        "review_comments_url": reviewCommentsUrl,
        "review_comment_url": reviewCommentUrl,
        "comments_url": commentsUrl,
        "statuses_url": statusesUrl,
        "head": head.toJson(),
        "base": base.toJson(),
        "_links": links.toJson(),
        "author_association": authorAssociation,
        "auto_merge": autoMerge,
        "active_lock_reason": activeLockReason,
      };
}

class Base {
  Base({
    required this.label,
    required this.ref,
    required this.sha,
    required this.user,
    required this.repo,
  });

  String label;
  String ref;
  String sha;
  User user;
  Repo repo;

  factory Base.fromJson(Map<String, dynamic> json) => Base(
        label: json["label"],
        ref: json["ref"],
        sha: json["sha"],
        user: User.fromJson(json["user"]),
        repo: Repo.fromJson(json["repo"]),
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "ref": ref,
        "sha": sha,
        "user": user.toJson(),
        "repo": repo.toJson(),
      };
}

class Repo {
  Repo({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.fullName,
    required this.private,
    required this.owner,
    required this.htmlUrl,
    this.description,
    required this.fork,
    required this.url,
    required this.forksUrl,
    required this.keysUrl,
    required this.collaboratorsUrl,
    required this.teamsUrl,
    required this.hooksUrl,
    required this.issueEventsUrl,
    required this.eventsUrl,
    required this.assigneesUrl,
    required this.branchesUrl,
    required this.tagsUrl,
    required this.blobsUrl,
    required this.gitTagsUrl,
    required this.gitRefsUrl,
    required this.treesUrl,
    required this.statusesUrl,
    required this.languagesUrl,
    required this.stargazersUrl,
    required this.contributorsUrl,
    required this.subscribersUrl,
    required this.subscriptionUrl,
    required this.commitsUrl,
    required this.gitCommitsUrl,
    required this.commentsUrl,
    required this.issueCommentUrl,
    required this.contentsUrl,
    required this.compareUrl,
    required this.mergesUrl,
    required this.archiveUrl,
    required this.downloadsUrl,
    required this.issuesUrl,
    required this.pullsUrl,
    required this.milestonesUrl,
    required this.notificationsUrl,
    required this.labelsUrl,
    required this.releasesUrl,
    required this.deploymentsUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.pushedAt,
    required this.gitUrl,
    required this.sshUrl,
    required this.cloneUrl,
    required this.svnUrl,
    this.homepage,
    required this.size,
    required this.stargazersCount,
    required this.watchersCount,
    this.language,
    required this.hasIssues,
    required this.hasProjects,
    required this.hasDownloads,
    required this.hasWiki,
    required this.hasPages,
    required this.hasDiscussions,
    required this.forksCount,
    this.mirrorUrl,
    required this.archived,
    required this.disabled,
    required this.openIssuesCount,
    this.license,
    required this.allowForking,
    required this.isTemplate,
    required this.webCommitSignoffRequired,
    required this.topics,
    required this.visibility,
    required this.forks,
    required this.openIssues,
    required this.watchers,
    required this.defaultBranch,
  });

  int id;
  String nodeId;
  String name;
  String fullName;
  bool private;
  User owner;
  String htmlUrl;
  dynamic description;
  bool fork;
  String url;
  String forksUrl;
  String keysUrl;
  String collaboratorsUrl;
  String teamsUrl;
  String hooksUrl;
  String issueEventsUrl;
  String eventsUrl;
  String assigneesUrl;
  String branchesUrl;
  String tagsUrl;
  String blobsUrl;
  String gitTagsUrl;
  String gitRefsUrl;
  String treesUrl;
  String statusesUrl;
  String languagesUrl;
  String stargazersUrl;
  String contributorsUrl;
  String subscribersUrl;
  String subscriptionUrl;
  String commitsUrl;
  String gitCommitsUrl;
  String commentsUrl;
  String issueCommentUrl;
  String contentsUrl;
  String compareUrl;
  String mergesUrl;
  String archiveUrl;
  String downloadsUrl;
  String issuesUrl;
  String pullsUrl;
  String milestonesUrl;
  String notificationsUrl;
  String labelsUrl;
  String releasesUrl;
  String deploymentsUrl;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime pushedAt;
  String gitUrl;
  String sshUrl;
  String cloneUrl;
  String svnUrl;
  dynamic homepage;
  int size;
  int stargazersCount;
  int watchersCount;
  dynamic language;
  bool hasIssues;
  bool hasProjects;
  bool hasDownloads;
  bool hasWiki;
  bool hasPages;
  bool hasDiscussions;
  int forksCount;
  dynamic mirrorUrl;
  bool archived;
  bool disabled;
  int openIssuesCount;
  dynamic license;
  bool allowForking;
  bool isTemplate;
  bool webCommitSignoffRequired;
  List<dynamic> topics;
  String visibility;
  int forks;
  int openIssues;
  int watchers;
  String defaultBranch;

  factory Repo.fromJson(Map<String, dynamic> json) => Repo(
        id: json["id"],
        nodeId: json["node_id"],
        name: json["name"],
        fullName: json["full_name"],
        private: json["private"],
        owner: User.fromJson(json["owner"]),
        htmlUrl: json["html_url"],
        description: json["description"],
        fork: json["fork"],
        url: json["url"],
        forksUrl: json["forks_url"],
        keysUrl: json["keys_url"],
        collaboratorsUrl: json["collaborators_url"],
        teamsUrl: json["teams_url"],
        hooksUrl: json["hooks_url"],
        issueEventsUrl: json["issue_events_url"],
        eventsUrl: json["events_url"],
        assigneesUrl: json["assignees_url"],
        branchesUrl: json["branches_url"],
        tagsUrl: json["tags_url"],
        blobsUrl: json["blobs_url"],
        gitTagsUrl: json["git_tags_url"],
        gitRefsUrl: json["git_refs_url"],
        treesUrl: json["trees_url"],
        statusesUrl: json["statuses_url"],
        languagesUrl: json["languages_url"],
        stargazersUrl: json["stargazers_url"],
        contributorsUrl: json["contributors_url"],
        subscribersUrl: json["subscribers_url"],
        subscriptionUrl: json["subscription_url"],
        commitsUrl: json["commits_url"],
        gitCommitsUrl: json["git_commits_url"],
        commentsUrl: json["comments_url"],
        issueCommentUrl: json["issue_comment_url"],
        contentsUrl: json["contents_url"],
        compareUrl: json["compare_url"],
        mergesUrl: json["merges_url"],
        archiveUrl: json["archive_url"],
        downloadsUrl: json["downloads_url"],
        issuesUrl: json["issues_url"],
        pullsUrl: json["pulls_url"],
        milestonesUrl: json["milestones_url"],
        notificationsUrl: json["notifications_url"],
        labelsUrl: json["labels_url"],
        releasesUrl: json["releases_url"],
        deploymentsUrl: json["deployments_url"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        pushedAt: DateTime.parse(json["pushed_at"]),
        gitUrl: json["git_url"],
        sshUrl: json["ssh_url"],
        cloneUrl: json["clone_url"],
        svnUrl: json["svn_url"],
        homepage: json["homepage"],
        size: json["size"],
        stargazersCount: json["stargazers_count"],
        watchersCount: json["watchers_count"],
        language: json["language"],
        hasIssues: json["has_issues"],
        hasProjects: json["has_projects"],
        hasDownloads: json["has_downloads"],
        hasWiki: json["has_wiki"],
        hasPages: json["has_pages"],
        hasDiscussions: json["has_discussions"],
        forksCount: json["forks_count"],
        mirrorUrl: json["mirror_url"],
        archived: json["archived"],
        disabled: json["disabled"],
        openIssuesCount: json["open_issues_count"],
        license: json["license"],
        allowForking: json["allow_forking"],
        isTemplate: json["is_template"],
        webCommitSignoffRequired: json["web_commit_signoff_required"],
        topics: List<dynamic>.from(json["topics"].map((x) => x)),
        visibility: json["visibility"],
        forks: json["forks"],
        openIssues: json["open_issues"],
        watchers: json["watchers"],
        defaultBranch: json["default_branch"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "node_id": nodeId,
        "name": name,
        "full_name": fullName,
        "private": private,
        "owner": owner.toJson(),
        "html_url": htmlUrl,
        "description": description,
        "fork": fork,
        "url": url,
        "forks_url": forksUrl,
        "keys_url": keysUrl,
        "collaborators_url": collaboratorsUrl,
        "teams_url": teamsUrl,
        "hooks_url": hooksUrl,
        "issue_events_url": issueEventsUrl,
        "events_url": eventsUrl,
        "assignees_url": assigneesUrl,
        "branches_url": branchesUrl,
        "tags_url": tagsUrl,
        "blobs_url": blobsUrl,
        "git_tags_url": gitTagsUrl,
        "git_refs_url": gitRefsUrl,
        "trees_url": treesUrl,
        "statuses_url": statusesUrl,
        "languages_url": languagesUrl,
        "stargazers_url": stargazersUrl,
        "contributors_url": contributorsUrl,
        "subscribers_url": subscribersUrl,
        "subscription_url": subscriptionUrl,
        "commits_url": commitsUrl,
        "git_commits_url": gitCommitsUrl,
        "comments_url": commentsUrl,
        "issue_comment_url": issueCommentUrl,
        "contents_url": contentsUrl,
        "compare_url": compareUrl,
        "merges_url": mergesUrl,
        "archive_url": archiveUrl,
        "downloads_url": downloadsUrl,
        "issues_url": issuesUrl,
        "pulls_url": pullsUrl,
        "milestones_url": milestonesUrl,
        "notifications_url": notificationsUrl,
        "labels_url": labelsUrl,
        "releases_url": releasesUrl,
        "deployments_url": deploymentsUrl,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "pushed_at": pushedAt.toIso8601String(),
        "git_url": gitUrl,
        "ssh_url": sshUrl,
        "clone_url": cloneUrl,
        "svn_url": svnUrl,
        "homepage": homepage,
        "size": size,
        "stargazers_count": stargazersCount,
        "watchers_count": watchersCount,
        "language": language,
        "has_issues": hasIssues,
        "has_projects": hasProjects,
        "has_downloads": hasDownloads,
        "has_wiki": hasWiki,
        "has_pages": hasPages,
        "has_discussions": hasDiscussions,
        "forks_count": forksCount,
        "mirror_url": mirrorUrl,
        "archived": archived,
        "disabled": disabled,
        "open_issues_count": openIssuesCount,
        "license": license,
        "allow_forking": allowForking,
        "is_template": isTemplate,
        "web_commit_signoff_required": webCommitSignoffRequired,
        "topics": List<dynamic>.from(topics.map((x) => x)),
        "visibility": visibility,
        "forks": forks,
        "open_issues": openIssues,
        "watchers": watchers,
        "default_branch": defaultBranch,
      };
}

class User {
  User({
    required this.login,
    required this.id,
    required this.nodeId,
    required this.avatarUrl,
    required this.gravatarId,
    required this.url,
    required this.htmlUrl,
    required this.followersUrl,
    required this.followingUrl,
    required this.gistsUrl,
    required this.starredUrl,
    required this.subscriptionsUrl,
    required this.organizationsUrl,
    required this.reposUrl,
    required this.eventsUrl,
    required this.receivedEventsUrl,
    required this.type,
    required this.siteAdmin,
  });

  Login login;
  int id;
  NodeId nodeId;
  String avatarUrl;
  String gravatarId;
  String url;
  String htmlUrl;
  String followersUrl;
  String followingUrl;
  GistsUrl gistsUrl;
  String starredUrl;
  String subscriptionsUrl;
  String organizationsUrl;
  String reposUrl;
  EventsUrl eventsUrl;
  String receivedEventsUrl;
  Type type;
  bool siteAdmin;

  factory User.fromJson(Map<String, dynamic> json) => User(
        login: loginValues.map[json["login"]]!,
        id: json["id"],
        nodeId: nodeIdValues.map[json["node_id"]]!,
        avatarUrl: json["avatar_url"],
        gravatarId: json["gravatar_id"],
        url: json["url"],
        htmlUrl: json["html_url"],
        followersUrl: json["followers_url"],
        followingUrl: json["following_url"],
        gistsUrl: gistsUrlValues.map[json["gists_url"]]!,
        starredUrl: json["starred_url"],
        subscriptionsUrl: json["subscriptions_url"],
        organizationsUrl: json["organizations_url"],
        reposUrl: json["repos_url"],
        eventsUrl: eventsUrlValues.map[json["events_url"]]!,
        receivedEventsUrl: json["received_events_url"],
        type: typeValues.map[json["type"]]!,
        siteAdmin: json["site_admin"],
      );

  Map<String, dynamic> toJson() => {
        "login": loginValues.reverse[login],
        "id": id,
        "node_id": nodeIdValues.reverse[nodeId],
        "avatar_url": avatarUrl,
        "gravatar_id": gravatarId,
        "url": url,
        "html_url": htmlUrl,
        "followers_url": followersUrl,
        "following_url": followingUrl,
        "gists_url": gistsUrlValues.reverse[gistsUrl],
        "starred_url": starredUrl,
        "subscriptions_url": subscriptionsUrl,
        "organizations_url": organizationsUrl,
        "repos_url": reposUrl,
        "events_url": eventsUrlValues.reverse[eventsUrl],
        "received_events_url": receivedEventsUrl,
        "type": typeValues.reverse[type],
        "site_admin": siteAdmin,
      };
}

enum EventsUrl {
  HTTPS_API_GITHUB_COM_USERS_ABHAY_TOMAR03_EVENTS_PRIVACY,
  HTTPS_API_GITHUB_COM_USERS_SYED_ABBAS19_EVENTS_PRIVACY
}

final eventsUrlValues = EnumValues({
  "https://api.github.com/users/abhay-tomar03/events{/privacy}":
      EventsUrl.HTTPS_API_GITHUB_COM_USERS_ABHAY_TOMAR03_EVENTS_PRIVACY,
  "https://api.github.com/users/syed-abbas19/events{/privacy}":
      EventsUrl.HTTPS_API_GITHUB_COM_USERS_SYED_ABBAS19_EVENTS_PRIVACY
});

enum GistsUrl {
  HTTPS_API_GITHUB_COM_USERS_ABHAY_TOMAR03_GISTS_GIST_ID,
  HTTPS_API_GITHUB_COM_USERS_SYED_ABBAS19_GISTS_GIST_ID
}

final gistsUrlValues = EnumValues({
  "https://api.github.com/users/abhay-tomar03/gists{/gist_id}":
      GistsUrl.HTTPS_API_GITHUB_COM_USERS_ABHAY_TOMAR03_GISTS_GIST_ID,
  "https://api.github.com/users/syed-abbas19/gists{/gist_id}":
      GistsUrl.HTTPS_API_GITHUB_COM_USERS_SYED_ABBAS19_GISTS_GIST_ID
});

enum Login { ABHAY_TOMAR03, SYED_ABBAS19 }

final loginValues = EnumValues(
    {"abhay-tomar03": Login.ABHAY_TOMAR03, "syed-abbas19": Login.SYED_ABBAS19});

enum NodeId { MDQ6_VX_NLCJC1_NDM4_O_DC0, U_KG_DO_BR9_KP_A }

final nodeIdValues = EnumValues({
  "MDQ6VXNlcjc1NDM4ODc0": NodeId.MDQ6_VX_NLCJC1_NDM4_O_DC0,
  "U_kgDOBr9kpA": NodeId.U_KG_DO_BR9_KP_A
});

enum Type { USER }

final typeValues = EnumValues({"User": Type.USER});

class Links {
  Links({
    required this.self,
    required this.html,
    required this.issue,
    required this.comments,
    required this.reviewComments,
    required this.reviewComment,
    required this.commits,
    required this.statuses,
  });

  Comments self;
  Comments html;
  Comments issue;
  Comments comments;
  Comments reviewComments;
  Comments reviewComment;
  Comments commits;
  Comments statuses;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: Comments.fromJson(json["self"]),
        html: Comments.fromJson(json["html"]),
        issue: Comments.fromJson(json["issue"]),
        comments: Comments.fromJson(json["comments"]),
        reviewComments: Comments.fromJson(json["review_comments"]),
        reviewComment: Comments.fromJson(json["review_comment"]),
        commits: Comments.fromJson(json["commits"]),
        statuses: Comments.fromJson(json["statuses"]),
      );

  Map<String, dynamic> toJson() => {
        "self": self.toJson(),
        "html": html.toJson(),
        "issue": issue.toJson(),
        "comments": comments.toJson(),
        "review_comments": reviewComments.toJson(),
        "review_comment": reviewComment.toJson(),
        "commits": commits.toJson(),
        "statuses": statuses.toJson(),
      };
}

class Comments {
  Comments({
    required this.href,
  });

  String href;

  factory Comments.fromJson(Map<String, dynamic> json) => Comments(
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "href": href,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
