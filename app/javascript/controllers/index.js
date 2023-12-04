// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)

const searchContainer = document.querySelector('.search');
const repositoriesList = searchContainer.querySelector('ul');

const getDataGithubUser = async (userName) => {
  try {
    const csrfToken = document.querySelector('meta[name="csrf-token"]').content;
    repositoriesList.innerHTML = '';

    const response = await fetch('/graphql', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Accept: 'application/json',
        'X-CSRF-Token': csrfToken,
      },
      body: JSON.stringify({
        query: `
          {
            githubUser(name: "${userName}")
            githubUserRepos(name: "${userName}")
          }
        `,
      }),
    });

    const data = await response.json();

    return data;
  
  } catch (error) {
    console.error('error: ', error);
  }
};

const renderGithubUserData = async (userName) => {
  const response = await getDataGithubUser(userName);
  const userField = searchContainer.querySelector('.user-name');

  const userData = JSON.parse(response['data']['githubUser']);
  const repositoriesData = JSON.parse(response['data']['githubUserRepos']);
  
  if (response['errors'] || userData['errors']) {
    userField.textContent = 'User not found';
    return;
  }

  userField.textContent = userData['name'];
  if (repositoriesData['repositories'].lenght) {
    repositoriesData['repositories'].forEach((repository) => {
      repositoriesList.insertAdjacentHTML('afterbegin', `<li>${repository}</li>`);
    })
  } else {
    repositoriesList.insertAdjacentHTML('afterbegin', '<li>Repositories are unexist</li>');
  }
}

const handlerFormRequest = (event) => {
  event.preventDefault();

  if  (event.target.nodeName !== 'BUTTON') {
    return
  }

  const userName = searchContainer.querySelector('input').value.trim();

  renderGithubUserData(userName);
}

searchContainer.addEventListener('click', handlerFormRequest);
