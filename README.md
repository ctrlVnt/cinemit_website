# CineMit website

## Welcome!

Thank you for your interest in contributing to CineMit ! 
This is the presentation website for the group cinema meet-up app, [available for download on the PlayStore](https://play.google.com/store/apps/details?id=com.ctrlvnt.cinemit). The website is built using Flutter.

## Prerequisites

### 1. Get your API key
Before you begin you need to optain an API key from [TMDB](https://developer.themoviedb.org/docs/getting-started).

### 2. Insert your API key in the project
After you have to insert the string of API kei into [this file](https://github.com/ctrlVnt/cinemit_website/blob/main/lib/global/apikeys.dart).

## How to Build

### 1. Flutter and Dart
You need to install Flutter and Dart, you can find instructions from the [official website](https://docs.flutter.dev/get-started/install)

### 2. Run the Progect
From the source of project you can execute ``flutter run`` to start project on your localhost.

### 3. Deploy of website
The website is hosted on Netlify and points to the [build/web](https://github.com/ctrlVnt/cinemit_website/tree/main/build/web) folder. Each time the command ```flutter build web```  is run, a trigger will reload the Netlify server, automatically updating the website.

## How to Contribute

### 1. Fork the Repository
Before making any changes, please fork the main repository. You can do this by clicking on the **Fork** button at the top right on GitHub. This will create a copy of the project in your account.

### 2. Clone the Repository
Clone the forked repository to your local machine using the following command:
```bash
git clone https://github.com/ctrlVnt/cinemit_website.git
```

### 3. Create a New Branch
It's always a good idea to work on a new branch for each modification you propose:
```bash
git checkout -b branch-name
```

### 4. Commit and Push Your Changes
After making the changes, create a commit with a meaningful message:
```bash
git add .
git commit -m "Description of the changes made"
```
Then push the branch with the changes to your GitHub repository:
```bash
git push origin branch-name
```

### 5. Open a Pull Request
Now that your changes are pushed, it's time to open a **Pull Request** (PR):
- Go to the original repository (the one you forked from).
- Click on the "New Pull Request" button.
- Select the branch you just pushed and complete the description of your PR.
- Provide a detailed explanation of what you changed and why.

## Contact Us

For any questions or clarifications, feel free to reach out to the project maintainers via the **Issues** section or by sending an email to [cinemit-app@outlook.com](mailto:cinemit-app@outlook.com).

Thank you for your contribution!
