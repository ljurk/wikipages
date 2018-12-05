compile:
	pandoc addnewletsencryptcert.md -s -c style.css --toc -o addnewletsencryptcert.html
	pandoc addnewhosttonoip.md -s -c style.css --toc -o addnewhosttonoip.html
	pandoc index.md -s -c style.css --toc -o index.html
	pandoc README.md -s -c style.css --toc -o readme.html
clean:
	rm addnewletsencryptcert.html index.html addnewhosttonoip.html readme.html
