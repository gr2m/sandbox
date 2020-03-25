const { Octokit } = require("@octokit/action");

run();

async function run() {
  const octokit = new Octokit();

  try {
    const { data } = octokit.request("/");
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}
