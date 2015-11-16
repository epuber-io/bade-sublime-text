
{GrammarRegistry} = require 'first-mate'
registry = new GrammarRegistry()
grammar = registry.loadGrammarSync('./Syntaxes/Bade.JSON-tmLanguage')
{line, tags} = grammar.tokenizeLine('+abc some text')
# convert compact tags representation into convenient, space-inefficient tokens
tokens = registry.decodeTokens(line, tags)
for {value, scopes} in tokens
  console.log("Token text: '#{value}' with scopes: #{scopes}")
