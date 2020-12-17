+++
title = " Feature extraction from unequal length heterogeneous EHR time series via dynamic time warping and tensor decomposition"
date = 2020-11-09T00:00:00
draft = false

# Authors. Comma separated list, e.g. `["Aleksander Grande Hansen", "David Jones"]`.
authors = ["Chi Zhang", "Hadi Fanaee-T", "Magne Thoresen"]

# Publication type.
# Legend:
# 0 = Uncategorized
# 1 = Conference paper
# 2 = Journal article
# 3 = Manuscript
# 4 = Report
# 5 = Book
# 6 = Book section
publication_types = ["2"]

# Publication name and optional abbreviated version.
publication = "In *Data Mining and Knowledge Discovery*"
# publication_short = "In *SITIS*"

# Abstract and optional shortened version.
abstract = "Electronic Health Records (EHR) data is routinely generated patient data that can provide useful information for analytical tasks such as disease detection and clinical event prediction. However, temporal EHR data such as physiological vital signs and lab test results are particularly challenging. Temporal EHR features typically have different sampling frequencies; such examples include heart rate (measured almost continuously) and blood test results (a few times during a patient’s entire stay). Different patients also have different length of stays. Existing approaches for temporal EHR sequence extraction either ignore the temporal pattern within features, or use a predefined window to select a section of the sequences without taking into account all the information. We propose a novel approach to tackle the issue of irregularly sampled, unequal length EHR time series using dynamic time warping and tensor decomposition. We use DTW to learn the pairwise distances for each temporal feature among the patient cohort and stack the distance matrices into a tensor. We then decompose the tensor to learn the latent structure, which is consequently used for patient representation. Finally, we use the patient representation for in-hospital mortality prediction. We illustrate our method on two cohorts from the MIMIC-III database: the sepsis and the acute kidney failure cohorts. We show that our method produces outstanding classification performance in terms of AUROC, AUPRC and accuracy compared with the baseline methods: LSTM and DTW-KNN. In the end we provide a detailed analysis on the feature importance for the interpretability of our method."
abstract_short = ""


# Links (optional).
# url_pdf = "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6003120/pdf/12901_2018_Article_57.pdf"
url_preprint = ""
url_code = ""
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_source = ""

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
# url_custom = [{name = "Custom Link", url = "http://example.org"}]

# Digital Object Identifier (DOI)
doi = "https://doi.org/10.1007/s10618-020-00724-6"

# Does this page contain LaTeX math? (true/false)
math = true


  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++


