# To edit the website
### Clone repo and install necessary packages
Note: this is only done once.
On your local machine, use the terminal to navigate to wherever you want to store your local version of the website. Then:
```
apt-get update
apt-get upgrade
git clone https://github.com/MurpheyLab/MurpheyLab.github.io
```
This will update and upgrade your system, and then create a new folder on your device containing the latest version of the website. The new folder will be named `MurpheyLab.github.io`. Next, navigate to this new folder and install `bundler`:
```
cd ~/MurpheyLab.github.io
sudo gem install bundler
bundle install
```
Now you can create a local version of the website:
```
bundle exec jekyll serve
```
If you go to the website `http://127.0.0.1:4000` in your browser, you will see a local version of the site. To make sure it's working, open `MurpheyLab.github.io/people.html` using your favorite text editor and change the word 'People' in line 23 to say something else. Save the file and refresh `http://127.0.0.1:4000`. You should see the header of the page change.

### Pull repo
From now on, every time you want to edit the website you will first have to pull whatever changes other people have made. To do this, navigate to your local folder and pull:
```
cd ~/MurpheyLab.github.io
git pull
```
This command incorporates changes from a remote repository into your current (local) branch.

### Make changes
You may now add publications, edit your people page, etc. See below sections on specifics of how to make these kinds of changes. If you want to make more structural changes to the website, please make your own branch to test things out. We can merge them later when the lab agrees to the bigger changes.

### Preview locally
Use the command `bundle exec jekyll serve` and go to `http://127.0.0.1:4000` on your browser to create a local copy of the website. This allows you to see how your changes will look before making them public.

### Commit changes
To save the current state of your version of the website, add and commit your edits:
`git add .` adds all changes   
`git add FILENAME.txt` adds changes from a specific file   
Then commit the changes using:   
`git commit -m "DESCRIBE CHANGES"` to commit changes and add a description of what the changes are

### Push changes
To push your changes to the actual, public website, push them to the remote repository:
`git push origin master` pushes changes from your local repo to the remote repo. Now everyone can see them and the website will be publicly updated.




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
