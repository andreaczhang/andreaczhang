+++

title = "3 Data Science inspirations at WiDS Oslo"

subtitle = "My learnings and thoughts from Women in Data Science Conference Oslo"

date = 2019-05-26T00:00:00
draft = false

authors = ["Chi Zhang"]

summary = "Some thoughts on edge computing and privacy protection measures, artificial intelligence and data science as a project. "

+++

It has been almost 2 months since I attended the [Women in Data Science Conference in Oslo (April 4, 2019)](https://www.meetup.com/Women-in-Data-Science-Oslo/events/259466631/). I started the draft of this post back then, but never found time to sit down and get it finished. Finally on this sunny Sunday in late May, I figure it is time that I finish what I started 💪. In this post I will not cover everything that happened during the day (but you should not think that it wasn't fun!) I will focus on 3 talks (out of 6) and mix them with my thoughts.   



![wids](/img/wids/wids.png)*(image from WiDS Oslo)*



#### Talk 1: From the cloud to the edge: the increasing importance of decentralised computing in IoT

This talk by Ellie Dobson from Arundo introduced the idea of **Edge Computing**. It is when computation is largely or completely performed on distributed device nodes, hence reducing the volume of data being transferred, and the distance data must travel. The difference between Edge computing and Cloud computing is that the Cloud has a centralised server while Edge does data processing at the end points. 

##### Potentials in Medical Research 

I have no experience with IoT, yet I can think of one scenario in research where edge computing can be extremely useful (apart from saving costs of transmission): **privacy preserving**. For some data source such as hospitals, patient privacy is being highly protected and this could create obstacles for researchers in fields such as machine learning. There are some efforts towards Open Science, for example, release datasets for public use to make reproducibility possible by properly anonymising data. Such efforts include [MIMIC III Critical Care Database](https://mimic.physionet.org/about/mimic/) and [eICU Collaborative Research Database](https://eicu-crd.mit.edu/about/eicu/). On the other hand, instead of anonymise data and take it locally for analysis, is it possible to do analysis directly inside the privacy-protected server or the data-generating devices within the hospitals? This leads us to Edge computing, [federated learning](https://medium.com/syncedreview/federated-learning-the-future-of-distributed-machine-learning-eec95242d897) and [privacy-preserving machine learning](https://medium.com/dropoutlabs/privacy-preserving-machine-learning-2018-a-year-in-review-b6345a95ae0f). In my very own opinion, these could be the next step of machine learning in healthcare that benefit both indivuduals patients and researchers. 

<br/>

#### Talk 2: Art and Artificial Intelligence: how does an algorithm learn artistic expression

This talk by Benedikte Wallace, PhD candidate from RITMO center for interdisciplinary studies in rhythm, time and motion from University of Oslo introduced us about creativity for Artificial Intelligence. More specifically, AI's creativity in writing, visual art (painting) and music. 

##### Move 37 vs Move 78

The reason that I love this talk is not for how the technology advancement surprises us. To be honest, would it be surprising after [AlphaGo defeated Lee Sedol](https://www.imdb.com/title/tt6700846/) 4:1, the best human Go player on Earth? AI do incredible things nowadays and it does not only amaze human - it has also scared many of us: for our jobs being replaced, for the potential when we are controlled by them. However things might look differently from another perspective. I watched the [documentary](https://www.alphagomovie.com) of AlphaGo recently and found it unexpectedly emotional. AlphaGo did a creative move - move 37 that human would never do; Lee, in another match did a surprise move 78 that [turned the game completely](https://www.wired.com/2016/03/two-moves-alphago-lee-sedol-redefined-future/). On the one hand, human's intelligence designed the algorithms, built the machines; at the same time, AI can inspire us with the unexpecteds. Why not have confidence that we will coexist, and understand AI better while they will bring more fascinations to us like what they did with art? 

(I spent some time trying out the website [deepart](https://deepart.io/#) that can merge your photo with some art styles - it takes a few minutes and the outcome can still be improved, such as adapting the western lady's facial structure in the reference oil painting to asian face while keeping the style - hey, that's a potential!) 

<br/>

#### Talk 3: What does it mean to work on a Data Science Project? 

The last talk given by Natalia An from Microsoft was less technical but provides an interesting perspective for a PhD student like me. My experience is limited to academia, but I think there are things that I can certainly learn from the industry, such as project management. 

For example, it is important to have a **data pipeline** to to collect, clean, store, analyse or train model. This can help with reproducible, consistent, robust research. As a student I don't have a team to do different tasks for one project - this is a blessing and a curse. I know everything on the project hence each part is consistent; however it is substantial amount of work. Research has a trial-and-error nature in itself, making it especially important to be able to reproduce results, and to know where things went wrong. 

![opening](/img/wids/opening.png)*(image taken by myself - let me know if you don't want to show in the picture:)*

#### In summary:

This day has provided a great opportunity to learn about exciting things that are happening in the industry, and I forgot to stress that as the name of the conference suggests, WiDS has exclusively female speakers. This is particularly encouraging for young women (and minority) who are interested in this field, like you and me. I am truly glad that there is one happening around me in Oslo. 