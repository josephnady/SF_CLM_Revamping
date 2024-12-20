### Hi there 👋
[![Typing SVG](https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=23&pause=1000&color=F71818&center=false&vCenter=false&random=false&width=800&lines=Welcome!+to+SalesForce+CLM+Revamping+app;I+hope+you+enjoy+using+it.)](https://git.io/typing-svg)
<!--
**josephnady/josephnady** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->

# SF_CLM_Revamping

Use these scripts to convert your html CLM presentation to Sales force compatible version in seconds.

## Table of Contents

- [About the Project](#about-the-project)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Scripts](#scripts)
- [Folder Structure](#folder-structure)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

---

## About the Project

Provide a detailed overview of your project:

- What problem does it solve?
- Why did you create it?
- Any additional context or background.

Example:
"This project is designed to automate the processing of HTML, CSS, and image files for web development. It provides scripts for moving, renaming, and replacing file paths efficiently."

---

## Features

List the key features of your project:

- Feature 1: **Automated file management** for web development projects.
- Feature 2: **Retry mechanisms** to handle script failures gracefully.
- Feature 3: **Bulk path replacement** in HTML and CSS files.

---

## Getting Started

Explain how users can set up your project locally.

### Prerequisites

List any prerequisites:

- Bash shell or compatible terminal.
- Tools: `sed`, `find`.
- Dependencies: (if applicable)

```bash
# Example
sudo apt-get install bash sed findutils
```

## Installation

Provide clear installation instructions:

1. Clone the Repository

```bash
git clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name
```

2. Make scripts executable:

```bash
chmod +x *.sh
```

## Usage

Explain how to use your project:

1. Run the main script:

```bash
./main_script.sh
```

2. Replace paths:

```bash
./bulk_replace_paths.sh /path/to/files
Include examples for common use cases.

```

## Scripts

Describe the purpose of each script in the repository:

* `01-move_html_files.sh`: Moves and renames HTML files based on folder prefixes.
* `02-move_jpg_files.sh`: Moves and renames JPG files based on folder prefixes.
* `03-move_css_files.sh`: Moves and renames CSS files based on folder prefixes.
* `04-move_images_folders.sh`: Moves images folders for CLM presentation pages to the parent directory.
* `05-move_css_folders.sh`: Moves CSS folders for CLM presentation pages to the parent directory.
* `06-delete_empty_folders.sh`: Deletes all empty folders matching the pattern *Movicol.
* `07-bulk_replace_js_paths.sh`: Replaces JS paths in HTML files with specified patterns.
* `08-bulk_replace_images_paths.sh`: Replaces images paths in HTML files with specified patterns.
* `09-bulk_replace_css_paths.sh`: Replaces CSS paths in HTML files with specified patterns.
* `10-bulk_replace_htmlNavigator_paths.sh`: Replaces images paths in CSS files with specified patterns.
* `11-bulk_replace_images_paths.sh`: Runs all the scripts before.

## Folder Structure

This is the suitable folder structure for any HTML CLM presentaion to be compatible with SalesForce:

```bash
CLM_Folder/
    |__ 01-index.html #page 1 HTML file
    |__ 02-index.html #page 2 HTML file
    |__ *-index.html
        css/
            |__ 01css/ #page 1 css files
            |__ 02css/ #page 2 css files
            |__ *css/
        js/
            |__ 01js/ #page 1 js files
            |__ 02js/ #page 2 js files
            |__ *js/
        images/
            |__ 01images/ #page 1 images
            |__ 02images/ #page 2 images
            |__ *images/
```

## Contributing

Guidelines for contributing to your project:

1. Fork the repository.
2. Create a new branch (git checkout -b feature/your-feature).
3. Commit your changes (git commit -m "Add your message").
4. Push to the branch (git push origin feature/your-feature).
5. Open a Pull Request.

## License

```plaintext
Distributed under the MIT License. See LICENSE for more information.
```

## Contact

Provide contact details:

* Author: [Joseph Nady](https://github.com/josephnady/)
* Email: [jozephnady@gmail.com](mailto:jozephnady@gmail.com)
* Project Link: [SF_CLM_Revamping](https://github.com/josephnady/SF_CLM_Revamping.git)
