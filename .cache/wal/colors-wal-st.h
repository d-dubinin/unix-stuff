const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#303036", /* black   */
  [1] = "#9b6546", /* red     */
  [2] = "#6f8583", /* green   */
  [3] = "#a19373", /* yellow  */
  [4] = "#687183", /* blue    */
  [5] = "#796a70", /* magenta */
  [6] = "#47676e", /* cyan    */
  [7] = "#c4c4b5", /* white   */

  /* 8 bright colors */
  [8]  = "#585858",  /* black   */
  [9]  = "#9b6546",  /* red     */
  [10] = "#6f8583", /* green   */
  [11] = "#a19373", /* yellow  */
  [12] = "#687183", /* blue    */
  [13] = "#796a70", /* magenta */
  [14] = "#47676e", /* cyan    */
  [15] = "#c4c4b5", /* white   */

  /* special colors */
  [256] = "#303036", /* background */
  [257] = "#c4c4b5", /* foreground */
  [258] = "#c4c4b5",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
