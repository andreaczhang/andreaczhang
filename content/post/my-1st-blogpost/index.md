+++
title = "Overwhelmed by Hugo academic theme: a beginner's guide"
subtitle = "Experience of using R blogdown to build my webpage"

date = 2019-03-10T00:00:00
draft = false

authors = ["Chi Zhang"]

summary = ""

+++


I feel like writing down and summarize my very own experience of creating a blog using R blogdown created by Yihui Xie. I already got the page started in December 2018 and I thought and have decided to share my experience at my local [Oslo useR! Group](https://www.meetup.com/Oslo-useR-Group/), however I have been busy, either traveling or working on my project. Now it is the time that I commit myself this Sunday afternoon to start! 

#### Why am I writing this post? 

Yes, there are already many posts on how to get you started. However I haven't seen one that explains what I should do when suddenly tons of information came at me right after clicking `build_site()` button, using [Academic](https://sourcethemes.com/academic/) theme. I would like to share my experience on how I found my way to modify relevant files and folders, to make the site look like what I want. I will add materials when I have learnt some new tricks! 


<br/>
## Readings

To get started, I have followed [Alison Presmanes Hill's tutorial](https://alison.rbind.io/post/up-and-running-with-blogdown/#in-github). She is a co-author of the [blogdown: Creating websites with R Markdown](https://bookdown.org/yihui/blogdown/) book, and I recommend reading other posts (for example, [A spoonful of Hugo series](https://alison.rbind.io/post/2019-02-19-hugo-archetypes/)) she has written in the same blog. 

The [blogdown book](https://bookdown.org/yihui/blogdown/) is a great manual when you want to look up something. I also recommend going to twitter discussion to keep update. 








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

3. start new project using version control. Use `Serve site` add in will allow you to see the rendered site locally whenever you save the changes made to your files. 

4. build. Like many others, I use the theme `academic`. 

   ```R
   blogdown::new_site(theme = 'gcushen/hugo-academic', theme_example = T)
   ```

5. add/commit/push changes to github when I'm done writing.





<br/>


## Overwhelmed by academic: where to start with?   

So far so good. The academic theme [example](https://academic-demo.netlify.com) however seem overwhelming to a newbie in her career - I don't have so many things to put up! Therefore it becomes a must to modify the existing files. And to do that, I need to understand the structure of the site. 

![where-am-i](/img/where-am-i.gif)

It is not easy. After reading [Danielle Navarro](https://djnavarro.net/post/2018-04-27-starting-blogdown/)'s post, and *bravely* deleted many folders, I have found some general rules. Assume your current directory is `bd-demo`(`bd` for blogdown). 



### 1. Homepage

Probably this is what we all care the most: what appears on our homepage, and how to control it. There are 3 things you can do. 

1.  `config.toml` allows you to control the configuration and look. You can change the title of your homepage,  changing the portrait photo, configure whether you want to display math formulae etc. It can be challenging to understand everything in the default example, so I changed the things those look obvious: `baseurl, title, email, address` and social media information. A very good thing `config.toml` does is the nice documentation, it contains various links that you can check out. 
2. To change photo or `avatar`, it is also explained in the `config.toml` file. You save a picture, say `pic.jpg` in the  `static/img/` folder and specify the name in configuration file. 
3. Widgets, or the sections displayed in the homepage are controled by corresponding files under `content/home` in addition to  In addition to `config.toml`. For example, the content of the first paragraph that appears on my homepage is in `content/home/about.md`. By selecting `active = true` in the YAML header in the corresponding markdown files, this widget will appear.

As for my site, I don't need all the default sections. What I did was to go to `content/` and delete most of them, until I have 4 folders left, and they will appear on my homepage. 

- home
- post
- project
- publication

You can add as many as you want at a later point. 



<br/> 
### 2. Post

#### Understand the content folder structure

The biggest challenge when I opened the folders in the demo folder is **naming** of various files. It has made the modification very difficult because it's hard to know and remember what you're actually modifying. Here is an example about what I'm talking about. 

When I look at `content` folder, there are a few things that seem relevant for posts: 

1. `content/home/posts.md`: since it's under `home/`, it means it's a file to control the widget on the homepage. So it doesn't affect your post material.  
2. `content/post/_index.md`: a YAML header. I decided to leave it there.
3. `content/post/post_name.Rmd` or md: the actual post content. This is what you need to write! 



#### Create new posts

It is easy to create new posts, 

1. use `new_post` add-in. 
2. directly create markdown or R markdown files under `content/post/`. I tend to use this approach. 

It is possible to make your post a draft by setting `draft: TRUE` in YAML front matter (the first lines between `+++` and `+++`). This is particularly useful if you have something in mind but don't want to post it just yet. The draft posts will appear when you view your site locally, but not online. 

If you have math-rich posts, remember to set `math = true` in the `config.toml`! 


<br/> 

### 3. Images and static folder

It is a bit confusing to add pictures, and `insert image` add-in couldn't work for me. The only working way I have tried is from Alison Hill's post: 

- add image to `/static/img/` folder, then reference in the blogpost using `![pic_name](/img/pic_name.jpg)`

  



### A few do-not-touch's

Resources folder, public folder, themes folder. Public folder will regenerate when you `serve_site()`. 



<br/> 
## Deployment 

**After modifications, remember to save and push to github!!!** 

I followed Alison's tips completely and it works fine. To sum up, 

1. go to [Netlify](https://www.netlify.com), register using your GitHub account.
2. select the GitHub repo which contains the site.
3. Deploy (and be assigned a random domain name), and change your domain name as you wish. 
4. go to [Rbind](https://github.com/rbind), open a new issue, and give them your Netlify domain name and want it to be the new one. The Rbind support team will do everything from there. 



![hugoCover](/img/hugoCover.jpg)










