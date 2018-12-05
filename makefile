compile:
	pandoc addnewletsencryptcert.md -s -c style.css --toc -o addnewletsencryptcert.html
	pandoc addnewhosttonoip.md -s -c style.css --toc -o addnewhosttonoip.html
	pandoc index.md -s -c style.css --toc -o index.html
	pandoc README.md -s -c style.css --toc -o README.html
	pandoc vimwikiwebsite.md -s -c style.css --toc -o vimwikiwebsite.html
clean:
	rm addnewletsencryptcert.html index.html addnewhosttonoip.html README.html vimwikiwebsite.html
