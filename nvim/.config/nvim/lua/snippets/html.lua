local ls = require("luasnip")
local s  = ls.snippet
local sn = ls.snippet_node
local t  = ls.text_node
local i  = ls.insert_node


return {
  s("!", {
    t({
      "<!DOCTYPE html>",
      "<html lang=\"en\">",
      "<head>",
      "  <meta charset=\"UTF-8\">",
      "  <meta name=\"viewport\" content=\"width=",
    }),
    i(2, "device-width"),
    t({ ", initial-scale=" }),
    i(3, "1.0"),
    t({
      "\">",
      "  <title>",
    }),
    i(1, "Document"),
    t({
      "</title>",
      "</head>",
      "<body>",
      "  ",
    }),
    i(4),
    t({
      "",
      "</body>",
      "</html>",
    }),
  }),

  s({ trig = "doctype", name = "HTML - Defines the document type" }, {
    t({ "<!DOCTYPE>" }),
    t({ "", "" }),
    i(1),
  }),

  s({ trig = "a", name = "HTML - Defines a hyperlink" }, {
    t("<a href=\""), i(1), t("\">"), i(2), t("</a>"), i(3),
  }),

  s({ trig = "abbr", name = "HTML - Defines an abbreviation" }, {
    t("<abbr title=\""), i(1), t("\">"), i(2), t("</abbr>"), i(3),
  }),

  s({ trig = "address", name = "HTML - Defines an address element" }, {
    t({ "<address>", "" }),
    i(1),
    t({ "", "</address>" }),
  }),

  s({ trig = "area", name = "HTML - Defines an area inside an image map" }, {
    t("<area shape=\""), i(1), t("\" coords=\""), i(2), t("\" href=\""), i(3), t("\" alt=\""), i(4), t("\">"), i(5),
  }),

  s({ trig = "article", name = "HTML - Defines an article" }, {
    t({ "<article>", "\t" }),
    i(1),
    t({ "", "</article>" }),
  }),

  s({ trig = "aside", name = "HTML - Defines content aside from the page content" }, {
    t({ "<aside>", "\t" }),
    i(1),
    t({ "", "</aside>" }),
    i(2),
  }),

  s({ trig = "audio", name = "HTML - Defines sounds content" }, {
    t({ "<audio controls>", "\t" }),
    i(1),
    t({ "", "</audio>" }),
  }),

  s({ trig = "b", name = "HTML - Defines bold text" }, {
    t("<b>"), i(1), t("</b>"), i(2),
  }),

  s({ trig = "base", name = "HTML - Defines a base URL for all the links in a page" }, {
    t("<base href=\""), i(1), t("\" target=\""), i(2), t("\">"), i(3),
  }),

  s({ trig = "bdi", name = "HTML - Used to isolate text that is of unknown directionality" }, {
    t("<bdi>"), i(1), t("</bdi>"), i(2),
  }),

  s({ trig = "bdo", name = "HTML - Defines the direction of text display" }, {
    t({ "<bdo dir=\"" }), i(1), t({ "\">", "" }),
    i(2),
    t({ "", "</bdo>" }),
  }),

  s({ trig = "big", name = "HTML - Used to make text bigger" }, {
    t("<big>"), i(1), t("</big>"), i(2),
  }),

  s({ trig = "blockquote", name = "HTML - Defines a long quotation" }, {
    t("<blockquote cite=\""), i(2), t({ "\">", "\t" }),
    i(1),
    t({ "", "</blockquote>" }),
  }),

  s({ trig = "body", name = "HTML - Defines the body element" }, {
    t({ "<body>", "\t" }),
    i(0),
    t({ "", "</body>" }),
  }),

  s({ trig = "br", name = "HTML - Inserts a single line break" }, {
    t("<br>"),
  }),

  s({ trig = "button", name = "HTML - Defines a push button" }, {
    t("<button type=\""), i(1), t("\">"), i(2), t("</button>"), i(3),
  }),

  s({ trig = "canvas", name = "HTML - Defines graphics" }, {
    t("<canvas id=\""), i(1), t("\">"), i(2), t("</canvas>"), i(3),
  }),

  s({ trig = "caption", name = "HTML - Defines a table caption" }, {
    t("<caption>"), i(1), t("</caption>"), i(2),
  }),

  s({ trig = "cite", name = "HTML - Defines a citation" }, {
    t("<cite>"), i(1), t("</cite>"), i(2),
  }),

  s({ trig = "code", name = "HTML - Defines computer code text" }, {
    t("<code>"), i(1), t("</code>"), i(2),
  }),

  s({ trig = "col", name = "HTML - Defines attributes for table columns" }, {
    t("<col>"), i(2),
  }),

  s({ trig = "colgroup", name = "HTML - Defines group of table columns" }, {
    t({ "<colgroup>", "\t" }),
    i(1),
    t({ "", "</colgroup>" }),
  }),

  s({ trig = "command", name = "HTML - Defines a command button [not supported]" }, {
    t("<command>"), i(1), t("</command>"), i(2),
  }),

  s({ trig = "datalist", name = "HTML - Defines a dropdown list" }, {
    t({ "<datalist>", "\t" }),
    i(1),
    t({ "", "</datalist>" }),
  }),

  s({ trig = "dd", name = "HTML - Defines a definition description" }, {
    t("<dd>"), i(1), t("</dd>"), i(2),
  }),

  s({ trig = "del", name = "HTML - Defines deleted text" }, {
    t("<del>"), i(1), t("</del>"), i(2),
  }),

  s({ trig = "details", name = "HTML - Defines details of an element" }, {
    t({ "<details>", "\t" }),
    i(1),
    t({ "", "</details>" }),
  }),

  s({ trig = "dialog", name = "HTML - Defines a dialog (conversation)" }, {
    t("<dialog>"), i(1), t("</dialog>"), i(2),
  }),

  s({ trig = "dfn", name = "HTML - Defines a definition term" }, {
    t("<dfn>"), i(1), t("</dfn>"), i(2),
  }),

  s({ trig = "div", name = "HTML - Defines a section in a document" }, {
    t({ "<div>", "\t" }),
    i(1),
    t({ "", "</div>" }),
  }),

  s({ trig = "dl", name = "HTML - Defines a definition list" }, {
    t({ "<dl>", "\t" }),
    i(1),
    t({ "", "</dl>" }),
  }),

  s({ trig = "dt", name = "HTML - Defines a definition term" }, {
    t("<dt>"), i(1), t("</dt>"), i(2),
  }),

  s({ trig = "em", name = "HTML - Defines emphasized text" }, {
    t("<em>"), i(1), t("</em>"), i(2),
  }),

  s({ trig = "embed", name = "HTML - Defines external interactive content ot plugin" }, {
    t("<embed src=\""), i(1), t("\">"), i(2),
  }),

  s({ trig = "fieldset", name = "HTML - Defines a fieldset" }, {
    t({ "<fieldset>", "\t" }),
    i(1),
    t({ "", "</fieldset>" }),
  }),

  s({ trig = "figcaption", name = "HTML - Defines a caption for a figure" }, {
    t("<figcaption>"), i(1), t("</figcaption>"), i(2),
  }),

  s({ trig = "figure", name = "HTML - Defines a group of media content, and their caption" }, {
    t({ "<figure>", "\t" }),
    i(1),
    t({ "", "</figure>" }),
  }),

  s({ trig = "footer", name = "HTML - Defines a footer for a section or page" }, {
    t({ "<footer>", "\t" }),
    i(1),
    t({ "", "</footer>" }),
  }),

  s({ trig = "form", name = "HTML - Defines a form" }, {
    t({ "<form>", "\t" }),
    i(1),
    t({ "", "</form>" }),
  }),

  s({ trig = "h1", name = "HTML - Defines header 1" }, {
    t("<h1>"), i(1), t("</h1>"), i(2),
  }),
  s({ trig = "h2", name = "HTML - Defines header 2" }, {
    t("<h2>"), i(1), t("</h2>"), i(2),
  }),
  s({ trig = "h3", name = "HTML - Defines header 3" }, {
    t("<h3>"), i(1), t("</h3>"), i(2),
  }),
  s({ trig = "h4", name = "HTML - Defines header 4" }, {
    t("<h4>"), i(1), t("</h4>"), i(2),
  }),
  s({ trig = "h5", name = "HTML - Defines header 5" }, {
    t("<h5>"), i(1), t("</h5>"), i(2),
  }),
  s({ trig = "h6", name = "HTML - Defines header 6" }, {
    t("<h6>"), i(1), t("</h6>"), i(2),
  }),

  s({ trig = "head", name = "HTML - Defines information about the document" }, {
    t({ "<head>", "\t" }),
    i(1),
    t({ "", "</head>" }),
  }),

  s({ trig = "header", name = "HTML - Defines a header for a section of page" }, {
    t({ "<header>", "\t" }),
    i(1),
    t({ "", "</header>" }),
  }),

  s({ trig = "hgroup", name = "HTML - Defines information about a section in a document" }, {
    t({ "<hgroup>", "\t" }),
    i(1),
    t({ "", "</hgroup>" }),
  }),

  s({ trig = "hr", name = "HTML - Defines a horizontal rule" }, {
    t("<hr>"),
  }),

  s({ trig = "html", name = "HTML - Defines an html document" }, {
    t({ "<html>", "\t" }),
    i(0),
    t({ "", "</html>" }),
  }),

  s({ trig = "html5", name = "HTML - Defines a template for a html5 document" }, {
    t({ "<!DOCTYPE html>", "<html lang=\"" }),
    i(1, "en"),
    t({ "\">", "\t<head>", "\t\t<meta charset=\"UTF-8\">", "\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">", "\t\t<title>" }),
    i(2),
    t({ "</title>", "\t\t<link href=\"" }),
    i(3, "css/style.css"),
    t({ "\" rel=\"stylesheet\">", "\t</head>", "\t<body>", "\t" }),
    i(0),
    t({ "", "\t</body>", "</html>" }),
  }),

  s({ trig = "i", name = "HTML - Defines italic text" }, {
    t("<i>"), i(1), t("</i>"), i(2),
  }),

  s({ trig = "iframe", name = "HTML - Defines an inline sub window" }, {
    t("<iframe src=\""), i(1), t("\">"), i(2), t("</iframe>"), i(3),
  }),

  s({ trig = "img", name = "HTML - Defines an image" }, {
    t("<img src=\""), i(1), t("\" alt=\""), i(2), t("\">"), i(3),
  }),

  s({ trig = "input", name = "HTML - Defines an input field" }, {
    t("<input type=\""), i(1), t("\" name=\""), i(2), t("\" value=\""), i(3), t("\">"), i(4),
  }),

  s({ trig = "ins", name = "HTML - Defines inserted text" }, {
    t("<ins>"), i(1), t("</ins>"), i(2),
  }),

  s({ trig = "keygen", name = "HTML - Defines a generated key in a form" }, {
    t("<keygen name=\""), i(1), t("\">"), i(2),
  }),

  s({ trig = "kbd", name = "HTML - Defines keyboard text" }, {
    t("<kbd>"), i(1), t("</kbd>"), i(2),
  }),

  s({ trig = "label", name = "HTML - Defines an inline window" }, {
    t("<label for=\""), i(1), t("\">"), i(2), t("</label>"), i(3),
  }),

  s({ trig = "legend", name = "HTML - Defines a title in a fieldset" }, {
    t("<legend>"), i(1), t("</legend>"), i(2),
  }),

  s({ trig = "li", name = "HTML - Defines a list item" }, {
    t("<li>"), i(1), t("</li>"), i(2),
  }),

  s({ trig = "link", name = "HTML - Defines a resource reference" }, {
    t("<link rel=\""), i(1), t("\" type=\""), i(2), t("\" href=\""), i(3), t("\">"), i(4),
  }),

  s({ trig = "main", name = "HTML - Defines an image map" }, {
    t({ "<main>", "\t" }),
    i(1),
    t({ "", "</main>" }),
  }),

  s({ trig = "map", name = "HTML - Defines an image map" }, {
    t({ "<map name=\"" }), i(1), t({ "\">", "\t" }),
    i(2),
    t({ "", "</map>" }),
  }),

  s({ trig = "mark", name = "HTML - Defines marked text" }, {
    t("<mark>"), i(1), t("</mark>"), i(2),
  }),

  s({ trig = "menu", name = "HTML - Defines a menu list" }, {
    t({ "<menu>", "\t" }),
    i(1),
    t({ "", "</menu>" }),
  }),

  s({ trig = "menuitem", name = "HTML - Defines a menu item [firefox only]" }, {
    t("<menuitem>"), i(1), t("</menuitem>"), i(2),
  }),

  s({ trig = "meta", name = "HTML - Defines meta information" }, {
    t("<meta name=\""), i(1), t("\" content=\""), i(2), t("\">"), i(3),
  }),

  s({ trig = "meter", name = "HTML - Defines measurement within a predefined range" }, {
    t("<meter value=\""), i(1), t("\">"), i(2), t("</meter>"), i(3),
  }),

  s({ trig = "nav", name = "HTML - Defines navigation links" }, {
    t({ "<nav>", "\t" }),
    i(1),
    t({ "", "</nav>" }),
  }),

  s({ trig = "noscript", name = "HTML - Defines a noscript section" }, {
    t({ "<noscript>", "" }),
    i(1),
    t({ "", "</noscript>" }),
  }),

  s({ trig = "object", name = "HTML - Defines an embedded object" }, {
    t("<object width=\""), i(1), t("\" height=\""), i(2), t("\" data=\""), i(3), t("\">"), i(4), t("</object>"), i(5),
  }),

  s({ trig = "ol", name = "HTML - Defines an ordered list" }, {
    t({ "<ol>", "\t" }),
    i(1),
    t({ "", "</ol>" }),
  }),

  s({ trig = "optgroup", name = "HTML - Defines an option group" }, {
    t({ "<optgroup>", "\t" }),
    i(1),
    t({ "", "</optgroup>" }),
  }),

  s({ trig = "option", name = "HTML - Defines an option in a drop-down list" }, {
    t("<option value=\""), i(1), t("\">"), i(2), t("</option>"), i(3),
  }),

  s({ trig = "output", name = "HTML - Defines some types of output" }, {
    t("<output name=\""), i(1), t("\" for=\""), i(2), t("\">"), i(3), t("</output>"), i(4),
  }),

  s({ trig = "p", name = "HTML - Defines a paragraph" }, {
    t("<p>"), i(1), t("</p>"), i(2),
  }),

  s({ trig = "param", name = "HTML - Defines a parameter for an object" }, {
    t("<param name=\""), i(1), t("\" value=\""), i(2), t("\">"), i(3),
  }),

  s({ trig = "pre", name = "HTML - Defines preformatted text" }, {
    t("<pre>"), i(1), t("</pre>"),
  }),

  s({ trig = "progress", name = "HTML - Defines progress of a task of any kind" }, {
    t("<progress value=\""), i(1), t("\" max=\""), i(2), t("\">"), i(3), t("</progress>"), i(4),
  }),

  s({ trig = "q", name = "HTML - Defines a short quotation" }, {
    t("<q>"), i(1), t("</q>"), i(2),
  }),

  s({ trig = "rp", name = "HTML - Used in ruby annotations to define what to show browsers that do not support the ruby element" }, {
    t("<rp>"), i(1), t("</rp>"), i(2),
  }),

  s({ trig = "rt", name = "HTML - Defines explanation to ruby annotations" }, {
    t("<rt>"), i(1), t("</rt>"), i(2),
  }),

  s({ trig = "ruby", name = "HTML - Defines ruby annotations" }, {
    t({ "<ruby>", "" }),
    i(1),
    t({ "", "</ruby>" }),
  }),

  s({ trig = "s", name = "HTML - Used to define strikethrough text" }, {
    t("<s>"), i(1), t("</s>"), i(2),
  }),

  s({ trig = "samp", name = "HTML - Defines sample computer code" }, {
    t("<samp>"), i(1), t("</samp>"), i(2),
  }),

  s({ trig = "script", name = "HTML - Defines a script" }, {
    t({ "<script>", "\t" }),
    i(1),
    t({ "", "</script>" }),
  }),

  s({ trig = "section", name = "HTML - Defines a section" }, {
    t({ "<section>", "\t" }),
    i(1),
    t({ "", "</section>" }),
  }),

  s({ trig = "select", name = "HTML - Defines a selectable list" }, {
    t({ "<select>", "\t" }),
    i(1),
    t({ "", "</select>" }),
  }),

  s({ trig = "small", name = "HTML - Defines small text" }, {
    t("<small>"), i(1), t("</small>"), i(2),
  }),

  s({ trig = "source", name = "HTML - Defines media resource" }, {
    t("<source src=\""), i(1), t("\" type=\""), i(2), t("\">"), i(3),
  }),

  s({ trig = "span", name = "HTML - Defines a section in a document" }, {
    t("<span>"), i(1), t("</span>"), i(2),
  }),

  s({ trig = "strong", name = "HTML - Defines strong text" }, {
    t("<strong>"), i(1), t("</strong>"), i(2),
  }),

  s({ trig = "style", name = "HTML - Defines a style definition" }, {
    t({ "<style>", "" }),
    i(1),
    t({ "", "</style>" }),
  }),

  s({ trig = "sub", name = "HTML - Defines sub-scripted text" }, {
    t("<sub>"), i(1), t("</sub>"), i(2),
  }),

  s({ trig = "sup", name = "HTML - Defines super-scripted text" }, {
    t("<sup>"), i(1), t("</sup>"), i(2),
  }),

  s({ trig = "summary", name = "HTML - Defines a visible heading for the detail element [limited support]" }, {
    t("<summary>"), i(1), t("</summary>"), i(2),
  }),

  s({ trig = "table", name = "HTML - Defines a table" }, {
    t({ "<table>", "\t" }),
    i(1),
    t({ "", "</table>" }),
  }),

  s({ trig = "tbody", name = "HTML - Defines a table body" }, {
    t({ "<tbody>", "\t" }),
    i(1),
    t({ "", "</tbody>" }),
  }),

  s({ trig = "td", name = "HTML - Defines a table cell" }, {
    t("<td>"), i(1), t("</td>"), i(2),
  }),

  s({ trig = "textarea", name = "HTML - Defines a text area" }, {
    t("<textarea rows=\""), i(1), t("\" cols=\""), i(2), t("\">"), i(3), t("</textarea>"), i(4),
  }),

  s({ trig = "tfoot", name = "HTML - Defines a table footer" }, {
    t({ "<tfoot>", "\t" }),
    i(1),
    t({ "", "</tfoot>" }),
  }),

  s({ trig = "thead", name = "HTML - Defines a table head" }, {
    t({ "<thead>", "" }),
    i(1),
    t({ "", "</thead>" }),
  }),

  s({ trig = "th", name = "HTML - Defines a table header" }, {
    t("<th>"), i(1), t("</th>"), i(2),
  }),

  s({ trig = "time", name = "HTML - Defines a date/time" }, {
    t("<time datetime=\""), i(1), t("\">"), i(2), t("</time>"), i(3),
  }),

  s({ trig = "title", name = "HTML - Defines the document title" }, {
    t("<title>"), i(1), t("</title>"), i(2),
  }),

  s({ trig = "tr", name = "HTML - Defines a table row" }, {
    t("<tr>"), i(1), t("</tr>"), i(2),
  }),

  s({ trig = "track", name = "HTML - Defines a table row" }, {
    t("<track src=\""), i(1), t("\" kind=\""), i(2), t("\" srclang=\""), i(3), t("\" label=\""), i(4), t("\">"), i(5),
  }),

  s({ trig = "u", name = "HTML - Used to define underlined text" }, {
    t("<u>"), i(1), t("</u>"), i(2),
  }),

  s({ trig = "ul", name = "HTML - Defines an unordered list" }, {
    t({ "<ul>", "\t" }),
    i(1),
    t({ "", "</ul>" }),
  }),

  s({ trig = "var", name = "HTML - Defines a variable" }, {
    t("<var>"), i(1), t("</var>"), i(2),
  }),

  s({ trig = "video", name = "HTML - Defines a video" }, {
    t({ "<video width=\"" }), i(1), t({ "\" height=\"" }), i(2), t({ "\" controls>", "\t" }),
    i(3),
    t({ "", "</video>" }),
  }),

  -- Extra shorthand snippets you added
  s({ trig = "div.", name = "HTML - Defines a section in a document" }, {
    t({ "<div class=\"" }), i(1), t({ "\">", "\t" }),
    i(2),
    t({ "", "</div>" }),
  }),

  s({ trig = "div#", name = "HTML - Defines a section in a document" }, {
    t({ "<div id=\"" }), i(1), t({ "\">", "\t" }),
    i(2),
    t({ "", "</div>" }),
  }),

  s({ trig = "div.#", name = "HTML - Defines a section in a document" }, {
    t({ "<div class=\"" }), i(1), t({ "\" id=\"" }), i(2), t({ "\">", "\t" }),
    i(3),
    t({ "", "</div>" }),
  }),

  s({ trig = "p.", name = "HTML - Defines a paragraph" }, {
    t({ "<p class=\"" }), i(1), t({ "\">" }),
    i(2),
    t({ "</p>" }),
  }),

  s({ trig = "p#", name = "HTML - Defines a paragraph" }, {
    t({ "<p id=\"" }), i(1), t({ "\">" }),
    i(2),
    t({ "</p>" }),
  }),

  s({ trig = "p.#", name = "HTML - Defines a paragraph" }, {
    t({ "<p class=\"" }), i(1), t({ "\" id=\"" }), i(2), t({ "\">" }),
    i(3),
    t({ "</p>" }),
  }),

  s({ trig = "ul.", name = "HTML - Defines an unordered list" }, {
    t({ "<ul class=\"" }), i(1), t({ "\">", "\t" }),
    i(2),
    t({ "", "</ul>" }),
  }),

  s({ trig = "ul#", name = "HTML - Defines an unordered list" }, {
    t({ "<ul id=\"" }), i(1), t({ "\">", "\t" }),
    i(2),
    t({ "", "</ul>" }),
  }),

  s({ trig = "ul.#", name = "HTML - Defines an unordered list" }, {
    t({ "<ul class=\"" }), i(1), t({ "\" id=\"" }), i(2), t({ "\">", "\t" }),
    i(3),
    t({ "", "</ul>" }),
  }),

  s({ trig = "ol.", name = "HTML - Defines an ordered list" }, {
    t({ "<ol class=\"" }), i(1), t({ "\">", "\t" }),
    i(2),
    t({ "", "</ol>" }),
  }),

  s({ trig = "ol#", name = "HTML - Defines an ordered list" }, {
    t({ "<ol id=\"" }), i(1), t({ "\">", "\t" }),
    i(2),
    t({ "", "</ol>" }),
  }),

  s({ trig = "ol.#", name = "HTML - Defines an ordered list" }, {
    t({ "<ol class=\"" }), i(1), t({ "\" id=\"" }), i(2), t({ "\">", "\t" }),
    i(3),
    t({ "", "</ol>" }),
  }),
}

