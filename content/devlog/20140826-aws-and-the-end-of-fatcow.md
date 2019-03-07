---
title: "AWS and the end of Fatcow"
date: 2014-08-26
---
I have [posted previously](/fat-cows) about how terrible fatcow is. My day job is maintaining a very large and complex website, so I found it unacceptable how fatcow was unable to maintain reliability on this little one. I decided I could do it better myself. All the graphical goodness was done by a friend to get a decent looking interface, and I worked on the sysadmin stuff in the background to automate everything. It all came together today, just in time for fatcow to fail yet again. My external monitoring systems detected it go down 12 hours ago, and when I put in a ticket this afternoon to ask them to fix it, they proceeded to blame me for the outage, specifically a file that haded changed since may... Customer support was 100% unhelpful, so I finished up my automation this evening after work and pushed it live. I plan on transferring DNS and mailservice elsewhere in the coming weeks as well, but for now the website is up.

I use [puppet ](http://puppetlabs.com/)at work, so it was easiest for me to use puppet for the site. However, I didn't want to deal with having a master/slave setup, so I went with a masterless setup, which wasn't as intuative as I thought, but I ended up figuring it out and I'm happy with the results.
