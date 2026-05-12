# =============================================================================
# Figure 2 — Forest Plot  +  Figure 4 — Funnel Plot  |  v7
# Key fix: colours applied via overlay graphics after forest() call
# This works in ALL metafor versions regardless of parameter name changes
# =============================================================================

library(metafor)
library(ggplot2)
library(ggrepel)

# ─────────────────────────────────────────────────────────────────────────────
# DATA
# ─────────────────────────────────────────────────────────────────────────────
studies <- data.frame(
  author  = c("Liu 2019", "Santocchi 2020", "Billeci 2023",
              "Mazzone 2024", "Kong 2021", "Narula Khanna 2025"),
  outcome = c("(ABC-T)", "(VABS-II)", "(ADOS-CSS)",
              "(SRS)", "(ABC)", "(SRS-2)"),
  yi      = c(-0.160, -0.388, -0.340, -0.254, -0.835, -0.242),
  sei     = c( 0.241,  0.198,  0.203,  0.221,  0.335,  0.144),
  rob     = c("Some Concerns", "Some Concerns", "Some Concerns",
              "Low", "Some Concerns", "High"),
  stringsAsFactors = FALSE
)

res <- rma(yi = yi, sei = sei, data = studies,
           method = "DL", measure = "SMD", slab = author)

w       <- weights(res)
psize   <- rep(0.8, nrow(studies))  # uniform size

rob_col <- ifelse(studies$rob == "Low",            "#2CA02C",
           ifelse(studies$rob == "Some Concerns",  "#FF7F0E",
                                                   "#D62728"))

# =============================================================================
# FIGURE 2 — FOREST PLOT
# =============================================================================
tiff("forest_plot_figure2.tiff",
     width = 9, height = 6, units = "in", res = 300, compression = "lzw")

par(mar = c(9, 0, 4.5, 1))

# --- Step 1: draw base forest plot in all-navy (CI lines, squares, borders) ---
# addfit=TRUE draws the pooled row and mlab label; diamond colour fixed below
suppressWarnings(
  forest(res,
         xlim        = c(-4.0, 1.8),
         at          = c(-2.0, -1.5, -1.0, -0.5, 0, 0.5),
         refline     = 0,
         col         = "navy",
         border      = "navy",
         psize       = psize,
         efac        = c(1, 2.5),
         ilab        = studies$outcome,
         ilab.xpos   = -2.55,
         ilab.pos    = 4,
         showweights = TRUE,
         header      = c("Study (Outcome)", "g [95% CI]  Weight"),
         xlab        = "",            # added manually below
         mlab        = "Pooled estimate",
         addfit      = TRUE,
         col.diamond    = "navy",
         border.diamond = "navy",
         cex      = 0.82,
         cex.lab  = 0.84,
         cex.axis = 0.80
  )
)

# --- Step 2: overlay RoB-coloured squares on top of the navy defaults ---
# y-positions: in metafor default layout, study i is at y = k − i + 1
# (study 1 = Liu 2019 at top → y=6; study 6 = NK 2025 at bottom → y=1)
y_study <- res$k:1   # c(6, 5, 4, 3, 2, 1)

points(
  x   = studies$yi,
  y   = y_study,
  pch = 15,                    # solid square
  col = rob_col,
  cex = 1.4            # matches metafor's internal square sizing
)

# --- Step 3: overlay the navy diamond (fixes orange bug in metafor 5.0-1) ---
# Pooled CI: [-0.487, -0.105], centre = -0.296; diamond row at y = -1
# Half-height ≈ 0.38 (empirically matched to efac=2.5 at this figure size)
x_d <- c(-0.487, -0.296, -0.105, -0.296)
y_d <- c(-1,     -0.62,  -1,     -1.38)
polygon(x_d, y_d, col = "navy", border = "navy")

# --- Step 4: text annotations ---
text(-4.0, -1.6, pos = 4, cex = 0.75,
     bquote(italic(I)^2 ~ "= 0%;  " ~ italic(p) ~ "= 0.002"))

mtext("Forest Plot \u2014 Probiotic RCTs in ASD (k = 6)",
      side = 3, line = 2.8, cex = 1.05, font = 2, col = "navy")
mtext("Random-Effects, DerSimonian-Laird, Hedges' g",
      side = 3, line = 1.4, cex = 0.88, font = 2, col = "navy")

# X-axis label at line 3
mtext(expression("Hedges'" ~ italic(g) ~
      "(\u2190 favours intervention  |  favours control \u2192)"),
      side = 1, line = 3.2, cex = 0.84)

# --- Step 5: RoB legend via mtext — immune to positional overlap ---
par(xpd = NA)
mtext("\u25A0", side = 1, line = 6.5, at = -1.8,  col = "#2CA02C", cex = 1.4)
mtext("Low RoB",       side = 1, line = 6.5, at = -1.55, col = "black",   cex = 0.82, adj = 0)
mtext("\u25A0", side = 1, line = 6.5, at = -0.4,  col = "#FF7F0E", cex = 1.4)
mtext("Some Concerns", side = 1, line = 6.5, at = -0.15, col = "black",   cex = 0.82, adj = 0)
mtext("\u25A0", side = 1, line = 6.5, at =  1.1,  col = "#D62728", cex = 1.4)
mtext("High RoB",      side = 1, line = 6.5, at =  1.35, col = "black",   cex = 0.82, adj = 0)
par(xpd = FALSE)

dev.off()
cat("Saved: forest_plot_figure2.tiff\n")

# =============================================================================
# FIGURE 4 — FUNNEL PLOT  (slightly larger than v6)
# =============================================================================

obs_df <- data.frame(
  study = c("Liu 2019", "Santocchi 2020", "Billeci 2023",
            "Mazzone 2024", "Kong 2021", "NK 2025"),
  yi    = studies$yi,
  sei   = studies$sei,
  type  = "Observed studies",
  stringsAsFactors = FALSE
)

imp_df <- data.frame(
  study = "Imputed",
  yi    = -0.058,
  sei   =  0.241,
  type  = "Imputed study (trim-fill)",
  stringsAsFactors = FALSE
)

all_pts <- rbind(obs_df, imp_df)

se_seq <- seq(0, 0.42, length.out = 400)
f_poly <- data.frame(
  x = c(-0.296 - 1.96 * se_seq, rev(-0.296 + 1.96 * se_seq)),
  y = c(se_seq, rev(se_seq))
)

ann_text <- paste0(
  "Egger's test: t = \u22121.709, p = 0.163\n",
  "Trim-and-fill: 1 study imputed\n",
  "Adjusted g = \u22120.262 [\u22120.448, \u22120.077]"
)

p_funnel <- ggplot() +

  geom_polygon(data = f_poly, aes(x = x, y = y),
               fill = "#CCDFF5", colour = NA, alpha = 0.75) +

  geom_vline(aes(xintercept = -0.296,
                 colour = "Pooled g = \u22120.296"),
             linewidth = 0.8, show.legend = TRUE) +
  geom_vline(aes(xintercept = -0.262,
                 colour = "Trim-and-fill g = \u22120.262"),
             linetype = "dashed", linewidth = 0.8, show.legend = TRUE) +

  geom_point(data = all_pts,
             aes(x = yi, y = sei, fill = type, shape = type),
             size = 3.5, colour = "white", stroke = 0.3) +

  geom_text_repel(
    data          = obs_df,
    aes(x = yi, y = sei, label = study),
    colour        = "#1F3864",
    size          = 3.0,
    seed          = 42,
    box.padding   = 0.5,
    point.padding = 0.3,
    force         = 3,
    force_pull    = 0.5,
    max.overlaps  = 20,
    segment.colour = "#1F3864",
    segment.size   = 0.3,
    segment.alpha  = 0.6,
    min.segment.length = 0.2
  ) +

  annotate("label",
           x = 0.65, y = 0.01,
           label = ann_text,
           hjust = 1, vjust = 0,
           size = 2.8, lineheight = 1.3,
           fill = "white", colour = "#1F3864",
           label.size = 0.4,
           label.padding = unit(0.4, "lines")) +

  scale_y_reverse(limits = c(0.44, 0),
                  breaks  = c(0, 0.1, 0.2, 0.3, 0.4),
                  expand  = expansion(add = c(0, 0.01))) +

  scale_x_continuous(limits = c(-2.2, 0.80),
                     breaks  = c(-2.0, -1.5, -1.0, -0.5, 0, 0.5)) +

  scale_fill_manual(name   = NULL,
                    values = c("Observed studies"          = "#1F3864",
                               "Imputed study (trim-fill)" = "#D62728")) +

  scale_shape_manual(name   = NULL,
                     values = c("Observed studies"          = 21,
                                "Imputed study (trim-fill)" = 21)) +

  scale_colour_manual(name   = NULL,
                      values = c("Pooled g = \u22120.296"        = "#1F3864",
                                 "Trim-and-fill g = \u22120.262" = "#1F3864")) +

  labs(title    = "Funnel Plot with Trim-and-Fill Analysis",
       subtitle = "Primary Probiotic Pool (k = 6)",
       x        = "Hedges' g",
       y        = "Standard Error") +

  guides(
    fill   = guide_legend(override.aes = list(size = 4)),
    shape  = guide_legend(override.aes = list(size  = 4,
                          fill = c("#1F3864", "#D62728"))),
    colour = guide_legend(override.aes = list(linetype = c("solid", "dashed"),
                                              linewidth = 0.8))
  ) +

  theme_classic(base_size = 12) +
  theme(
    plot.title         = element_text(face = "bold", hjust = 0.5,
                                      size = 12, colour = "#1F3864"),
    plot.subtitle      = element_text(hjust = 0.5, size = 10,
                                      colour = "#1F3864"),
    axis.title         = element_text(size = 11),
    axis.text          = element_text(size = 10),
    legend.position    = "bottom",
    legend.box         = "vertical",
    legend.key.width   = unit(1.6, "cm"),
    legend.text        = element_text(size = 9),
    legend.background  = element_rect(fill = "white", colour = "grey70",
                                      linewidth = 0.4),
    legend.margin      = margin(5, 8, 5, 8),
    panel.grid.major.x = element_line(colour = "grey88", linewidth = 0.3),
    panel.grid.minor   = element_blank(),
    plot.margin        = margin(12, 16, 10, 10)
  )

# Slightly larger than v6 (6.5 × 6.0 inches vs 5.5 × 5.2)
ggsave("funnel_plot_figure4.tiff",
       plot        = p_funnel,
       width       = 6.5,
       height      = 6.0,
       units       = "in",
       dpi         = 300,
       compression = "lzw")

cat("Saved: funnel_plot_figure4.tiff\n")
cat("Done. Run getwd() to confirm location.\n")
