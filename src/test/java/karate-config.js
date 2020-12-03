
function fn()
{
var config =
{
baseUrl: "https://reqres.in",
listUsers: "/api/users?page=2"
}
karate.log("From karate-config");
karate.configure("ssl",true);
return config;
}