/**
 * 
 */
var info = {
	subject: 'javascript',
	credit: 3,
	days: 20,
	tuition: 1000
};
for(var i in info) {
	console.log(i + ':' + info[i]);
}