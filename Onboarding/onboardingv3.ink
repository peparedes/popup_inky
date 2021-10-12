VAR username = "Miranda"

+Hi
->Start

===Start

Flecter: Hey {username}! My name is Flecter. Welcome to Pop-up!
Tianco: And I'm Tianco. Can't wait to tell you more about us and what we do! Did you know...
Flecter: All in good time, Tianco.

+What do you do?
    Flecter: Essentially we at Pop-up are all here to help you.  
    **All? There's more?
+Interesting names...
    Flecter: Thank you. We've all got names that kind of reflect why we are here. iF you're a bit of a puzzle person it can be fun to make them out.
    ++All. More creatures? 
    ++Intriguing!
- Tianco: Can I talk about the others now Flecter? Please?
    
- ->WeAreABotWorld

===WeAreABotWorld
Flecter: Oh well. Go ahead then, young one.
+ I'm ready
Tianco: There's many of us and we all want to make you feel better about stressy stuff.
Flecter: (sigh) What he means is that we're created and trained to help you cope with everyday challenges. Each of us is specialised in a technique to help you feel better in your own head.
Tianco: Isn't that what I said?

    ++You solve my problems?
    ++What techniques?

- ->warning


===warning
Flecter: Before we continue, let's me clarify a very important thing. 
We're not trained to get you through serious mental health challenges or situations.
    Tianco: And for emergencies, call 911.
    Flecter: Exactly, Tianco, well said.These situations are ... let's call it "above our paygrade"
    Tianco: And we don't even get paid! But in all your everyday challenges, we are right here.
    +Got that
    -- Thyros: Great. Now...
    ->ChoosingBots
    
===ChoosingBots
Tianco: So there's my friend Puffy who does awesome breathing things with you, and also Hero can help find your strengths and ...
Flecter: Tianco! Control yourself, you are making little sense. 
{username}, each of us will offer to support you with a specific technique to cope better when you're feeling stressed. 
Some things will work for you and other won't, but that is finding who works with you is part of it all. 
+Can I choose who?
Tianco: You can tell us what you think. We won't be offended, right Flecter? If you are not to keen on one of us, just say so.
Flecter: Your feedback will help us to introduce you to someone else next time, if you want. So we choose, but with your help.
    ++Can we start?
->DataCollection1

===DataCollection1
Flecter: Of course! First, we'd like to get to know you a bit better.
Tianco: Yes! I want to be your friend!
Flecter: I mean that when we know you better, we can decide who of us would be most beneficial to talk to. Can you tell us what you do?

+(work) I work
+(school) I'm in school
+Something else
    ++(both) School and work?
    Tianco: Impressed.
    ++(home) Family carer?
    ++Neither
- Flecter: Thanks. That will help us.
Tiaki: So can we introduce you to someone now?

->moreQuestions

===moreQuestions
Thyros: I'm sure they have more questions Tiaki!
+Examples of stress
    Tiaki: <>
    {DataCollection1.school: Like exams. Or an assignment,}<>
    {DataCollection1.work: Deadlines. Or an important presentation, }<>
    {DataCollection1.both: Deadlines. Assignments. Too much work, }<> 
    {DataCollection1.home: Kids. Being too busy. Bills, }<>
     those kinds of things.
    
+Privacy
- ->END



