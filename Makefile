hehe: hehe.l
	lex hehe.l
	gcc -o hehe lex.yy.c -ll

clean:
	rm hehe lex.yy.c