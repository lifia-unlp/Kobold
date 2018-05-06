![alt text](https://s3.amazonaws.com/selfrefactoring/screencasts/koboldAvatar.png "Avatar")
# Kobold
Usability-As-A-Service tool for Web Applications.
Working version running at

[https://autorefactoring.lifia.info.unlp.edu.ar](https://autorefactoring.lifia.info.unlp.edu.ar)

## Overview
Kobold scans your web app's real users' activity to search for usability smells. When you check the reports, Kobold will recommend you to take action by applying usability refactorings. In some cases, you'll be able to apply automatically generated refactorings for you.

## Research
Kobold was developed at LIFIA (UNLP, Argentina) research labs. Read more about it:
- [Kobold: Web usability as a service](https://ieeexplore.ieee.org/document/8115717/)
- [Automatic detection of usability smells in web applications](http://www.sciencedirect.com/science/article/pii/S1071581916301215)

## Screencast
Check the video to see how it works

[![Kobold Screencast](https://s3.amazonaws.com/selfrefactoring/screencasts/preview.png)](https://youtu.be/c-myYPMUh0Q)


## Installation (Requires MongoDB)
```smalltalk
Metacello new
	baseline: 'Kobold';
	repository: 'github://juliangrigera/Kobold';
	load.
```

After the code's loaded, point your browser to http://localhost:8080/Home
