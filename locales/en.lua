local Translations = {

    notify = {
    ["duty"] = "Youre Not On Duty",
    ["cancel"] = "You've canceled the production",
    ["needitem"] = "Youre Run Out Off Items",
    ["createpacket"] = "Sucessfull",
    ["clean"] = "Clean Your Hand",
    },












------ under development


}
Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})