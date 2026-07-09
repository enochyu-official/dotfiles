local ls = require("luasnip")
local s  = ls.snippet
local t  = ls.text_node
local i  = ls.insert_node
local rep = require("luasnip.extras").rep

return {

  s({ trig = ";a", snippetType = "autosnippet", wordTrig = false }, t("\\alpha")),
  s({ trig = ";b", snippetType = "autosnippet", wordTrig = false }, t("\\beta")),
  s({ trig = ";g", snippetType = "autosnippet", wordTrig = false }, t("\\gamma")),
  s({ trig = ";d", snippetType = "autosnippet", wordTrig = false }, t("\\delta")),
  s({ trig = ";D", snippetType = "autosnippet", wordTrig = false }, t("\\Delta")),
  s({ trig = ";p", snippetType = "autosnippet", wordTrig = false }, t("\\pi")),
  s({ trig = ";t", snippetType = "autosnippet", wordTrig = false }, t("\\theta")),
  s({ trig = ";o", snippetType = "autosnippet", wordTrig = false }, t("\\omega")),
  s({ trig = ";l", snippetType = "autosnippet", wordTrig = false }, t("\\lambda")),

  s({ trig = ";N", snippetType = "autosnippet", wordTrig = false }, t("\\mathbb{N}")),
  s({ trig = ";Z", snippetType = "autosnippet", wordTrig = false }, t("\\mathbb{Z}")),
  s({ trig = ";Q", snippetType = "autosnippet", wordTrig = false }, t("\\mathbb{Q}")),
  s({ trig = ";R", snippetType = "autosnippet", wordTrig = false }, t("\\mathbb{R}")),
 
  s(
    { trig = "\\[", snippetType = "autosnippet", wordTrig = false },
    {
      t("\\["),
      t({ "", "" }),
      i(1),
      t({ "", "\\]" }),
    }
  ),
  s(
    { trig = "\\beg", snippetType = "autosnippet", wordTrig = false },
    {
      t("\\begin{"),
      r(1, i(1)),
      t({ "}", "" }),
      i(2),
      t({ "", "\\end{" }),
      rep(1),
      t("}"),
    }
  ),
  s(
    { trig = "\\ali", regTrig = false, wordTrig = false, snippetType = "autosnippet" },
    {
      t("\\begin{align*}"),
      t({ "", "    " }),
      i(1),
      t({ "", "\\end{align*}" })
    }
  ),
  s(
    { trig = "\\pf", regTrig = false, wordTrig = false, snippetType = "autosnippet" },
    {
      t("\\begin{proof}"),
      t({ "", "" }),
      i(1),
      t({ "", "", "\\end{proof}" })
    }
  ),
  s(
    { trig = "\\lem", regTrig = false, wordTrig = false, snippetType = "autosnippet" },
    {
      t("\\begin{lemma}"),
      t({ "", "" }),
      i(1),
      t({ "", "\\end{lemma}" })
    }
  ),
  s(
    { trig = "\\theo", regTrig = false, wordTrig = false, snippetType = "autosnippet" },
    {
      t("\\begin{theorem}"),
      t({ "", "" }),
      i(1),
      t({ "", "\\end{theorem}" })
    }
  ),
  s(
    { trig = "\\tikz", regTrig = false, wordTrig = false, snippetType = "autosnippet" },
    {
      t("\\begin{tikzpicture}"),
      t({ "", "    " }),
      i(1),
      t({ "", "\\end{tikzpicture}" })
    }
  ),

  s(
    { trig = "\\ff", snippetType = "autosnippet", wordTrig = false },
    {
      t("\\frac{"), i(1), t("}{"), i(2), t("}"),
    }
  ),
  s(
    { trig = "\\fd", snippetType = "autosnippet", wordTrig = false },
    {
      t("\\frac{1}{2}"),
    }
  ),
  s(
    { trig = "\\sr", snippetType = "autosnippet", wordTrig = false },
    {
      t("\\sqrt{"), i(1), t("}"),
    }
  ),

  s(
    { trig = "\\bf", snippetType = "autosnippet", wordTrig = false },
    {
      t("\\textbf{"), i(1), t("}"),
    }
  ),
}

