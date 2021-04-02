static const char norm_fg[] = "#c4c4b5";
static const char norm_bg[] = "#303036";
static const char norm_border[] = "#585858";

static const char sel_fg[] = "#c4c4b5";
static const char sel_bg[] = "#6f8583";
static const char sel_border[] = "#c4c4b5";

static const char urg_fg[] = "#c4c4b5";
static const char urg_bg[] = "#9b6546";
static const char urg_border[] = "#9b6546";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
