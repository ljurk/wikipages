compile:
	pandoc addnewletsencryptcert.txt -s -c style.css --toc -o test.html
	pandoc addnewhosttonoip.md -s -c style.css --toc -o addnewhosttonoip.html
	pandoc index.md -s -c style.css --toc -o index.html
