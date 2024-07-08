import '../models/post.dart';

class DataSource {
  static List stories = [
    {
      'author': 'Semi Colon',
      'authorImg': 'assets/profile_picture.jpg',
      'imagePath': 'assets/post_7.jpg',
    },
    {
      'author': 'Ibrahim Ibn Maher',
      'authorImg': 'assets/friend_1.jpg',
      'imagePath': 'assets/post_4.jpg',
    },
    {
      'author': 'دعاء الأنبياء',
      'authorImg': 'assets/friend_2.jpg',
      'imagePath': 'assets/post_5.jpg',
    },
    {
      'author': 'Mohammed kamal',
      'authorImg': 'assets/friend_3.jpg',
      'imagePath': 'assets/post_6.jpg',
    },
    {
      'author': 'Alaa Mostafa',
      'authorImg': 'assets/friend_5.jpg',
      'imagePath': 'assets/post_7.jpg',
    },
  ];

  static List<Post> posts = [
    Post(
      content: 'اللهم اكتب لى الخير حيث كان',
      author: 'Semi Colon',
      createdAt: 'June 24 at 1:39PM',
      authorImg: 'assets/profile_picture.jpg',
      imagePath: 'assets/post_7.jpg',
      comments: [
        const Comment(author: 'Semi Colon', content: 'اللهم امين', createdAt: 'June 24 at 1:39PM', authorImg: 'assets/profile_picture.jpg', ),
        const Comment(author: 'Semi Colon', content: 'Ameen', createdAt: 'June 24 at 1:39PM', authorImg: 'assets/profile_picture.jpg'),
        const Comment(author: 'دعاء الانبياء', content: 'امين', createdAt: 'June 24 at 1:39PM', authorImg: 'assets/profile_picture.jpg'),
      ],
    ),
    Post(
      content: '" اللهم اجعلني في عنايتك، فلا يضرني بشر ، ولا يبكيني قدر "',
      author: 'Ibrahim Ibn Maher',
      createdAt: 'June 24 at 1:39PM',
      authorImg: 'assets/friend_1.jpg',
      imagePath: 'assets/post_1.jpg',
    ),
    // no image
    Post(
      content: 'اللهم إني أسألك الثباتَ في الأمر، والعزيمة على الرُّشد، وأسألك شُكْر نعمتك، وحُسْن عبادتك، وأسألك لسانًا صادقًا، وقلبًا سليمًا، وأسألك من خير ما تَعلَم، وأعوذ بك من شرِّ ما تعلم، وأستغفرك لما تعلم، إنك أنت علام الغيوب',
      author: 'دعاء الأنبياء',
      createdAt: 'June 24 at 1:39PM',
      authorImg: 'assets/friend_2.jpg',
    ),
    Post(
      content: 'If You Think Education Is Expensive, Try Ignorance',
      author: 'Mohammed kamal',
      createdAt: 'June 24 at 1:39PM',
      authorImg: 'assets/friend_3.jpg',
      imagePath: 'assets/post_2.jpg',
    ),
    // no image
    Post(
      content: """
Urgently required, For a software developer located in Tanta
Girls Only , We are looking for a beautiful,religious female software developer required for a life time contract as a wife .
please check the job description and please only apply if you are applicable or you have at least experience in any of the requested fields:
- cooking
- washing dishes and clothes
- cleaning apartments
- Childcare
Job Requirements
- Age from 18 - 27
- English Proficiency
- Muslims Only  
- Experienced in home works and cleanings
- Ability to relocate to Tanta
- Willing to be dressed Niqab
Salary : 
 - Negotiable , will be discussed upon interview
For Contact : send us an email at 
phpcodertop@gmail.com
or contact by phone 202-01015255081
      """,
      author: 'Semi Colon',
      createdAt: 'June 24 at 1:39PM',
      authorImg: 'assets/profile_picture.jpg',
    ),
    Post(
      content: """
      You will discuss the only important aim to all buddies after the interview!!! 😁
      It's not acceptable 😅😅
      By the way good luck for all 😅🙏
       """,
      author: 'Alaa Mostafa',
      createdAt: 'June 24 at 1:39PM',
      authorImg: 'assets/friend_5.jpg',
      imagePath: 'assets/post_3.jpg',
    ),
    Post(
      content: 'اللهم احرمني لذة معصيتك وارزقني لذة طاعتك',
      author: 'Al Aksa',
      createdAt: 'June 24 at 1:39PM',
      authorImg: 'assets/friend_6.jpg',
      imagePath: 'assets/post_4.jpg',
    ),
    // no image
    Post(
      content: """ 
      اللهم إني أخاف الموت على غفلة وأخاف الموت على معصية وأخاف ظلمة القبر، اللهم أهد قلبي واغفر لي وأحسن خاتمتي واقبضني في ساعة رضا، اللهم اهدني ثم اهدني ثم اهدني ثم خذني إليك.
      """,
      author: 'Mohammed Amer',
      createdAt: 'June 24 at 1:39PM',
      authorImg: 'assets/friend_7.jpg',
    ),
    Post(
      content: """
      What is the object oriented way to become wealthy?
      Answer : Inheritance. 😂😂😂
      """,
      author: 'Anonymous',
      createdAt: 'June 24 at 1:39PM',
      authorImg: 'assets/friend_8.jpg',
      imagePath: 'assets/post_5.jpg',
    ),
    Post(
      content: """
      فدع الصبا فلقد عداك زمانه---وازهد فعمرك منه ولى الأطيب
ذهب الشباب فما له من عودة --- وأتى المشيب فأين منه المهرب
ضيف ألم إليك لم تحفل به --- فترى له أسفاً ودمعاً يسكب
دع عنك ماقد فات في زمن الصبا --- واذكر ذنوبك وبكها يا مذنب
واخش مناقشة الحساب فإنه --- لابد يحصى ما جنيت ويكتب
لم ينسه الملكان حين نسيته --- بل أثبتاه وأنت لاه تلعب
والروح فيك وديعة أودعتها --- ستردها بالرغم منك وتسلب
وغرور دنياك التي تسعى لها --- دار حقيقتها متاع يذهب
والليل فاعلم والنهار كلاهما --- أنفاسنا فيها تعد وتحسب
وجميع ما حصلته وجمعته --- حقاً يقيناً بعد موتك ينهب
تباً لدار لايدوم نعيمها --- ومشيدها عما قليل يخرب
فاسمع هديت نصائحاً أولاكها --- بر نصوح عاقل متأدب
صحب الزمان وأهله مستبصراً --- ورأى الأمور بما تؤوب وتعقب
أهدى النصيحة فاتعظ بمقاله ---فهو التقي اللوذعي الأدرب
لا تأمن الدهر الصروف فإنه --- لا زال قدماً للرجال يهذب
وكذلك الأيام في غصاتها --- مضض يذل له الأعز الأنجب
فعليك تقوى الله فالزمها تفز --- إن التقي هو البهي الأهيب
واعمل لطاعته تنل منه الرضا --- إن المطيع لربه لمقرب
فاقنع ففي بعض القناعة راحة --- واليأس مما فات فهو المطلب
وإذا طمعت كسيت ثوب مذلة --- فلقد كسي ثوب المذلة أشعب
والقى عدوك بالتحية لاتكن --- منه زمانك خائفاً تترقب
واحذره يوماً إن أتى لك باسماً --- فالليث يبدو نابه إذ يغضب
إن الحقود وإن تقادم عهده --- فالحقد باق في الصدور مغيب
وإذا الصـديق رأيتـه متعلقـاً --- فهو العدو وحقه يتجنب
لا خـير في ود امرئ متملـق --- حلو اللسان وقلبه يتلهب
يلقـاك يحلف أنـه بك واثـق --- وإذا توارى عنك فهو العقرب
يعطيك من طرف اللسان حـلاوة --- ويروغ منك كما يروغ الثعلب
واختر قرينـك واصطفيه تفاخـراً --- إن القرين إلى المقارن ينسب
إن الغـني من الرجـال مكـرم --- وتراه يرجى ما لديه ويرهب
ويبش بالـترحيب عند قـدومه --- ويقام عند سلامه ويقرب
والفقـر شين للرجـال فإنـه --- يزرى به الشهم الأديب الأنسب
واخفض جناحـك للأقارب كلهم --- بتذلل واسمح لهم إن أذنبوا
ودع الكذوب فلا يكن لك صاحباً --- إن الكذوب لبئس خلاً يصحب
وذر الحسود ولو صفا لك مـرةً --- أبعده عن رؤياك لايستجلب
وزن الكلام إذا نطقت ولا تكن --- ثرثارةً في كل ناد تخطب
واحفظ لسانك واحترز من لفظه --- فالمرء يسلم باللسان ويعطب
والسر فاكتمه ولا تنـطق بـه --- فهو الأسير لديك إذ لا ينشب
واحرص على حفظ القلوب من الأذى --- فرجوعها بعد التنافر يصعب
إن القـلوب إذا تنـافر ودهـا --- مثل الزجاحة كسرها لا يشعب
وكـذاك سر المرء إن لم يطوه --- نشرته ألسنة تزيد وتكذب
لا تحرصن فـالحرص ليس بزائـد --- في الرزق بل يشقي الحريص ويتعب
ويظـل ملهوفـاً يـروم تحيـلاً --- والرزق ليس بحيلة يستجلب
كم عاجز في الناس يؤتى رزقـه --- رغداً ويحرم كيس ويخيب
أد الأمانـة و الخيانـة فاجتنب --- واعدل ولا تظلم يطيب المكسب
وإذا بليت بنكـبة فاصبر لهـا --- من ذا رأيت مسلماً لا ينكب
و إذا أصـابك في زمانك شدة --- وأصابك الخطب الكريه الأصعب
فـادع لـربك إنـه أدنى لمن --- يدعوه من حبل الوريد وأقرب
كن ما استطعت عن الأنام بمعزل --- إن الكثير من الورى لا يصحب
واجعل جليسك سيداً تحظى به --- حبر لبيب عاقل متأدب
واحذر من المظلوم سهماً صائباً --- واعلم بأن دعاءه لا يحجب
وإذا رأيت الرزق ضاق ببلدة --- وخشيت فيها أن يضيق المكسب
فارحل فأرض الله واسعة الفضا --- طولاً وعرضاً شرقها والمغرب
فلقد نصحتك إن قبلت نصيحتي --- فالنصح أغلى ما يباع ويوهب
خذها إليك قصيدةً منظومةً --- جاءت كنظم الدر بل هي أعجب
حكم وآداب وجل مواعظ --- أمثالها لذوي البصائر تكتب
يا رب صل على النبي وآله --- عدد الخلائق حصرها لايحسب
      """,
      author: 'Alaa Mostafa',
      createdAt: 'June 24 at 1:39PM',
      authorImg: 'assets/friend_5.jpg',
      imagePath: 'assets/post_6.jpg',
    ),
    Post(
      content: """
      قُلِ اللَّهُمَّ مَالِكَ الْمُلْكِ تُؤْتِي الْمُلْكَ مَن تَشَاءُ وَتَنزِعُ الْمُلْكَ مِمَّن تَشَاءُ وَتُعِزُّ مَن تَشَاءُ وَتُذِلُّ مَن تَشَاءُ ۖ بِيَدِكَ الْخَيْرُ ۖ إِنَّكَ عَلَىٰ كُلِّ شَيْءٍ قَدِيرٌ (26) تُولِجُ اللَّيْلَ فِي النَّهَارِ وَتُولِجُ النَّهَارَ فِي اللَّيْلِ ۖ وَتُخْرِجُ الْحَيَّ مِنَ الْمَيِّتِ وَتُخْرِجُ الْمَيِّتَ مِنَ الْحَيِّ ۖ وَتَرْزُقُ مَن تَشَاءُ بِغَيْرِ حِسَابٍ
      """,
      author: 'محمود كساب',
      createdAt: 'June 24 at 1:39PM',
      authorImg: 'assets/friend_4.jpg',
      imagePath: 'assets/post_7.jpg',
    ),
    Post(
      content: """
      اللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك، وأنا على عهدك، ووعدك ما استطعت، أعوذ بك من شر ما صنعت، أبوء لك بنعمتك علي، وأبوء بذنبي فاغفر لي فإنه لا يغفر الذنوب إلا أنت
      """,
      author: 'Semi Colon',
      createdAt: 'June 24 at 1:39PM',
      authorImg: 'assets/friend_6.jpg',
      imagePath: 'assets/post_8.jpg',
    ),
    Post(
      content: """
      قتل امرئٍ في غابةٍ
جريمةٌ لا تُغتَفر
وقتل شعبٍ آمنٍ
مسأَلةٌ فيها نظر
والحقُّ للقوَّةِ لا
يعطاهُ الاَّ مَن ظفر
ذي حالة الدنيا فكن
من شرّها عَلَى حذر
      """,
      author: 'Mohammed Amer',
      createdAt: 'June 24 at 1:39PM',
      authorImg: 'assets/friend_7.jpg',
      imagePath: 'assets/post_9.jpg',
    ),
  ];
}
