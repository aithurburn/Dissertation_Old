
library(brms)
library(bayestestR)
library(ggplot2)

d1 = read.csv('./experiment_1_mean.csv')
d1$Vignettes = factor(d1$Vignettes)
d1$Subject = factor(d1$Subject)
d1$Spite_z = scale(d1$Spite)
d1$SSES_z = scale(d1$SSES)
d1$SRPS_z = scale(d1$SRPS)
d1$SJS_z = scale(d1$SJS)
d1$Justification_z = scale(d1$Justification)
d1$Realism_z = scale(d1$Realism)

# general plot
ggplot(d1, aes(x = Spite, y = Justification, colour = Content)) + geom_point() +
  geom_smooth(method = 'lm')


# models 
m1 <- brm(Justification ~ Spite_z * Content + (1|Vignettes) + (1|Subject), data = d1, silent = 0,
         warmup = 1000, iter = 8000, chains = 4, cores = 4,
         prior = c(prior(normal(0,1), class = 'Intercept'),
                   prior(normal(0,1), class = 'b')))
summary(m1) 

m2 <- brm(Justification ~ Spite_z * Content + Realism_z + (1|Vignettes) + (1|Subject), data = d1, 
         warmup = 1000, iter = 8000, chains = 4, cores = 4, save_pars = T,
         prior = c(prior(normal(0,1), class = 'Intercept'),
                   prior(normal(0,1), class = 'b')))
summary(m2)

m3 <- brm(Justification ~ Spite_z * Content + Realism_z + SSES + SRPS + SJS + (1|Vignettes) + 
           (1|Subject), data = d1, warmup = 1000, iter = 8000, chains = 4, cores = 4, 
         save_pars = T,
         prior = c(prior(normal(0,1), class = 'Intercept'),
                   prior(normal(0,1), class = 'b')))
summary(m3)

m4 <- brm(Justification ~ Spite_z * Content * Realism_z + SSES + SRPS + SJS + (1|Vignettes) + 
           (1|Subject), data = d1, warmup = 1000, iter = 8000, chains = 4, cores = 4, 
         save_pars = T,
         prior = c(prior(normal(0,1), class = 'Intercept'),
                   prior(normal(0,1), class = 'b')))
summary(m4)
# model comparison
loo(m1, m2, m3, m4) # m2, m3, & m4 equivalent, m1 close.
# get HDIs
m2.hdi = hdi(m2, effects = 'fixed', component = 'conditional', ci = .95)
m2.hdi[sign(m2.hdi$CI_low) == sign(m2.hdi$CI_high), 
       c('Parameter','CI','CI_low','CI_high')]


# examine possible item effects
ggplot(d1, aes(x = Vignettes, y = Justification, colour = Content)) + geom_boxplot()

# removing Vignette 3 due to lack of variance & replotting.
d2 = d1[d1$Vignette!=3,]
ggplot(d2, aes(x = Spite, y = Justification, colour = Content)) + geom_point() +
  geom_smooth(method = 'lm')

# repeating modeling 
m1.b <- brm(Justification ~ Spite_z * Content + (1|Vignettes) + (1|Subject), data = d1, 
         warmup = 1000, iter = 8000, chains = 4, cores = 4, save_pars = T,
         prior = c(prior(normal(0,1), class = 'Intercept'),
                   prior(normal(0,1), class = 'b')))
summary(m1.b) 

m2.b <- brm(Justification ~ Spite_z * Content + Justification_overall_timing + Realism_z + (1|Vignettes) + (1|Subject), data = d1, backend = "cmdstanr",
         warmup = 1000, iter = 8000, chains = 4, cores = 4, save_pars = T,
         prior = c(prior(normal(0,1), class = 'Intercept'),
                   prior(normal(0,1), class = 'b')))
summary(m2.b)

m3.b <- brm(Justification ~ Spite_z * Content + Realism_z + SSES + SRPS + SJS + (1|Vignettes) + 
           (1|Subject), data = d1, warmup = 1000, iter = 8000, chains = 4, cores = 4, 
         save_pars = T,
         prior = c(prior(normal(0,1), class = 'Intercept'),
                   prior(normal(0,1), class = 'b')))
summary(m3.b)

m4.b <- brm(Justification ~ Spite_z * Content * Realism_z + SSES + SRPS + SJS + (1|Vignettes) + 
           (1|Subject), data = d1, warmup = 1000, iter = 8000, chains = 4, cores = 4, 
         save_pars = T,
         prior = c(prior(normal(0,1), class = 'Intercept'),
                   prior(normal(0,1), class = 'b')))
summary(m4.b)
# model comparison
loo(m1.b, m2.b, m3.b, m4.b) # same as before
