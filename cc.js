var temp = "";
temp +=	"<snippet>";
temp +=	"\n\t<content><![CDATA[{content}]]</content>";
temp +=	"\n\t<tabTrigger>{trigger}</tabTrigger>";
temp +=	"\n</snippet>";

function replaceTemplate(snippet) {
		return temp
				.replace(/{content}/, snippet.expand)
				.replace(/{trigger}/, snippet.trigger);
}

function printDone(snippet) {
		console.log("生成", snippet.trigger + ".subline-snippet");
}

function makeDirPath(snippet) {
		return "./out/" + snippet.trigger + ".subline-snippet";
}

function main(fs, snippets) {

		fs.mkdir("./out", function(err) {
				snippets.map(function(n) {
						fs.writeFile(makeDirPath(n), replaceTemplate(n), function(err) {
								if(err) console.log(err);
								printDone(n);
						});
				});
		});
		
				 
}

main(require("fs"), require("./mui.json"));


