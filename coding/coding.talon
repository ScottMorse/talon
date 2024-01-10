

up (dir | directory): "../"
current (dir | directory): ".</"
home (dir | directory): "~/"

# TODO move to python? (community keys)
(left | open | opening) tag: "<"
right tag: ">"
(final | closing | close) tag: "/>"
pre (final | closing | close) tag: "</"

([left] curly [brace | bracket] ): "{"
((right | closing | close) curly [brace | bracket] ): "}"
([left] box [brace | bracket] ): "["
((right | closing | close) box [brace | bracket] ): "]"
 ([left] diamond [brace | bracket] ): "<"
((right | closing | close) diamond [brace | bracket] ): ">"
