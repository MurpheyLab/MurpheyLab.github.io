# To edit the website
### Clone repo and install necessary
(this is only done once)
on your local machine, use the terminal to navigate to the folder you want to store your local version of the website repository in

`git clone https://github.com/MurpheyLab/MurpheyLab.github.io`
this will create a new folder on your device containing the latest version of the remote repo files on the master branch. the new folder will be named `MurpheyLab.github.io`

install packages...


### Pull repo
navigate to `MurpheyLab.github.io` folder and `git pull`
this incorporates changes from a remote repo into your current (local) branch

### Make changes
add publications, edit your people page, etc. see below sections on those specifics

### Preview locally
`bundle exec jekyll serve`
go to `http://127.0.0.1:4000` on your browser
every time you save changes one of the files in the MurpheyLab.github.io folder, refresh the local preview to see how they will look

### Commit changes
`git add .` adds all changes
`git add FILENAME.txt` adds changes from specific files
`git commit -m "DESCRIBE CHANGES"` commit changes and add a description of what the changes are

### Push changes
`git push origin master` push changes from your local repo to the remote repo. now everyone can see them and the website will be publicly updated.


## To add a project:
1. Create new project page by making a copy of and filling out `/projects/template.html`
    - change TITLE
        - the TITLE in line 3 will display on the tab of the webpage
        - the TITLE in line 6 will display on the webpage itself
    - add photos/videos
        - lines 10-12
        - formatting these will take specific tweaking, see other project pages for reference
    - add Collaborators
        - line 16
    - add Publications
        - line 18
    - add Funding
        - line 21

See other html pages in the projects folder for reference. Comment or delete any unwanted sections.

2. Add project to layout in `/_layouts/project.html`
    - add `<a href="/projects/TTILE.html">TITLE</a></p>` to sidenav (~lines 35-45)  
    - and to bottomnav (~lines 55-65), preferably in alphabetical order

3. Add project to list in `projects.html` (~line 68)

## To add a person:
1. Create a new person page by making a copy of and filling out `/people/template.html`
    - change NAME
        - the NAME in line 3 will display on the tab of the webpage
        - the NAME in line 6 will display on the webpage itself
    - add image  
        - upload IMAGE.jpg (or IMAGE.png) to `images` folder
        - change the path in line 9 to lead to IMAGE.jpg
        - change NAME in line 9. This text will display if the image can't load.
    - change type of student
        - line 12
        - the default in the template is PhD student, change if necessary
    - add email address
        - line 14
        - change EMAIL twice (once for the link, once for the text that will be displayed on the webpage)
    - add google scholar URL
        - line 15
    - add Research
        - line 21
    - add Projects
        - line 24, 25
    - add Education
        - line 28, 29
    - add Teaching
        - line 32, 33
    - add Awards and Honors
        - lines 36, 37
    - add Publications
        - copy/paste from publications page (see next section)

  2. Add person to `people.html` (alphabetically) in the format:
      ```
      <div class="column1">
          <a href="/people/NAME.html">
             <div class="polaroid">
                <img src="/images/IMAGE.jpg" alt="NAME" style="bottom-margin=-2em">
                <div class="container">
                   <h5>NAME</h5>
                </div>
             </div>
          </a>
      </div>
      ```

See other html pages in the people folder for reference. Comment or delete any unwanted sections.

## To add a publication:
1. Add publication to `publications.html` in the format:
```
<p><b>TITLE</b>
<br>AUTHORS (first initial, last name)
<br><i>JOURNAL/CONFERENCE</i>, DETAILS, YEAR. <a href="pdfs/URL.pdf">PDF</a> <a href="pdfs/URL.mp4">VIDEO</a></p>
```

2. Add the publication to associated Project and People pages.

If there is no video, delete the entire `<a ... </a>` surrounding `VIDEO`. If there is no pdf, replace `pdfs/URL.pdf` with a link to the publication and replace `PDF` with `Paper`. See other html publications in `publications.html` for reference.

## To add a news post:
1. Create a new post by making a copy of and filling out `/_posts/2030-01-01-template.md`
- change TITLE
    - line 3
- change date
    - line 4
    - date should be in format: YYYY-MM-DD and the post will only show up after that date has occurred
- add an image (optional)
    - line 10
    - alt_text = text that will show if the image doesn't load (e.g., Algorithmic Matter Collectively Foraging)
    - image_path = (e.g., /images/AlgMatter.jpg)
    - hover_text = text that will show when mouse hovers over image (e.g., Algorithmic Matter Foraging)
- add text
    - line 18
