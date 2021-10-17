===StartOnboarding
+What do you do?
    <strong>Flecta: My friends and I are quite special virtual creatures. We are here to help you cope with stressful moments.
    Tianco: Can I talk about the others now, Flecta? Please?
    <strong>Flecta: Forgive my young friend here. Very eager to introduce us to you.

    ++Just explain please
        <strong>Flecta: We are <>->WhatweDo

    ++Keen to hear him out
        <strong>Flecta: Oh well. Go ahead then, Tianco. But try to be clear!
        ->WeAreABotWorld

+Interesting names...
    <strong>Flecta: Oh yes... We've got names that kind of reflect why we are here.
    Tianco: If you're a bit of a puzzle person it can be fun to make them out!
    ++Please just explain
        <strong>Flecta: Of course. Tianco, I'll continue alone.
        <strong>In the Pop-up! world, we are <> ->WhatweDo
    ++Very intriguing!
        ->WeAreABotWorld

===WeAreABotWorld
Tianco: There's many of us and we all want to make you feel better about stressy stuff.
<strong>Flecta: (sigh) What he means is that we're <>->WhatweDo

===WhatweDo
specialised in techniques to help humans like you cope with different kinds of stress.
->ReflectAndAct

{WeAreABotWorld:
    Tianco: Isn't that what I said? But in easy words?
        <strong>Flecta: Kind of, yes.
        +(banter)Love the two of you
            Tianco: Thanks pal! Right back at ya.
            ->ReflectAndAct
        +(nomorebanter)Please just explain
            <Strong> Flecta: I'll continue alone for now, Tianco.
            ->ReflectAndAct
}


===ReflectAndAct
   <strong>Flecta: We help you reflect on every day challenges and take actions to sort them out.
    + Stress? Challenges?
        <strong>Flecta: Things like work or school deadlines, feeling overwhelmed, worries about relations for example.
        ++How can you help?
            <strong>Flecta: Our work has given us some insights in the human mind. There are ways to help you think about what is going on that help you to feel better. 
            ->warning
    + How can you help?
            Our work has given us some insights in the human mind. There may be ways to help you think about what is going on that help you feel better. 

    - ->warning


===warning
    +You solve my problems?
        <strong>Flecta: In a sense. But before we continue, let me clarify a very important thing.
        <strong>We're not trained to support you through serious mental health challenges or situations.
        ++Got that
            {WeAreABotWorld || WhatweDo.banter:
                Tianco:<>
            -else: <strong>Flecta: <>
            } And for emergencies, please call 911.
            -> AboveOurPayGrade

===AboveOurPayGrade
    <strong> Flecta: {WeAreABotWorld ||WhatweDo.banter: Exactly, Tianco, well said.} These situations are ... let's call it "above our paygrade"
    {WeAreABotWorld ||WhatweDo.banter: Tianco: And we don't even get paid!}
    ++I understand
    -- <strong>Flecta: Great. Glad we are on the same page.
    ->ChoosingBots

===ChoosingBots
+I work with you two?
    <strong>Flecta: Not exactly. We will always be here to greet you, but our group of real specialists work on your stress.
     {WeAreABotWorld ||WhatweDo.banter: Tianco: Yes! So there's my friend Puffy who does awesome breathing things with you, and also Hero can help find your strengths and ...}
     <strong>Flecta: <> {WeAreABotWorld ||WhatweDo.banter:  Tianco! Control yourself, you are making little sense.}
    
    
    <strong>You may like to work with some and not with others. Finding that out is part of what we do.
        ++ Can I choose?
            {WeAreABotWorld ||WhatweDo.banter: Tianco: You can tell us honestly what you think after a session. We won't be offended, right Flecta?}
            <strong>Flecta: Your feedback will help us to introduce you to someone else next time or revisit an old friend! We select who talks to you, but choose with your help.
        ++ Let's start!
        --->LearnMoreAboutYou


->END
