#
#
#

import csv


# Special mapping for "no hlrule"
NORULE = {'gui': 'none', 'cterm': 'none'}

# The constant `RULES` defines the color rule lookup table, which maps syntax
# rules to a fg, bg, and decorator colors/values. This table is translated
# to highlight commands in the template logic. E.g.
#
#       Cursor, black, white, none
#
#   Will evaluate to
#
#       hi Cursor guifg=#000000 guibg=#111111 gui=none ctermfg=0 ctermbg=1 cterm=none
#
RULES = [
    # WORKSPACE
    ['Cursor',      'BLACK',        'WHITE',        'bold'],
    ['LineNr',      'GRAY',         'DARK_GRAY',    'none'],
    ['NonText',     'DARK_GRAY',    'BACKGROUND',   'none'],
    ['Normal',      'FOREGROUND',   'BACKGROUND',   'none'],
    ['Visual',      'BACKGROUND',   'FOREGROUND',   'none'],
    ['VisualNOS',   'BACKGROUND',   'FOREGROUND',   'none'],
    ['StatusLine',  'GRAY',         'DARK_GRAY',    'bold'],
    ['StatusLineNC','GRAY',         'DARK_GRAY',    'none'],
    ['StatusLineTerm',  'BACKGROUND','DARK_GREEN',  'bold'],
    ['StatusLineTermNC','BACKGROUND','DARK_GREEN',  'none'],
    ['VertSplit',   'GRAY',         'DARK_GRAY',    'none'],
    ['TabLine',     'WHITE',        'GRAY',         'bold'],
    ['TabLineFill', 'DARK_GRAY',    'BACKGROUND',   'none'],
    ['TabLineSel',  'DARK_GREEN',   'BACKGROUND',   'none'],
    ['Title',       'WHITE',        'BACKGROUND',   'none'],
    ['Directory',   'DARK_BLUE',    'BACKGROUND',   'bold'],
    ['Search',      'BACKGROUND',   'YELLOW',       'none'],
    ['Pmenu',       'FOREGROUND',   'BACKGROUND',   'none'],
    ['PmenuSel',    'BACKGROUND',   'YELLOW',       'bold'],
    ['PmenuSbar',   'FOREGROUND',   'FOREGROUND',   'none'],
    ['PmenuThumb',  'FOREGROUND',   'LIGHT_GRAY',   'none'],
    ['MoreMsg',     'DARK_GREEN',   'BACKGROUND',   'none'],
    ['Question',    'DARK_GREEN',   'BACKGROUND',   'none'],

    # COMMENT
    ['Comment',     'DARK_GREEN',   'BACKGROUND',   'none'],
    ['Todo',        'BACKGROUND',   'DARK_GREEN',   'bold'],
    ['SpecialComment', 'DARK_GREEN','BACKGROUND',   'bold'],

    # VARIABLE TYPES
    ['Boolean',     'LIGHT_RED',    'BACKGROUND',   'none'],
    ['Character',   'LIGHT_RED',    'BACKGROUND',   'bold'], 
    ['Constant',    'LIGHT_BLUE',   'BACKGROUND',   'bold'],
    ['Float',       'DARK_BLUE',    'BACKGROUND',   'none'],
    ['Number',      'DARK_BLUE',    'BACKGROUND',   'none'],
    ['String',      'LIGHT_RED',    'BACKGROUND',   'none'],
    
    # IDENTIFIER
    ['Function',    'YELLOW',       'BACKGROUND',   'none'],
    ['Identifier',  'WHITE',        'BACKGROUND',   'none'],

    # STATEMENT
    ['Conditional', 'ORANGE',       'BACKGROUND',   'bold'],
    ['Statement',   'YELLOW',       'BACKGROUND',   'none'],
    ['Repeat',      'ORANGE',       'BACKGROUND',   'bold'],
    ['Label',       'YELLOW',       'BACKGROUND',   'underline'],
    ['Operator',    'YELLOW',       'BACKGROUND',   'none'],
    ['Keyword',     'YELLOW',       'BACKGROUND',   'none'],
    ['Exception',   'YELLOW',       'BACKGROUND',   'bold'],

    # PREPROC
    ['PreCondit',   'LIGHT_VIOLET', 'BACKGROUND',   'bold'],
    ['PreProc',     'LIGHT_VIOLET', 'BACKGROUND',   'bold'],
    ['Include',     'LIGHT_VIOLET', 'BACKGROUND',   'none'],
    ['Define',      'LIGHT_VIOLET', 'BACKGROUND',   'bold'],
    ['Macro',       'LIGHT_VIOLET', 'BACKGROUND',   'bold'],

    # TYPE
    ['Type',        'LIGHT_AQUA',   'BACKGROUND',   'bold'],
    ['Typedef',     'LIGHT_AQUA',   'BACKGROUND',   'bold'],
    ['StorageClass','DARK_AQUA',    'BACKGROUND',   'bold'],
    ['Structure',   'DARK_AQUA',    'BACKGROUND',   'bold'],

    # SPECIAL
    ['Debug',       'LIGHT_GREEN',  'BACKGROUND',   'underline'],
    ['Delimiter',   'LIGHT_GRAY',   'BACKGROUND',   'none'],
    ['MatchParen',  'BACKGROUND',   'DARK_AQUA',    'bold'],
    ['Special',     'LIGHT_RED',    'BACKGROUND',   'bold'],
    ['SpecialChar', 'LIGHT_RED',    'BACKGROUND',   'bold'],
    ['SpecialKey',  'LIGHT_GREEN',  'BACKGROUND',   'none'],
    ['Tag',         'YELLOW',       'BACKGROUND',   'none'],

    # SPELLING
    ['SpellBad',    'FOREGROUND',   'DARK_RED',     'bold'],
    ['SpellCap',    'FOREGROUND',   'DARK_BLUE',    'bold'],

    # DIFF
    ['DiffFile',    'LIGHT_GRAY',   'BACKGROUND',   'none'],
    ['DiffNewFile', 'BACKGROUND',   'DARK_GREEN',   'none'],
    ['DiffOldFile', 'BACKGROUND',   'LIGHT_RED',    'none'],
    ['DiffAdded',   'DARK_GREEN',   'BACKGROUND',   'none'],
    ['DiffRemoved', 'LIGHT_RED',    'BACKGROUND',   'none'],
    ['DiffChange',  'YELLOW',       'BACKGROUND',   'bold'],
    ['DiffText',    'BACKGROUND',   'YELLOW',       'none'],
    ['DiffLine',    'DARK_AQUA',    'BACKGROUND',   'none'],
    ['Added',       'LIGHT_GREEN',  'BACKGROUND',   'none'],
    ['Removed',     'LIGHT_RED',    'BACKGROUND',   'none'],

    # UNDERLINED
    ['Underlined',  'LIGHT_BLUE',   'BACKGROUND',   'underline'],

    # ERROR
    ['Error',       'WHITE',        'DARK_RED',     'none'],
    ['ErrorMsg',    'WHITE',        'DARK_RED',     'none'],
    ['WarningMsg',  'WHITE',        'DARK_RED',     'none'],

    # HTML SPECIFIC
    ['htmlArg',     'DARK_AQUA',    'BACKGROUND',   'none'],
    ['htmlTag',     'LIGHT_GRAY',   'BACKGROUND',   'none'],
    ['htmlEndTag',  'LIGHT_GRAY',   'BACKGROUND',   'none'],
    ['htmlTagN',    'YELLOW',       'BACKGROUND',   'none'],
    ['htmlTagName', 'YELLOW',       'BACKGROUND',   'none'],
    ['htmlSpecialTagName', 'YELLOW','BACKGROUND',   'none'],

    # XML SPECIFIC
    ['xmlAttrib',   'DARK_AQUA',    'BACKGROUND',   'none'],
    ['xmlTag',      'LIGHT_GRAY',   'BACKGROUND',   'none'],
    ['xmlEndTag',   'LIGHT_GRAY',   'BACKGROUND',   'none'],
    ['xmlTagName',  'YELLOW',       'BACKGROUND',   'none'],
    
    # PYTHON SPECIFIC
    ['pythonDecorator', 'DARK_VIOLET', 'BACKGROUND','bold']
]




def fmt_color_table(colorlib):
    """
    Return a pprinted string of the given `colorlib` lookup table
    """
    fmt = []
    for key, value in colorlib.items():
        fmt.append(f"Color: {key.lower():<12}  {value['gui']}  {value['cterm']:>3}")

    return '\n'.join(fmt)

def mkcolorlib(gui_colors, cterm_colors):
    """
    Generate a color library hash table, where each key is a color option,
    and each value is a structure containing the appropriate gui hex color
    code, or the cterm color code.
    """
    gui_dict = dict(gui_colors)
    cterm_dict = dict(cterm_colors)

    keys = gui_dict.keys() | cterm_dict.keys()

    res = {}
    for key in keys:
        res[key] = {
            'gui': gui_dict.get(key, 'NONE'),
            'cterm': cterm_dict.get(key, 'NONE')}

    return res

def read_csv(fname):
    """
    Read input csv files which do not have header rows
    """
    with open(fname, 'r') as f:
        reader = csv.reader(f)

        return list(reader)

def read_txt(fname):
    """
    Read input txt file and return document body
    """
    with open(fname, 'r') as f:
        text = f.read()

        return text


if __name__ == '__main__':

    co_gui = read_csv("./data/colors_gui.csv")
    co_256 = read_csv("./data/colors_256.csv")

    docstr = read_txt("./doc/hubs.txt")

    colib = mkcolorlib(co_gui, co_256)

    #
    # Templating workflow
    #   1. Generate documentation
    #   2. Generate syntax definition
    #   3. Generate highlight rules
    #
    # ** Currently no link rules defined **
    #

    # Generate colorscheme documentation
    for line in docstr.format(COLORTABLE=fmt_color_table(colib)).split('\n'):
        if line:
            print(f'" {line}')
        else:
            print('"')

    print()

    # Generate syntax definition
    print(("set background=dark\n"
        "hi clear\n"
        "if exists('syntax_on')\n"
        "    syntax reset\n"
        "endif\n"
        "\n"
        "let g:colors_name='hubs'\n"))

    # Generate highlight rule definitions
    print("if has('gui_running') || &t_Co == 256")

    for rule in RULES:
        fg_key = rule[1]
        bg_key = rule[2]

        # FIXME: These were special keys for FG/BG
        if fg_key == 'FOREGROUND':
            fg_key = 'WHITE'
        elif fg_key == 'BACKGROUND':
            fg_key = 'BLACK'

        # FIXME: These were special keys for FG/BG
        if bg_key == 'BACKGROUND':
            bg_key = 'BLACK'
        elif bg_key == 'FOREGROUND':
            bg_key = 'WHITE'

        fg = colib[fg_key] if fg_key != 'none' else NORULE
        bg = colib[bg_key] if bg_key != 'none' else NORULE

        print(("    hi {cls} "
            "guifg={fg_g} guibg={bg_g} gui={dec} "
            "ctermfg={fg_t} ctermbg={bg_t} cterm={dec}").format(
                cls=rule[0],
                fg_g=fg['gui'],
                bg_g=bg['gui'],
                fg_t=fg['cterm'],
                bg_t=bg['cterm'],
                dec=rule[3]))

    print("endif")
