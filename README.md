# LaTeX-CV-Template
This is a CV template, written in the markup language LaTeX, primarily geared towards university students applying for front-office finance roles in the UK. However, the custom environments in the class file are quite flexible so the template could be adapted for someone at any experience level, in any location, and probably any career unless there are very specific CV requirements that this template cannot currently accomodate. 

The .cls file contains (almost) all of the formatting and style information for the document, including custom environments for things like the header, major sections, institutions/firms and roles/positions. Unless you wish to heavily modify the template or formatting to better suit your needs, you don't need to modify anything inside this file.

The .tex file is where you add your own information. The information currently in the .tex file is an example of the sort of things you should be putting on your cv. You need to go top to bottom inputting your own personal information, educational background, professional experience, extracurriculars, skills and interests. 

Use the current state of the file as inspiration. For example, you could change the major sections to include a section detailing your technical projects, or if you have more advanced degrees you will need to add them to the top of the education section. 

## Some technical considerations: 
If including multiple positions under one firm (e.g. Associate -> Analyst in descending chronological order), you will need to add a vspace{-5pt} after the bullets for all but the oldest position, otherwise there will be a large whitespace between positions even though they fall under the same company.

If you do not wish to include a linkedin/github link, remember to delete the \space\textbar\space commands preceding them!

If you have much less content on your CV, or want to use this as a two-page CV, you may have to modify the .cls file to increase the spacing between sections to properly space out the content.
