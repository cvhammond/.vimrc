
syn region markdownInlineRef start="@" end="\s\|\n"
syn region markdownRef start="\[@" end="\]\s\|\]\n"
syn region markdownLatexInline start="\$" end="\$"
syn region markdownLatexBlock start="\$\$" end="\$\$"
syn region markdownQuoteRegion start=">\s" end="$"


