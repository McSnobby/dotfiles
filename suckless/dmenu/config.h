/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 0;                      /* -b  option; if 0, dmenu appears at bottom     */
static int centered = 1;                    /* -c option; centers dmenu on screen */
static int min_width = 500;                    /* minimum width when centered */
static const float menu_height_ratio = 4.0f;  /* This is the ratio used in the original calculation */
static const unsigned int alpha = 0xE6;     /* Amount of opacity. 0xff is opaque             */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"FiraCodeNerdFontMono:size=10"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */


static const char nord_polar_darkest_blue[]       = "#2E3440";
static const char nord_polar_darker_blue[]        = "#3B4252";
static const char nord_polar_lighter_dark_blue[]  = "#434C5E";
static const char nord_polar_lightest_dark_blue[] = "#4C566A";
static const char nord_dark_white[]               = "#D8DEE9";
static const char nord_darker_white[]             = "#E5E9F0";
static const char nord_white[]                    = "#ECEFF4";
static const char nord_white_dark[]               = "#d8dee9";
static const char nord_frost_light_blue[]         = "#8FBCBB";
static const char nord_frost_darker_light_blue[]  = "#88C0D0";
static const char nord_frost_lighter_dark_blue[]  = "#81A1C1";
static const char nord_frost_dark_blue[]          = "#5E81AC";
static const char nord_red[]                      = "#BF616A";
static const char nord_orange[]                   = "#D08770";
static const char nord_yellow[]                   = "#EBCB8B";
static const char nord_green[]                    = "#A3BE8C";
static const char nord_purple[]                   = "#B48EAD";

static const char *colors[SchemeLast][2] = {
    /*     fg         bg       */
    [SchemeNorm] = { nord_white, nord_polar_darkest_blue },
    [SchemeSel]  = { nord_polar_lighter_dark_blue, nord_frost_darker_light_blue },
	[SchemeOut] = { nord_frost_light_blue,  nord_polar_darkest_blue },
};

static const unsigned int alphas[SchemeLast][2] = {
	[SchemeNorm] = { OPAQUE, alpha },
	[SchemeSel] = { OPAQUE, alpha },
	[SchemeOut] = { OPAQUE, alpha },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 10;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
