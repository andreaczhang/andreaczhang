+++
title = "Overwhelmed by Hugo academic theme: a beginner's guide"
subtitle = "Experience of using R blogdown to build my webpage"

date = 2019-03-10T00:00:00
draft = false

authors = ["Chi Zhang"]

summary = "and the workflow"

# Featured image
# To use, add an image named `featured.jpg/png` to your project's folder. 
[image]
  # Caption (optional)
  caption = "Image credit: [google](https://djnavarro.net/post/2018-04-27-starting-blogdown/)"

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = "Center"

  # Show image only in page previews?
  preview_only = false

+++


I feel like writing down and summarize my very own experience of creating a blog using R blogdown created by Yihui Xie. I already got the page started in December 2018 and I thought "yay! my first blog!" and have decided to share my experience at my local R meet up, however I have been busy, either traveling or working on my PhD. Now it is the time that I commit myself this Sunday afternoon to start! 




<br/>
## Readings

To get started, I have followed [Alison Presmanes Hill's tutorial](https://alison.rbind.io/post/up-and-running-with-blogdown/#in-github). She is a co-author of the [blogdown: Creating websites with R Markdown](https://bookdown.org/yihui/blogdown/) book, and I recommend reading other posts she has written in the same blog. 





<br/>


## Quick start

Thanks to Alison's great tutorial, the following steps worked out just perfectly. Here's a short summary: 

### 1. Github

I have create a new repo, initialise with README but no .gitignore. I choose to use [Netlify] (https://www.netlify.com) and [Rbind] (https://github.com/rbind) because it's super simple, and I can name a repository anything I want. Moreoeve I feel more connected with my fellow R users!  

### 2. RStudio 

1. install blogdown 

   ```R
   if (!requireNamespace('devtools')) install.packages('devtools')
   devtools::install_github('rstudio/blogdown')
   ```

2. install hugo 

   ```R
   blogdown::install_hugo()
   ```

3. start new project using version control. Use `Serve site` add in. 

4. build. Like many others, I use the theme `academic`. 

   ```R
   blogdown::new_site(theme = 'gcushen/hugo-academic', theme_example = T)
   ```

5. add/commit/push changes to github when I'm done writing.





<br/>


## Overwhelmed by academic: where to start with?   

So far so good. The academic theme [example](https://academic-demo.netlify.com) however seem overwhelming to a newbie in her career - I don't have so many things to put up! Therefore it becomes a must to modify the existing files. And to do that, I need to understand the structure of the site. 

![where-am-i](/img/where-am-i.gif)

It is not easy. After reading [Danielle Navarro](https://djnavarro.net/post/2018-04-27-starting-blogdown/)'s post, and *bravely* deleted many folders, I have found some general rules. Assume your current directory is `bd-demo`. 



### Homepage

Probably this is what we all care the most: what appears on our homepage, and how to control it? There are 2 things you can do. 

1. the file `config.toml` allows you to control the look, change the title of your homepage, including changing the portrait photo - so it is important obviously. It can be difficult to understand everything in the default example, so I changed the things I could understand `baseurl, title, email, address` etc. 

2. change photo (TODO)

3. Widgets, controled by corresponding files under `content/home`, allow me to modify what to appear on my homepage in addition to `config.toml`, such as `about.md` that is the first paragarph. By selecting `active = true` in the corresponding markdown files, this widget will appear. 

   


<br/> 
### Content folder 

As the name suggests, it has the content of my site. However I don't need all of them, either because I don't have enough material, or because some are not necessary. Therefore in the end I only kept 4 folders: 

1. Home: this should give you info on what **widgets** to appear on your homepage. 

2. Post
3. project 
4. publication 



#### Post: understand the structure

The biggest challenge when I opened the folders in the demo folder is **naming** of various files, and it has made the modification very difficult because it's hard to know what you're actually modifying. Here is an example about what I'm talking about. 

When I look at `content` folder, there are 4 things that seem relevant for posts: 

1. `content/home/posts.md`: since it's under `home/`, it means it's a file to control the widget on the homepage. So it doesn't affect your post material.  
2. `content/post/_index.md`: a YAML header. *I don't know why I need it, maybe I dont?*
3. `content/post/post_name.Rmd` or md: the actual post content. This is what you need to write! 
4. `content/post/some_folder/gallery/index.md`. *I don't know*. 



#### Create new posts

It is easy to create new posts, 

1. use `new_post` add-in. 
2. directly create .md files. 

It is possible to make your post a draft by setting `draft: TRUE` in YAML front matter (the first lines between `+++` and `+++`). 

<br/> 

### Images and static folder

It is a bit confusing to add pictures, and `insert image` couldn't work for me. The only working way I have tried is from Alison Hill's post: 

- add image to `/static/img/` folder, then reference in the blogpost using `![pic_name](/img/pic_name.jpg)`





### A few do-not-touch's

Resources folder, public folder, themes folder. 



<br/> 
## Deployment 

**Remember that you need to push to github!!!** 

I followed Alison's tips completely and it works fine. To sum up, 

1. go to [Netlify](https://www.netlify.com), register using your GitHub account.
2. select the GitHub repo which contains the site.
3. Deploy (and be assigned a random domain name), and change your domain name as you wish. 
4. go to [Rbind](https://github.com/rbind), open a new issue, and give them your Netlify domain name and want it to be the new one. The Rbind support team will do everything from there. 


![hugoCover](/img/hugoCover.jpg)










