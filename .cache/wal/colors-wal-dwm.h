static const char norm_fg[] = "#e4c7d9";
static const char norm_bg[] = "#06181F";
static const char norm_border[] = "#9f8b97";

static const char sel_fg[] = "#e4c7d9";
static const char sel_bg[] = "#9688A6";
static const char sel_border[] = "#e4c7d9";

static const char urg_fg[] = "#e4c7d9";
static const char urg_bg[] = "#698C9C";
static const char urg_border[] = "#698C9C";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
