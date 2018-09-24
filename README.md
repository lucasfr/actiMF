# Multifractals analysis of actigraphy data 

This repository contains all routines to generate the figures of the article 'On multifractals: a non-linear study of actigraphy data'.

:warning: Please reference the following paper if you use or adapt any of the material available here:

## Download

```
git clone https://github.com/lucasfr/actiMF
```

## Docker containers

To guarantee reproducibility and reduce issues involved in solving dependencies, all the routines available here run in a Docker container so please download and install the last version of the software at their website: https://www.docker.com/

To run the Docker container with the defined settings, please run:

```
docker-compose up -d
```

## Multifractal Analysis

```
docker-compose exec rstudio /bin/sh -c "./run.sh"
```

## Figures

All figures are in a R Markdown document to ease the visualisation. Open the link http://localhost:8787 and then the file actiMF.Rmarkdown when the RStudio loads.

:warning: The login and password are 'rstudio' and 'letmein', respectively.

## Stopping containers

When you are finish with your analysis stop the Docker container with the command:

```
docker-compose kill rstudio
```

## LICENSE

This software is licensed under an MIT License. 

Copyright (c) 2018 [Lucas G S França](https://lucasfr.github.io/), José G V Miranda. 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


