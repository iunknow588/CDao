# CDao  ——   一个虚中心化的冲突化解投票系统
 
 CDao, 中国之道的缩写，也可以称为中国式分布式治理组织.这是一个利用投票解决冲突争议的平台，其治理过程是“无为”的，其治理结果是“和合”的。 这是中国传统文化与区块链技术的结合，通过智能合约的形式，完美的阐释了道家的治理理念的以及儒家治理目标。
 
# 问题
为了处理人与人之间的认知冲突 ，一个常见的处理策略是进行集体决策，或者说，集体决策是冲突治理问题的一个的必备程序。
⑴ 在现有的治理模型中，基于多数原则的投票制度则是产生集体决策的一种基本方法。无论是在分布式治理组织DAO（Decentralized Autonomous Organization）还是在一些公链社区治理中，投票制度都是最常见的治理模型，但是，它存在的问题也是非常普遍的：
① 部分成员可能认为组织的决策与自己的价值观和利益不符，或者他们可能认为组织的目标和使命不够吸引人，所以缺乏参与意愿；
② 部分成员虽然有参与意愿，但是认为自己的投票不会对决策产生重大影响，或者即使投票也可能得不到足够的奖励或回报，因而他们会由于缺乏激励机制而放弃投票的权利；
③ 部分成员即使参投票，但是由于认为自己的声音不被听取或不被重视，或者他们可能认为组织的决策与自己的利益不相关，所以缺乏参与感；
④ 部分成员虽然有参与感，但是可能认为组织的决策过程不透明或不公正，或者认为组织的成员有私人利益，因而缺乏对组织的信任度；又或者虽然对组织有信任度，但是可能认为组织的决策过程缺乏有效的机制来确保投票结果的可靠性和公正性，又或者他们认为组织的决策过程缺乏有效的机制来解决争议和纠纷，因而对投票结果不信任。
⑵ 一些非DAO的领域，也存在一些难以平衡各方利益的公共治理问题，比如“邻避效应 ”或者“反邻避效应 ”。
⑶ 在一些公共创作或者遗产处理中，物品的所有权是清晰的、共有的，但是所有者对于物品的价值评估是主观的、不同的，此时需要一个公平分配处理方案；
通过对问题⑴的分析，我们会发现，基于多数原则的投票制度虽然具有简单，快速的优势，但是缺点也是十分明显的，归纳如下：
⑴ 投票的技术手段是粗糙的：比如一般只有赞同、反对、弃权三类，缺乏对于赞同或者反对的强度描述；如果把51%的弱赞同与49%的强烈反对作对比或许更能看出问题的缺陷；
⑵ 投票的过程中缺乏激励手段：对于中立意见的持有人或多数意见的少数票持有人缺乏合适的激励手段；
⑶ 投票结果对于少数意见的持有者而言是极度不公平的：少数意见持有人意见既没有被采纳，也没有得到补偿；
⑷ 在某些多选项的领域，投票的结论可能存在不一致性：比如孔多塞悖论问题 ；
对于问题⑵的处理，大多数也会采用投票决策的原则，但是，由于备选议案往往很多，这种情况下，正如社会选择理论的研究表明：基于多数原则的投票制度，并不能由个体偏好的一致性推出集体偏好的一致性，比如“阿罗不可能定理 ”与“帕累托改进不可能定理 ”所得到的结论。
在传统的福利经济学研究中，不一致性是应该极力避免的问题，同时，这种不一致性也常常被称为悖论。尽管福利经济学经过了上百年的发展，但是，保证集体偏好的一致性一直是一个基本要求（当然，这一要求也基本上没有真正的被实现过），从阿罗不可能定理到帕累托改进不可能以及一系列社会福利泛函的研究，都是对这种一致性的探索。
在现有的经济学研究中，保证集体偏好的一致性是探讨决策公平的一项基本要求，除此之外，在无法对决策的公正性达成一致意见的情况下，往往需要寻求政府干预或者第三方评判，问题在于，政府或者第三方的干预，一定能保证结果的公正性么？而这也是问题⑶中要解决的问题。遗憾的是，正如赫维兹的“真实偏好显示不可能性定理 ”所阐述的那样，政府或第三方也很难建立一个激励相容的治理策略。
综上所述，现有的理论框架，对于人与人之间认知冲突问题的处理都是不能令人满意的，因此，如果说认知冲突（以及由此导致的群体偏好不一致性）是一种客观必然，那么是否有其他途径来解决认知冲突问题？或者再退一步说，我们真的有必要寻找一致的集体偏好么?
 
# 方案
CDao(Chinese Dao)，即中国之道，也称中国式分布式自治策略，对前述问题给出了另一种回答：CDao以道德经的“无为”概念作为治理理念，以CDao团队2011年发表的“超公平分配模型 ”为具体算法编码模型，通过智能合约，收集全体参与者的表决情况，综合计算出最终的处理结果（依据主观平等的原则，满足所有参与者的要求）。
首先，CDao提供的解决方案是激励相容的，同时，也是帕累托最优的。表面上看，这与赫维兹的“真实显示偏好”不可能性定理相矛盾，但是，在CDao中，解决方案是需要全员参与表决的，因而各种议案可以看作是充分竞争后的市场行为，故可以视为信息完全的，这与赫维兹的不可能性定理中所假定的“信息不完全”的前提并不相同；
其次，CDao是一个虚中心化的系统，实现上依赖于超公平分配合约。由于智能合约给出的最终治理方案需要综合处理所有人的议案表决，因而这是一种分布式治理技术；又由于最终治理方案不直接取自任何一部分人的解决方案（无论是大多数意见还是少数精英意见），因而这种治理又具有某种中心化的特征。所以，为了与传统的DAO相区别，我们把CDao称为中国之道——一种虚中心化治理技术，这里“虚中心化”，其含义取自道德经中“无为”的概念，有虚无的含义，意思是管理者的智慧对被管理者而言，是无关紧要的。管理者在治理上不需要采取任何带有主观评价的治理方案，只需要让参与者自己表决治理方案即可。具体而言，CDao及其提供的超公平分配合约具有如下几个特征：
① 在理论上是价值中立的；
② 在实现上是开源的；
③ 在结果上满足了所有参与者的主观需求。	
最后，福利经济学各种理论中所极力避免的、集体偏好的客观矛盾性，恰恰是CDao解决认知冲突问题的核心所在，或者说，在CDao中，这种认知冲突不仅可以公平的处理，而且对所有参与者而言，结果还可以是超公平的。
下面我们看看，在不构建一致的集体偏好的情况下，CDao对相关问题是如何处理的。 
㈠ CDao对问题⑶的处理方案：
假如a,b,c三个人组成的集体准备平分一些资源p1,p2,p3。
为了便于理解，这里先作出两个假定 ：
⑴a,b,c三人在权益上是平等的；
⑵a,b,c三个人对物品p1,p2,p3 效用，有如下的独立评价：
①a:  p1>p2>p3   ②b:  p2>p3>p1   ③c:  p3>p1>p2;
CDao通过让每个人都提出一个公平的分配方案，其他人对分配方案进行选择处理，这样一共得到三个公平的分配方案，最后CDao计算出一个最终的方案，其分配结果大体上会接近如下这个方案 ：
a：p1，b：p2， c：p3
在这里，由于a、b、c三个人都认为自己拿到了超过平均值的份额，于是就实现了资源分配在主观上的超公平性。实际上，这里的核心问题在于，当面对未知的一个资源时，如何准确的划分出合适的p1、p2、p3份额。事实上，对于可分资源，CDao是通过一个构造性的方法，在所有人都认为公平的分配案例中，每次构造一个确定的、群体偏好不一致的份额（让所有人都分得自己主观上最大的份额），直至待分配份额为零，最后每个参与者都拿到自己主观上的最大份额；而对于不可分资源，CDao也是通过一个构造性的方法，让所有人在拿到平均值的基础上，额外多领取一份超公平的份额，最后每个参与者都认为自己拿到了平均值以上的份额。具体的案例计算可以参考问题⑵的处理。
 
㈡ CDao对问题⑵的处理方案：
某市政厅决定在A市内修建一个体育馆，尽管大部分市民都认为有必要修建一个体育馆，但是，有的市民认为体育馆会带来噪音和交通拥堵，影响居民的生活质量；有的市民担心体育馆会破坏周边环境和景观，影响社区的整体形象；有的市民认为体育馆的建设会占用大量土地资源，影响社区的发展和规划。
因此，市政厅需要构建一个公平的处理预案。
为了便于理解，这里对CDao处理流程作一个简单说明：
⑴ 市政厅租赁 、配售代币 ；；
⑵ 市政厅设置议案提案标准 ，筹集议案，比如，筹到三个议案P1,P2,P3；
⑶ 市政厅组织市民对议案进行投票表决 ，得到如下投票结果： 
其中：
P1获得支持资金4万代币；
P2获得支持资金6万代币；
P3获得支持资金8万代币；

⑷ CDao计算最终处理结果：
① 经过合约综合处理，结果如下：
P3议案获得通过，支付其他议案的赔偿金7万代币；
P2获得赔偿金4万代币；
P1获得赔偿金3万代币；
② 处理结果的超公平性分析如下：
在P1的偏好世界中：其他议案如果被否决，每个议案可以得到2万的补偿（自己议案获得支持资金即补偿其他议案的总额，两个议案，共补偿4万）；根据平等性原则，自己的议案如果被否决，应该获得2万的补偿；现有的计算结果是，获得3万补偿，即超过公平值1万；
在P2的偏好世界中：其他议案如果被否决，每个议案可以得到3万的补偿（自己议案获得支持资金即补偿其他议案的总额，两个议案，共补偿6万）；根据平等性原则，自己的议案如果被否决，应该获得3万的补偿；现有的计算结果是，获得4万补偿，即超过公平值1万；
在P3的偏好世界中：如果自己的议案被接受，其他的两个议案应该被补偿8万（自己议案获得支持资金即补偿其他议案的总额）；根据现有的计算结果是，实际支付补偿金7万，即超过公平值1万；
综上，CDao给出了一个超公平的计算结果，每个议案的处理结果都比公平份额多出一万代币。 
⑸ 市民退租代币，获得激励 ，市政厅按照P3议案修建体育馆：
显然，从以上CDao处理流程可以看出：
⑴ 每个市民的投票都能获得一定的投票激励（具体激励金额与政府配发的代币数量相关）；
⑵ 投票过程是公开透明的，区块链技术可以保证结果的不可篡改性；
⑶ 投票过程使用代币进行，对团队外部人员具有一定的私密性；
⑷ 对每个市民自己的期望而言，投票结果都是超公平的；
㈢ CDao对问题⑴的处理方案：
事实上，问题⑴仅仅是问题⑵的特殊情况，在解决了问题⑵以后，问题⑴中存在的一些情况将不复存在，说明如下：
⑴ CDao投票的用代币多少取代赞同与反对（或者弃权），因而在刻度上优于传统的多数派原则。同时，由于CDao中每个人都可以把自己的代币分别投给不同的议案，因而CDao的投票在刻度在实质上是可以任意精细化的； 
⑵ CDao在投票处理上是激励相容的，每个参与者只要保证自己的投票真实反映了自己的意愿（无论其他人是否作出虚假的投票），最后的处理结果对自己而言就是公正的；
⑶ CDao投票结果会对所有不被采纳的意见予以补偿，且补偿值与投票者的反对强度正相关，反对越强，得到的补偿越多。
⑷ CDao的处理结果是唯一的，不存在不一致性。 



# CDao - A New Voting Platform For Handling Conflicts      
 
 CDao, short for the Chinese Dao. It can also be called Chinese distributed autonomous organization. It is a voting platform for dealing with conflicts.

# Issues 
To deal with the cognitive conflict between the individuals[*1],a common strategy is to use collective decision-making.
⑴ In existing governance models, a voting system based on the majority principle is a common method for making collective decisions. However, it also has its own problems: 
① Some members may feel that the organization's decisions are not align with their values or interests, leading to their lack of willingness to participate.
② Some members may feel that the outcome of their vote will not have a significant impact on the decision, or that they will not be rewarded or motivated enough to cause them to give up their voting rights.
③ Some members may feel that their voices are not heard or valued, or that the organization's decisions are unrelated to their interests, resulting to a lack of participation.
④ Some members may have a sense of engagement but believe that the organization decision-making process is opaque or unfair, or they may believe that members of the organization have personal interests, leading to a lack of trust in the organization. Alternatively, even if they trust the organization, they may argue that the decision-making process lacks effective mechanisms to ensure the reliability and fairness of voting results, leading to a lack of trust in voting results.
(2)In some areas of community governance, there are also public governance problems that are difficult to balance the interests of all parties, such as "neighbor avoidance effect[*2];" or "reverse neighbor avoidance effect[*3];".

(3) In some public creation or heritage processing cases, ownership of an item is clear and shared, but the evaluation of its value by owners is subjective and different, requiring a fair distribution solution. 
It can be seen from the analysis of question （1） that although the voting system based on the majority principle has the advantages of simplicity and high speed, its disadvantages are also obvious. Summarize as follows:
①  The voting method is crude, such as only consent, disapproval or abstention, lacking the ability to describe the strength of consent or disapproval. Comparing a weak 51% and strong 49% may highlight the shortcomings of this system.
②  Lack of incentives in the voting process: lack of appropriate incentives for neutral opinion holders or majority opinion minority holders;
③  The vote are extremely unfair to the minority opinion holders: the opinions of the minority opinion holders are neither adopted nor compensated;
④  In some multi-choice areas, the conclusion of voting may be inconsistent: such as the voting paradox[*4];

For ⑵ problem, most of the governance strategy is also adopt the principle of voting, however, because there are a lot of voting options, in this case, the study of social choice theory shows: based on the majority principle of the voting system, cannot get the consistency of collective preference, such as "arrow impossible theorem" and "pareto improvement impossible theorem" the conclusion.
In the traditional study of welfare economics, inconsistency is a problem that should be greatly avoided, often called a paradox. Although welfare economics after hundreds of years of development, however, to ensure that the consistency of collective preference has been a basic requirement (, of course, the requirement is basically no real implementation), from "arrow impossible theorem" to "pareto improve impossible" as well as a series of social welfare function research, are for the exploration of this consistency.

In the existing economic research, ensuring the consistency of collective preference is the basic requirement of the fairness of the decision-making. In addition, in the case that the fairness of the decision cannot be guaranteed, it is often necessary to seek the intervention of the government or the third party. However, the question is, can the intervention of the government or the third party guarantee the fairness of the results? That is the problem that ⑶ has to solve. Unfortunately, governments or third parties also struggle to establish a governance strategy compatible with incentives.

According to the above, the existing theoretical framework is unsatisfactory for dealing with these issues. Therefore, if cognitive conflict (and the resulting inconsistency of group preferences) is an objective necessity, are there other ways to solve the problem? Or, stepping back, do we really need to seek consistent collective preferences? 

note:
[*1] For the same objective things, different people may have different value evaluation, for this objective cognitive conflict, investigate its reason, this may be because of the different language, culture, customs (and the resulting values and beliefs or positions), may also be because of the difference in knowledge background (and the resulting information acquisition and processing differences).
[*2] an acronym for the phrase "not in my back yard", is a characterization of opposition by residents to proposed developments in their local area, as well as support for strict land use regulations. It carries the connotation that such residents are only opposing the development because it is close to them and that they would tolerate or support it if it were built farther away. The residents are often called nimbys, and their viewpoint is called nimbyism. 
[*3] If the NIMBY effect is the public's rejection of negative projects, then the anti-NIMBY effect is the public's fight for positive projects.
[*4] The Condorcet paradox (also known as the voting paradox or the paradox of voting) in social choice theory is a situation noted by the Marquis de Condorcet in the late 18th century, in which collective preferences can be cyclic, even if the preferences of individual voters are not cyclic. This is paradoxical, because it means that majority wishes can be in conflict with each other: 
Suppose majorities prefer, for example, candidate A over B, B over C, and yet C over A. When this occurs, it is because the conflicting majorities are each made up of different groups of individuals.Thus an expectation that transitivity on the part of all individuals' preferences should result in transitivity of societal preferences is an example of a fallacy of composition. 
[*5] Arrow's impossibility theorem: the general possibility theorem or Arrow's paradox is an impossibility theorem in social choice theory that states that when voters have three or more distinct alternatives (options), no ranked voting electoral system can convert the ranked preferences of individuals into a community-wide (complete and transitive) ranking while also meeting the specified set of criteria: unrestricted domain, non-dictatorship, Pareto efficiency, and independence of irrelevant alternatives.  
[*6] Sen's impossibility of a paretian libertarian theorem: there is no function that can simultaneously satisfy the U *, I *, P *, *, and D *", where U *is the unrestricted domain, I *is independent and decisive, P *rejects Pareto suboptimal state, and D *is the dictatorship.
[*7] The Hurwitz theorem: In the personal economic environment, under the condition of participatory constraints (that is, the resulting configuration should be personal rational), there is no effective decentralized economic mechanism (including market competition mechanism) that can lead to the optimal configuration of Pareto and motivate people to display their true information; that is, the optimal configuration of Pareto showing preferences and resources is impossible.


# scheme
CDao(Chinese Dao),also can be called China distributed autonomous objectives, gives another answer to the question: CDao takes the concept of "WU WEI" of "DAO DE JING" as the governance concept, using the CDao team in 2011 issued a "super fair distribution model" as a specific algorithm coding model, through Smart contract, collect all participants vote, calculate the final processing results (according to the principle of subjective equality, meet the requirements of all participants).
First, the solutions provided by CDao are incentive-compatible and also Pareto-optimal. On the surface, this is contradictory to the theory of "true preference is impossible", however, in CDao, the solution requires independent voting.Therefore, the various voting results can be regarded as completely competitive market behavior, that is, it can be regarded as complete information, which is different from the assumption of "incomplete information";
Second, CDao is a system that relies on smart contracts with super fair distribution. Because the final governance scheme given by the smart contract requires comprehensive processing of all people, it is a distributed governance technology, and because the final governance scheme does not come directly from anyone (whether the majority opinion or the minority opinion), this governance has the characteristics of a certain centralized system. Therefore, to distinguish it from traditional DAO, we refer to CDao —— as a noncentralized governance technique."noncentralized" here comes from the concept of "DAO DE JING",Here, the wisdom of the managers is irrelevant. Because the managers do not need to make any subjective evaluation of the governance problems, but only need to allow the managers to vote on the governance plan themselves. Specifically, CDao and Super Fair smart contracts have the following characteristics:
① It is value-neutral in theory.
② It is open source in implementation.
③ It meets the needs of all participants in the results.

Finally, the contradiction of collective preference that it tries to avoid in the theory of welfare economics is exactly the core strategy of problem solving. In CDao, such conflict can not only be handled fairly, but the result is super fair to all participants.
Below we introduce CDao's solution —— how it solves the problem without building a consistent collective preference.

㈠ CDao solution for problem ⑶:
If a,b,c are ready to split some resources p1,p2,p3.To understand easily, two assumptions are made here:
⑴ a,b, c, everyone has equal rights and interests;
The independent evaluation of the utility of p1, p2, and p3 is as follows:
①a: p1>p2>p3 ②b: p2>p3>p1 ③c: p3>p1>p2;
CDao first lets everyone to propose a fair distribution scheme (studies have shown that this distribution scheme is exists), then CDao integrates three fair schemes, and finally gives a solution, the distribution results are roughly similar to the following :
a：p1，b：p2， c：p3
Here, the subjective super fairness of resource allocation is achieved because both a, b, and c believe that they receive more than the average share. Of course, the core question here is how to accurately divide the appropriate share of p1, p2, and p3 in the resource X.
Indeed, for partitioned resources, CDao is done through a structured approach. After considering the preferences of all participants, an explicit share was constructed at a time, ensuring that all participants believed that they received the maximum share until the unallocated resources were zero, and finally each participant received the maximum subjective share.
For inseparable resources, CDao also employs a structural approach that allows each individual to gain an extra super fair share based on the average share, ending with each participant receiving an above-average share. Specific case can be referred to the problem⑵
(二) CDao solution for problem (2):
A town hall decided to build a gymnasium in a city. Although most citizens believe that it is necessary to build a stadium, some citizens believe that the stadium will bring noise and traffic congestion and affect the quality of life of the residents; some citizens worry that the stadium will damage the surrounding environment and landscape and affect the overall image of the community; others believe that the construction of the stadium will occupy a large amount of land resources and affect the development and planning of the community. Therefore, City Hall needs to establish a fair solution.
For convenience, we will briefly describe the CDao process:
⑴ City hall lease[*4] , token placement[*5] ;
⑵ The City Hall has formulated the proposal standard [*6] to collect proposals, for example, to put forward three proposals P1, P2, P3;
⑶ The City Hall organizes citizens to vote on the motion, assuming that the voting results are as follows:
P1 received support funds from 40,000 tokens;
P2 received support funds from 60,000 tokens;
P3 received support funds from 80,000 tokens;
(4) Final processing results of CDao:
① After the smart contract processing, the results are as follows:
P3 bill passed, paying 70,000 compensation for other bills;
P2 was compensated by 40,000 tokens;
P1 was compensated by 30,000 tokens;
② The super-fairness analysis of the processing results is as follows:
In the preference world of P1: if other proposals are rejected, each proposal can receive 20,000 compensation (for the other two proposals, the total compensation is 40,000); according to the principle of equality, P1 proposal is rejected and should receive 20,000 compensation, currently 30,000, which is over the fair value of 10,000.
In the preferred world of P2: if other proposals are rejected, each proposal can receive 30,000(for the other two proposals, the total compensation is 60,000); according to the equality principle;  
P2 proposal is rejected and should receive 30,000 compensation, currently 40,000, which is over the fair value of 10,000. 
In the world of P3 preference: if the P3 proposal is accepted, the other two schemes should be compensated for 80,000 tokens (the support amount of P3 proposed is the amount of compensation for other proposals); according to the existing calculation, the actual compensation is 70,000, which is over the fair value of 10,000;
In summary, CDao gives a super-fair calculation that each proposal handles 10,000 more tokens than the fair share.
⑸ Citizens withdrew their tokens [*8], and the City Hall built the stadium under the P3 proposal:
Obviously, we can see the CDao processing process from the above:
⑴ Each citizen's vote can receive a certain voting incentive (the specific incentive amount is related to the number of tokens issued by the government);

⑵ The voting process is open and transparent, and blockchain technology can ensure tamper results;
⑶ The voting process is conducted by tokens, which provides some privacy for the team;
⑷ For each citizen's own expectations, the vote is super fair;

(三) CDao solution for problem (1):
In fact, problem ⑴ is just a special case of problem ⑵. After problem ⑵ is resolved, some conditions existing in problem ⑴ will no longer exist, explained as follows:
(1) CDao votes with approval and opposition (or abstention), thus surpassing the traditional majority principle. At the same time, since everyone in CDao can cast their own tokens for different proposal, the size of CDao voting can be arbitrarily refined;
(2) CDao is compatible with incentives during the voting process. As long as each participant ensures that his vote truly reflects his wishes (whether or not), the final result is fair to him;
(3) The result of CDao voting will compensate all rejected opinions, and the value of the compensation is positively correlated with the opposition force of the voters. The stronger the opposition, the more the compensation.
(4) The treatment outcome of CDao are unique and not inconsistent.

NOTE:
[*1] LIU CHAO，WANG WENJIE，SUPER FAIR DISTRIBUTION BASED ON INDIVIDUAL PREFERENCE[C]，INTERNATIONAL CONFERENCE ON MANAGEMENT SCIENCE AND INTELLIGENT CONTROL(ICMSIC 2011),2011-8:368-372
[*2] Both assumptions are made to handle convenient settings that are not required in the actual processing of CDao.
[*3] The resulting value depends on the specific utility assessment of a, b, and c for these three items.
[*4] The tokens for voting are provided by CDao, and City Hall rents tokens from CDao for proposal collection and voting.
[*5] City Hall provides the sale of tokens, the number of tokens by the city hall, the number of excess tokens sold by citizens (usually does not exceed the number issued, the actual value by the City hall, can be used for final voting incentives or other public operating capital), including the total number of tokens for each citizen is determined by the city hall.
[*6] City halls can set basic requirements for a vote on bills, such as how many tokens can support them, or decide whether all bills can be voted on.
[*7] Every citizen can vote to support more than one proposal.
[*8] In each bill, all participants can be compensated (or refund the supported amount) in proportion to the number of tokens supported through the tokens sold by the City Hall.
