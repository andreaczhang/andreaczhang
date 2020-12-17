+++
# Project title.
title = "Interveneable predictions using Electronic Health Records"

# Date this page was created.
date = 2019-01-06T00:00:00

# Project summary to display on homepage.
summary = "Interveneable predictions of Hospital Acquired Infection via a hierarchical lasso procedure using Electronic Health Records"

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["Electronic Health Records"]

# Optional external URL for project (replaces project detail page).
external_link = ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references 
#   `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides = "example-slides"

# Links (optional).
url_pdf = ""
url_slides = ""
url_video = ""
url_code = ""


# Featured image
# To use, add an image named `featured.jpg/png` to your project's folder. 
[image]
  # Caption (optional)
  caption = "Photo by rawpixel on Unsplash"
  
  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = "Smart"
+++




Many models can make accurate predictions using temporal data, such as classic time series models including ARIMA, and deep learning methods including recurrent neural networks. Such models are usually seen as blackboxes as we have limited insights on which inputs are important to produce the outcome, and if the outcome is unwanted what interventions can be done to change it. In this paper we introduce an interveneable prediction framework applied to time lagged regression. It is a two step approach: in the first step important time series covariates are selected using a hierarchical lasso penalty, and in the second step we use the residuals and the historical lags of the response to improve the prediction made in the first step. We illustrate our model with both a simulation study and a real data example, using Electronic Health Records data to predict Hospital Acquired Infection.
