const { Octokit } = require("@octokit/action");

run();

async function run() {
  const octokit = new Octokit();

  try {
    const [owner, repo] = process.env.GITHUB_REPOSITORY.split("/");
    workflow_file_name = "branch-push-test.yml";
    const { data } = await octokit.request(
      "GET /repos/:owner/:repo/actions/workflows/:workflow_file_name",
      {
        owner,
        repo,
        workflow_file_name
      }
    );
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}
