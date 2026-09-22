/// Width breakpoints, roughly matching Material 3's window size classes.
/// A screen checks its own width against these rather than assuming
/// "phone" or "tablet" from the device type.
class Breakpoints {
  Breakpoints._();

  static const compact = 600.0; // phones, portrait
  static const medium = 840.0; // large phones landscape, small tablets
  // >= medium counts as "expanded" — full-size tablets, phones landscape wide
}

/// How many grid columns to show on the Home topic grid at a given width.
int gridColumnsFor(double width) {
  if (width >= Breakpoints.medium) return 4;
  if (width >= Breakpoints.compact) return 3;
  return 2;
}
