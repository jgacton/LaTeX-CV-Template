# LaTeX-CV-Template
This is a CV template, written in the markup language LaTeX, primarily geared towards university students applying for front-office finance roles in the UK. However, the custom environments in the class file are quite flexible so the template could be adapted for someone at any experience level, in any location, and probably any career unless there are very specific CV requirements that this template cannot currently accomodate. 

The .cls file contains (almost) all of the formatting and style information for the document, including custom environments for things like the header, major sections, institutions/firms and roles/positions. Unless you wish to heavily modify the template or formatting to better suit your needs, you don't need to modify anything inside this file.

The .tex file is where you add your own information. The information currently in the .tex file is an example of the sort of things you should be putting on your cv. You need to go top to bottom inputting your own personal information, educational background, professional experience, extracurriculars, skills and interests. 

Use the current state of the file as inspiration. For example, you could change the major sections to include a section detailing your technical projects, or if you have more advanced degrees you will need to add them to the top of the education section. 

## Some technical considerations: 
If including multiple positions under one firm (e.g. Associate -> Analyst in descending chronological order), you will need to add a vspace{-5pt} after the bullets for all but the oldest position, otherwise there will be a large whitespace between positions even though they fall under the same company. You can change the exact size of the negative vspace to be whatever you think is most aesthetic, 5pts is a reasonable starting point.

If you do not wish to include a linkedin/github link, remember to delete the \space\textbar\space commands preceding them.

The numeric parameter that you pass to the section and institution environments represents the space to be used before that particular section. Modify this as you see fit, for example, reduce it to fit more on the page, or increase it to make the page less cluttered.

Finally, if you want to add a position without any bullet points underneath, for example because the position was years ago or not relevant to your current role or roles you are applying for, you have the 
    \PositionNL
environment which does not require any content in the body of the environment, just the position name, date and spacing. If you want to have your name at the top of the page be capitalised, you have the
    \HeaderCaps
environment.

Have fun!