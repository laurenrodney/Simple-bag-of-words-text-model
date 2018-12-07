# Simple Text Model
In this model, two algorthims have been applied: the Gibbs sampler for a Mixture of Multinomials and for Latent Dirichlet Allocation. The data used to train the model is contained in in the ﬁle kos_doc_data.mat. The word counts are in the matrix variables A and B for training and testing respectively, both matrices with 3 columns: document ID, word ID and word count. The words themselves are the variable V, such that eg. V(841) = 'bush'.

## Key algorithm files
1. **Bayesian.m:** Bayesian inference using a symmetric Dirichlet prior with a concentration parameter α =0.1 on the word probabilities
2. **bmm.m:** Gibbs sampling for a mixture of multinomials model
3. **lda.m:** Gibbs sampling for a Latent Dirichlet Allocation

##### Note
This machine learning project was carried out as part of the fourth-year Information and Computing Engineering course at Cambridge University Engineering Department. (http://mlg.eng.cam.ac.uk/teaching/4f13/1819/)
