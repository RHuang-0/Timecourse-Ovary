library(ggplot2)
library(openxlsx)

# Read the Excel file
data <- read.xlsx("CC1 DEA Chart copy.xlsx")  # Update with your file path and sheet name
data$plotP <- -log10(data$`Adjusted.P-value`)
data <- data[order(data$plotP,decreasing = TRUE), ]
# Create a dot plot using ggplot2
ggplot(data, aes(x = `plotP`, y = reorder(Term, -`plotP`))) +
  geom_point(aes(size = `Gene.number`, color = Category)) +
  scale_size_continuous(range = c(3, 10), limits = c(0, 30)) +
  scale_color_manual(values = c("Signal Transduction" = '#7095dc', "Chemotaxis" = '#36dee6', "Nervous System" = '#d9a745', 'Immune' = '#44549c')) +  # Update with appropriate shape values
  labs(title = "",
       x = "-log10(Adjusted P-value)",
       y = "Term",
       size = "Gene number",
       color = "Category") +
  theme_classic() +
  #scale_x_continuous(limits = c(0, 1.4)) +
  coord_fixed(ratio = 1)
  #scale_x_log10()




data <- read.xlsx("CC2 DEA Chart copy.xlsx")  # Update with your file path and sheet name
data$plotP <- -log10(data$`Adjusted.P-value`)
data <- data[order(data$plotP,decreasing = TRUE), ]
# Create a dot plot using ggplot2
ggplot(data, aes(x = `plotP`, y = reorder(Term, -`plotP`))) +
  geom_point(aes(size = `Gene.number`, color = Category)) +
  scale_size_continuous(range = c(3, 10), limits = c(0, 30)) +
  scale_color_manual(values = c("Cholesterol Metabolism" = '#d34158')) +  # Update with appropriate shape values
  labs(title = "",
       x = "-log10(Adjusted P-value)",
       y = "Term",
       size = "Gene number",
       color = "Category") +
  theme_classic() +
  #scale_x_continuous(limits = c(0, 1.4)) +
  coord_fixed(ratio = 0.8)
#scale_x_log10()





data <- read.xlsx("SC1 DEA copy.xlsx")  # Update with your file path and sheet name
data$plotP <- -log10(data$`Adjusted.P-value`)
ggplot(data, aes(x = `plotP`, y = reorder(Term, -`plotP`))) +
  geom_point(aes(size = `Gene.Number`, color = Category)) +
  scale_size_continuous(range = c(3, 10), limits = c(0, 30)) +
  scale_color_manual(values = c("ECM Formation" = '#6e701e', 
                                "Smooth muscle contraction/relaxation" = '#e2769a', 
                                "Hormone cycling" = '#499331', 'Immune' = '#44549c')) +  # Update with appropriate shape values
  labs(title = "",
       x = "-log10(Adjusted P-value)",
       y = "Term",
       size = "Gene number",
       color = "Category") +
  theme_classic() +
  #scale_x_continuous(limits = c(0, 1.4)) +
  coord_fixed(ratio = 0.4)
#scale_x_log10()




data <- read.xlsx("SC2 DEA Chart copy.xlsx")  # Update with your file path and sheet name
data$plotP <- -log10(data$`Adjusted.P-value`)
ggplot(data, aes(x = `plotP`, y = reorder(Term, -`plotP`))) +
  geom_point(aes(size = `Gene.number`, color = Category)) +
  scale_size_continuous(range = c(3, 10), limits = c(0, 30)) +
  scale_color_manual(values = c("Angiogenesis" = '#3d6d63', 
                                "Signal Transduction" = '#e293be', 
                                "Hormone production" = '#b5b7e7', 
                                'Immune' = '#44549c',
                                'Cell differentiation' = '#5196be',
                                'Protein modification' = '#d5842c')) +  # Update with appropriate shape values
  labs(title = "",
       x = "-log10(Adjusted P-value)",
       y = "Term",
       size = "Gene number",
       color = "Category") +
  theme_classic() +
  #scale_x_continuous(limits = c(0, 1.4)) +
  coord_fixed(ratio = 0.4)
#scale_x_log10()



data <- read.xlsx("active_cl.xlsx")  # Update with your file path and sheet name
data$plotP <- -log10(data$`Adjusted.P-value`)
ggplot(data, aes(x = `plotP`, y = reorder(Term, -`plotP`))) +
  geom_point(aes(size = `Gene.number`, color = Category)) +
  scale_size_continuous(range = c(3, 10), limits = c(0, 30)) +
  scale_color_manual(values = c( 
                                "Signal Transduction" = '#e293be', 
                                "Extracellular matrix formation" = '#855728', 
                                'Immune' = '#44549c',
                                'Muscle contraction/relaxation' = '#dad0a1')) +  # Update with appropriate shape values
  labs(title = "",
       x = "-log10(Adjusted P-value)",
       y = "Term",
       size = "Gene number",
       color = "Category") +
  theme_classic() +
  #scale_x_continuous(limits = c(0, 1.4)) +
  coord_fixed(ratio = 3)
#scale_x_log10()





data <- read.xlsx("luteal_cells.xlsx")  # Update with your file path and sheet name
data$plotP <- -log10(data$`Adjusted.P-value`)
ggplot(data, aes(x = `plotP`, y = reorder(Term, -`plotP`))) +
  geom_point(aes(size = `Gene.number`, color = Category)) +
  scale_size_continuous(range = c(3, 10), limits = c(0, 30)) +
  scale_color_manual(values = c( 
    "lipid metabolism" = '#d17d75', 
    "electron transport chain" = '#5e222a', 
    'redox homeostasis' = '#6dbed3')) +  # Update with appropriate shape values
  labs(title = "",
       x = "-log10(Adjusted P-value)",
       y = "Term",
       size = "Gene number",
       color = "Category") +
  theme_classic() +
  #scale_x_continuous(limits = c(0, 1.4)) +
  coord_fixed(ratio = 0.9)
#scale_x_log10()





data <- read.xlsx("theca_00.xlsx")  # Update with your file path and sheet name
data$plotP <- -log10(data$`Adjusted.P-value`)
data <- data[order(data$plotP,decreasing = TRUE), ]
ggplot(data, aes(x = `plotP`, y = reorder(Term, -`plotP`))) +
  geom_point(aes(size = `Gene.number`, color = Category)) +
  scale_size_continuous(range = c(3, 10), limits = c(0, 30)) +
  scale_color_manual(values = c( 
    'Immune' = '#44549c',
    "Metal Homeostasis" = '#4f2038', 
    'Plasma Membrane' = '#5e22ba',
    'Cell Proliferation'='#81e833',
    'Glycolysis'='#f96c06')) +  # Update with appropriate shape values
  labs(title = "",
       x = "-log10(Adjusted P-value)",
       y = "Term",
       size = "Gene number",
       color = "Category") +
  theme_classic() +
  #scale_x_continuous(limits = c(0, 1.4)) +
  coord_fixed(ratio = 0.9)
#scale_x_log10()


data <- read.xlsx("theca_04.xlsx")  # Update with your file path and sheet name
data$plotP <- -log10(data$`Adjusted.P-value`)
ggplot(data, aes(x = `plotP`, y = reorder(Term, -`plotP`))) +
  geom_point(aes(size = `Gene.number`, color = Category)) +
  scale_size_continuous(range = c(3, 10), limits = c(0, 30)) +
  scale_color_manual(values = c( 
    'Signal Transduction' = '#7095dc',
    "Chemotaxis" = '#36dee6')) +  # Update with appropriate shape values
  labs(title = "",
       x = "-log10(Adjusted P-value)",
       y = "Term",
       size = "Gene number",
       color = "Category") +
  theme_classic() +
  #scale_x_continuous(limits = c(0, 1.4)) +
  coord_fixed(ratio = 0.05)
#scale_x_log10()


data <- read.xlsx("theca_12.xlsx")  # Update with your file path and sheet name
data$plotP <- -log10(data$`Adjusted.P-value`)
ggplot(data, aes(x = `plotP`, y = reorder(Term, -`plotP`))) +
  geom_point(aes(size = `Gene.number`, color = Category)) +
  scale_size_continuous(range = c(3, 10), limits = c(0, 30)) +
  scale_color_manual(values = c( 
    'Signal Transduction' = '#7095dc',
    "Ovulation" = '#e92b60',
    'Hormone production' = '#b5b7e7')) +  # Update with appropriate shape values
  labs(title = "",
       x = "-log10(Adjusted P-value)",
       y = "Term",
       size = "Gene number",
       color = "Category") +
  theme_classic() +
  #scale_x_continuous(limits = c(0, 1.4)) +
  coord_fixed(ratio = 0.8)
#scale_x_log10()



data <- read.xlsx("theca_mix.xlsx")  # Update with your file path and sheet name
data$plotP <- -log10(data$`Adjusted.P-value`)
ggplot(data, aes(x = `plotP`,y = reorder(Term, -`plotP`))) +
  geom_point(aes(size = `Gene.number`, color = Category)) +
  scale_size_continuous(range = c(3, 10), limits = c(0, 30)) +
  scale_color_manual(values = c( 
    'Lipid metabolism' = '#d17d75',
    'Immune' = '#44549c',
    'Hormone production' = '#b5b7e7',
    'Phosphorous metabolism' = '#e7e58a'
    )) +  # Update with appropriate shape values
  labs(title = "",
       x = "-log10(Adjusted P-value)",
       y = "Term",
       size = "Gene number",
       color = "Category") +
  theme_classic() +
  #scale_x_continuous(limits = c(0, 1.4)) +
  coord_fixed(ratio = 0.4)
#scale_x_log10()


data <- read.xlsx("draw.xlsx")  # Update with your file path and sheet name
data$plotP <- -log10(data$`Adjusted.P-value`)
ggplot(data, aes(x = `plotP`,y = reorder(Term, -`plotP`))) +
  geom_point(aes(size = `Gene.number`, color = Category)) +
  scale_size_continuous(range = c(3, 10), limits = c(0, 30)) +
  scale_color_manual(values = c( 
    'Homeostasis' = '#6dbed3',
    'Angiogenesis' = '#3d6d63',
    'ECM formation' = '#6e701e',
    'Transport' = '#5e222a',
    "Prostaglandin synthesis" = "#ab42bf",
    "Lipid metabolism" = '#d17d75',
    "Exosome assembly" = "#4354ca"
  )) +  # Update with appropriate shape values
  labs(title = "",
       x = "-log10(Adjusted P-value)",
       y = "Term",
       size = "Gene number",
       color = "Category") +
  theme_classic() +
  #scale_x_continuous(limits = c(0, 1.4)) +
  coord_fixed(ratio = 0.8)
#scale_x_log10()

data <- read.xlsx("draw2.xlsx")  # Update with your file path and sheet name
data$plotP <- -log10(data$`Adjusted.P-value`)
ggplot(data, aes(x = `plotP`,y = reorder(Term, -`plotP`))) +
  geom_point(aes(size = `Gene.number`, color = Category)) +
  scale_size_continuous(range = c(3, 10), limits = c(0, 30)) +
  scale_color_manual(values = c( 
    'Translation' = '#e79e2f',
    'Metabolism' = '#78ad45',
    'Protein localization' = '#d94cb3',
    'Ovulation' = '#e92b60',
    "Signal transduction" = '#7095dc',
    "Cell-cell interaction" = '#9b8de9',
    "Cell homeostasis" = '#6dbed3'
  )) +  # Update with appropriate shape values
  labs(title = "",
       x = "-log10(Adjusted P-value)",
       y = "Term",
       size = "Gene number",
       color = "Category") +
  theme_classic() +
  #scale_x_continuous(limits = c(0, 1.4)) +
  coord_fixed(ratio = 2.3)
#scale_x_log10()




library(openxlsx)
sheets_to_extract <- c("Cumulus 1", "Cumulus 2", "Granulosa 1", "Granulosa 2", "Granulosa 3",
                       'Luteal 1','Luteal 2', 'Stroma 1','Stroma 2', 'Theca 1','Theca 2')
df_list <- list()
# Loop through the sheets and read them into data frames
for (sheet_name in sheets_to_extract) {
  df <- read.xlsx("tables.xlsx", sheet = sheet_name)
  df_list[[sheet_name]] <- df
}


df_list
count_categories <- function(df) {
  table(df$category)
}

# Apply the function to each data frame in the list
category_counts <- lapply(df_list, count_categories)
category_counts

early <- c("Cumulus 1","Granulosa 1","Granulosa 2",'Luteal 1','Stroma 1','Theca 1')
late <- c("Cumulus 2","Granulosa 3",'Luteal 2','Stroma 2','Theca 2')

r1 <- c()
for (sheet_name in early) {
  r <- table(df_list[[sheet_name]]$Category)
  r1 <- rbind(r, r1)
}
addmargins(r + r1)
r<-table(df_list[["Cumulus 1"]]$Category)
r1<-table(df_list[["Granulosa 1"]]$Category)
r1




labels1 <- c("Cell Migration", "Lipid Metabolism", "Signal Transduction", 
             "Hormone Production", "ECM Formation", "Metal Homeostasis", 
             "Cell Homeostasis", "Others")
counts1 <- c(2, 8, 7, 4, 7, 2,2, 5)

# Data for the second pie chart
labels2 <- c("Lipid Metabolism", "Signal Transduction", "Hormone Production", 
             "ECM Formation", "Ovulation", "Others")
counts2 <- c(11, 5, 7, 6, 2, 9)

# Create pie chart for the first dataset
pie(counts1, labels = labels1, main = "Pie Chart 1: Categories Distribution")

# Add a legend
legend("topright", labels1, cex = 0.8, fill = rainbow(length(counts1)))

# Create pie chart for the second dataset
pie(counts2, labels = labels2, main = "Pie Chart 2: Categories Distribution")

# Add a legend
legend("topright", labels2, cex = 0.8, fill = rainbow(length(counts2)))

