compile:
	pandoc addnewletsencryptcert.md -s -c style.css -o addnewletsencryptcert.html
	pandoc addnewhosttonoip.md -s -c style.css -o addnewhosttonoip.html
	pandoc index.md -s -c style.css --toc -o index.html
	pandoc README.md -s -c style.css  -o README.html
	pandoc vimwikiwebsite.md -s -c style.css  -o vimwikiwebsite.html
clean:
	rm addnewletsencryptcert.html index.html addnewhosttonoip.html README.html vimwikiwebsite.html
