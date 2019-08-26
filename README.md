## To add a project:
1. Create new project page by making a copy of and filling out `/projects/template.html`
    - change TITLE
        - line 3 displays on the tab
        - line 6 displays on the page
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
        - line 3 displays on the tab
        - line 6 displays on the page
    - add image  
        - upload IMAGE.jpg (or IMAGE.png) to `images` folder
        - change the path in line 9 to lead to IMAGE.jpg
        - change NAME in line 9. This text will display if the image can't load.
    - change type of student
        - line 12, default is PhD student, change to masters, undergrad, post doc...
    - add email address
        - line 14, change EMAIL twice (once for link, once for display text)
    - add google scholar URL
        - line 15
    - add a Research
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
      - `<div class="column1">`
        - `<a href="/people/NAME.html">`
          - `<div class="polaroid">`
            - `<img src="/images/IMAGE.jpg" alt="NAME" style="bottom-margin=-2em">`
            - `<div class="container">`
              - `<h5>NAME</h5>`
            - `</div>`
          - `</div>`
        - `</a>`
      - `</div>`

See other html pages in the people folder for reference. Comment or delete any unwanted sections.

## To add a publication:
1. Add publication to `publications.html` in the format:
    `<p><b>TITLE</b>
    <br>AUTHORS (first initial, last name)
    <br><i>JOURNAL/CONFERENCE</i>, DETAILS, YEAR. <a href="pdfs/URL.pdf">PDF</a> <a href="pdfs/URL.mp4">VIDEO</a></p>`
2. Add the publication to associated Project and People pages.

If there is no video, delete the entire `<a ... </a>` surrounding `VIDEO`. If there is no pdf, replace `pdfs/URL.pdf` with a link to the publication and replace `PDF` with `Paper`. See other html publications in `publications.html` for reference.

## To add a news post:


## To add an art/media post:
