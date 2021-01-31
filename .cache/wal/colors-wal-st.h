const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#06181F", /* black   */
  [1] = "#698C9C", /* red     */
  [2] = "#9688A6", /* green   */
  [3] = "#B18BAD", /* yellow  */
  [4] = "#CE94B9", /* blue    */
  [5] = "#D8A0BA", /* magenta */
  [6] = "#B1A6C8", /* cyan    */
  [7] = "#e4c7d9", /* white   */

  /* 8 bright colors */
  [8]  = "#9f8b97",  /* black   */
  [9]  = "#698C9C",  /* red     */
  [10] = "#9688A6", /* green   */
  [11] = "#B18BAD", /* yellow  */
  [12] = "#CE94B9", /* blue    */
  [13] = "#D8A0BA", /* magenta */
  [14] = "#B1A6C8", /* cyan    */
  [15] = "#e4c7d9", /* white   */

  /* special colors */
  [256] = "#06181F", /* background */
  [257] = "#e4c7d9", /* foreground */
  [258] = "#e4c7d9",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
