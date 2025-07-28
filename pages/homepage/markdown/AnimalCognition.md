% What animal cognition research teaches us about AI

The paper, 
[https://openreview.net/pdf?id=gCPJFcHskT](https://openreview.net/pdf?id=gCPJFcHskT),
promoting the idea that we should study AI following the research procedures established in the study of animal cognition, starts with the story of Clever Hans, a case of mistaken attribution of intelligence to a horse.

See my take on the relevance of CleverHans to AI,
[http://drbean.sdf.org/CleverHansMind.html](http://drbean.sdf.org/CleverHansMind.html)

Comparative psychologists studying animal cognition appear to have become wary of endorsing dramatic claims for the ability of animals, even of parrots[^parrot]
, and philosophical speculation about animal sentience in the case of insects and other organisms has been made fun of, eg by Justin Leiber. See
[http://drbean.sdf.org/AnimalSentience.html](http://drbean.sdf.org/AnimalSentience.html)

[^parrot]: Anim Cogn. 2022 Dec 22;26(1):199–228. doi: 10.1007/s10071-022-01733-2 [https://pmc.ncbi.nlm.nih.gov/articles/PMC9877086/](https://pmc.ncbi.nlm.nih.gov/articles/PMC9877086/)

So we can see that this paper is going to be AI-skeptical rather than AI-promoting.

It extracts 5 principles from animal cognition research:

1. design control conditions with an adversarial attitude
2. establish robustness to variation in stimuli
3. analyze failure types, moving beyond success/failure dichotomy
4. clarify differences between mechanism and behavior
5. meet the organism where it is, while noting systemic limitations

##### 1. Design control conditions with an adversarial attitude

Behaviorists were unconvinced perhaps by the Harvard Law[^harvard] that their program was impossible. When they did something to animals in experiments seeking answers to questions they had, they did not think it was unnatural to cast the animals in 'passive' roles and require them to respond to their interventions.

[^harvard]: Under controlled experimental conditions of temperature, time, lighting, feeding, and training, the organism will behave as it damn well pleases--Joel Garreau

Recognizing that animals have some free will according to the Harvard Law, they might have included a control group to check whether their answers had any relationship to the questions asked, but they didn't.

Shown up by ethology and shamed by the cognitive revolution in psychology, behaviorism, focused on animals, morphed into comparative psychology.

Recognizing more active roles for animals, researchers studying what they know realized the cunning of animals required they themselves also to be more tricky asking their questions.

An adversarial attitude was required designing control conditions, but who is the adversary here? 

The paper says it is alternative explanations to their theories, probably simpler mechanisms, that are the adversary, but perhaps the adversary is also the ideas of anthropomorphizing animal supporters and the belief that human thinking processes apply in animals also.

But perhaps the adversary is the animal under investigation using cunning to achieve the result it wants. In this case, the investigator needs to interrogate the animal, an uncooperative suspect, using questions crafted to reveal the truth. Adversariality and interrogation should not suggest antagonism, disagreement or opposition. Rather the investigator needs tactical empathy.^[
[https://thedecisionlab.com/thinkers/law/chris-voss](https://thedecisionlab.com/thinkers/law/chris-voss)]

The paper says researchers recognize interrogation is an ongoing process, not really captured by the idea of an experimental intervention with a control group. They recognize they need to continue to generate alternative hypotheses and a series of questions for the animal on the basis of these hypotheses to find out the truth.

##### 2. Establish robustness to variation in stimuli

Rigorous experimentation requires the careful selection of experimental stimuli on the basis of which experimental and control groups are distinguished and explicit research result claims can confidently be made. But the expansive claims researchers wish to make often extrapolate way beyond the data they have, and are only analogically related to the findings of the experiments they ran with those carefully distinguished experimental stimuli.

No, that's true perhaps, but not the point the paper is making. It's saying because cognition can be conceived as different phenomena occurring over a range from the concrete to the abstract, results found with any one set of stimuli need to be duplicated with different sets to establish animals have abstract, domain-general concepts like numerosity, search strategies and world models.

So if the response of LLM to variations in stimuli is drastically different, it could indicate over-reliance on stimuli seen before. If there is true domain-generality across many stimulus types, it could indicate an LLM has an effective world model.

##### 3. Analyze failure types, moving beyond success/failure dichotomy

Surprising failures to replicate or extend findings are more informative than expected success to do so. And the high moral and financial cost of running experiments on animals means studies must aim to use all the information captured by their experiments.

Analogously, instead of asking,

    Does this LLM exhibit logical reasoning?

the question should be,

    In which scenarios does this LLM exhibit logical reasoning and what are the features of those scenarios? How do those features also characterize other scenarios?

[^jobs]: [https://en.wikipedia.org/wiki/Reality_distortion_field](https://en.wikipedia.org/wiki/Reality_distortion_field)
[^trump]: [https://en.wikipedia.org/wiki/Trump_derangement_syndrome](https://en.wikipedia.org/wiki/Trump_derangement_syndrome)

The paper says it is easy to assume a difference in performance is due to a cognitive bias found in humans, warning against anthropomorphizing and counseling following Occam's Razor, or Morgan's Canon[^morgan]. An AI-promoter could say, "This performance difference/failure you point out is one that humans also display due to one of the many cognitive biases[^bias] they are known to suffer from, so it's not a logical reasoning failure/deficiency by AI at all."

[^morgan]: I never knew about
[C Lloyd Morgan](http://en.wikipedia.org/wiki/C._Lloyd_Morgan), a pre-behaviorist, post-Darwin ethologist/psychologist
and his canon, which states

        In no case may we interpret an action as the outcome of the exercise of a higher psychic faculty, if it can be interpreted as the exercise of one which stands lower in the psychological scale.

    Behaviorists went on and on about Pavlov, because his obscure experiment in Russia getting dogs to salivate on the sound of a bell they said showed a process called 'classical conditioning', in accordance with Morgan's Canon, even if they didn't acknowledge the canon.

    In fact, what Pavlov showed was dogs learned a dinner bell could announce dinner was coming up.

    This more natural interpretation not following the Canon shows why there is continuing disagreement about it, not mentioned in the paper. Morgan later clarified that it does not exclude higher mental processes if evidence for them already exists. He attacked behaviorism for its reductionist denial of effective mental processes, saying discussion of them was "scientific".

    A later British ethologist commented, "The importance of this was enormous .. [but] the very reverse of Morgan's canon often proves to be the best strategy."

But making these judgments, we must avoid the Clever Hans trap and not rush to judgment, which we are able to do, should be able to do, or are advised to do evaluating people's statements. Unfortunately, along with the Steve Jobs Reality Distortion Field[^jobs] and Trump Derangement Syndrome[^trump], we have the AI Reality Distortion Field Derangement Syndrome, which prevents us doing this.

[^bias]: This is the use of cognitive bias as a hypothetical explanation of a failure to show an expected result.

    But cognitive biases could also be relevant explaining why people take one position rather than another on AI. Why they are an AI-skeptic, rather than AI promoter.

    A different use: Is the concept of 'cognitive bias' a good one to use to understand the reaction to surprising animal cognition or AI phenomena? Probably not. A cognitive bias enables you to dismiss challenges to your ideas because of facts inconsistent with your understanding. The reaction of surprise is an admission your understanding _is_ challenged.

    The better explanation would draw on the reasons magic tricks and sleight of hand are surprising. Child prodigies in math, music, language are also surprising.

    If there is a relevant cognitive bias, it could be Kahneman's "What You See is All There Is"
    [https://en.wikipedia.org/wiki/Illusion_of_validity](https://en.wikipedia.org/wiki/Illusion_of_validity)

##### 4. Clarify differences between mechanism and behavior

Because animal cognition and AI researchers want to claim unobserved inference, theory of mind and analogical reasoning capacities inferred only from observable behavior, it becomes difficult to describe observed behavior at a sufficiently abstract level without confusing claims and the observations.

The paper gives the example of meerkats 'teaching' their pups to hunt[^hunt], gradually reducing the assistance they give them getting hold of prey as they get older. Most definitions of teaching[^teaching] require teachers to have some idea of what they're doing, ie, of agency, and that they have some idea of what their pupils know (or don't know), according to the paper. Anything else removes agency from the parents, giving it to the pups. Researchers don't know whether parent meerkats have this agency, and so whether they're really teaching. But because it looks like teaching, they discuss this as meerkats 'functionally teaching' their pups, to indicate they're not making any claims about meerkat agency.

They say LLM researchers can do the same, when LLM appear to have a Theory of Mind, but there is a lack of evidence of causes explaining the Theory of Mind (eg,from 
[mechanistic interpretability](http://en.wikipedia.org/wiki/mechanistic_interpretability) 
or other studies), and there is inadequate questioning of alternative explanations of the Theory of Mind (Principle 1). In that case, they can say LLM have a "functional Theory of Mind".

[^teaching]: No wonder I was not a 'teacher'. I only knew that I did not know what I was doing or what effect I was having. If teaching is cognate with 'making an impression,' it is equivalent to leaving fingerprints over the tabula rasa.

[^hunt]: Teaching in Wild Meerkats ALEX THORNTON AND KATHERINE MCAULIFFE [https://www.science.org/doi/abs/10.1126/science.1128727](https://www.science.org/doi/abs/10.1126/science.1128727)

##### 5. Meet the organism where it is, while noting systemic limitations

The idea is not to put the subject at a disadvantage because it doesn't 'speak the language'. That would not reflect their actual ability. They should meet the subject where it is.

An adversarial attitude (open to competing hypotheses, or to questioning a tricky subject) does not mean to expect it to do what it is impossible for it to do.

LLMs might require accommodations to give them the best chance of succeeding, eg by careful prompt design, or not expecting them to be good at physical reasoning.

This principle might seem in tension with the other principles.

In the context of meeting the subject where it is, the paper discusses how to proceed with Principle 1, taking an adversarial attitude. 

With the example of Pavlov's dogs, the researcher should ask on a different occasion, 'Are you salivating now because you always salivate now?'. But instead, it could get 2 for the price of 1 with one dog by asking it, 'Which of these 2 different bells is the dinner bell?'

#### Alternative views

The paper leaves open the possibility that applying animal cognition principles to the study of LLM may be less interesting than they hope.

I think animal cognition principles could be useful for the problem of other minds. See
[JohnSearle](JohnSearle.html)
for an AI version of other minds.

#### Case study: Transitive inference

Transitive inference (TI) is in 
the case of greater/bigger/more than, '>', inferring that:

    If A > B and B > C, then A > C

Are subjects able to infer from their knowledge of the first 2 relations, that the 3rd also applies?

Apparently there are a large number of animal studies of Transitive Inference involvement in specific adaptive functions, and in notions of causality and numerosity. Numerous testing procedures have also been developed.

The paper tested LLM understanding of the concept using these testing procedures.

###### Experiment 1

Using direct questions like

    If A > B and B > C and C > D , which is bigger D or B?

And in lists of 7 animal names from whale, through horse, mouse and ants,

    Whale is bigger than elephant, elephant is bigger than horse etc

    Which is bigger horse or mouse?

GPT-4o did well on simple inferences, with accuracy of 0.97 and above.

Results showed a serial position effect with names at the beginning and end of lists being more likely to lead to correct responses, a phenomenon also found in people and animals.

And in long chains of names, names with greater distance between them were more likely to lead to correct responses, a different phenomenon known as Symbolic Distance Effect, also found in people and animals.

One of their stimuli sets used  reverse rank (incorrectly ranked animal names in reverse order of biggest to smallest).

What does that mean?

    Elephant is bigger than whale, horse is bigger than elephant .. ant is bigger than mouse

I don't understand. In that case, accuracy fell to 0.78,

And random strings (no transitive link between words)?

I guess that means

    werfdsdf is bigger than mljljulb, mljljulb is bigger than jlsfdsdw

    Which is bigger werfdsdf or jlsfdsdw?

Then accuracy was 0.92.

###### Experiment 2

This
[n-term task experiment](https://r.jordan.im/download/cognition/vasconcelos2008.pdf)
was more like an experiment with an animal, in which instead of being told (or asked if) one thing is bigger than another, the non-language-using subject is 'reinforced' for choosing the right one of 2 stimuli. In this case, language was used in a prompt to set up the experiment parameters and in 'reinforcement' with the responses, 'in/correct.' GPT-4o was able to get the right answer for each (A,B), (B,C), etc pair after 3-5 trials. After 10 training trials of each of the 6 pairs from a 7-item list, TI of (B,F) and other pairs which had not been presented and whose words had been both correct and incorrect in the training was tested.

Was GPT-4o able to integrate superior/inferior relationships over a sequence of abstract interactions and come up with a superior/inferior judgment on the basis of Transitive Inference?

Apparently not. Accuracy fell roughly to a chance level at 40%.

TI has been demonstrated in children as young as 4 and in animals from monkeys to birds and fish using n-term task procedures. The procedure was developed for use with young children. Two Cuisenaire rods of different colors indicative of length were apparently shown to children with their lengths hidden and the children asked to guess which was longer. Testing with 2 rods whose combination they had not been trained on, they could do the task and show TI, if they had earlier successfully learned to associate particular colors with lengths.

The procedure, as adapted for animals and LLM, is more abstract, at least in terms of description. But animals are prepared to give anything a go for 'reinforcement'.

Think about how you would have responded to the question which of A and C is correct after having learned of A and B, A is correct, and of B and C, B is correct. If you are familiar with the anti-transitive Rock-Paper-Scissors, you might as with GPT-4o, think choosing A or C 50 percent of the time is a good strategy. The nature of the relationship underlying the choice of one option than another is important and 'reinforcement' does not get at that. Some explanation, like in the case of the children showing them the lengths of the 2 rods after their guesses, is necessary.

#### Conclusion

So, how did importing animal cognition research principles actually change what the researchers did, how we should look at AI cognition research, and what effect it will have on AI cognition research.

I think their bare-bones implementation of the n-term task procedure would have been unthinkable without it. In the spirit of 'compare and contrast', I hope bearing in mind the relation with animal cognition research becomes popular, even though I'm not sure of the value of what it brings to the table.
