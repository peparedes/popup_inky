===LearnMoreAboutYou
<strong>Flecta: Great. First, let's see why you are here.
{userNoBanter==0: Tianco: Yes! I really really want to help!}
<strong>Flecta:  {userNoBanter==0: Quiet now Tianco, this is important.}
<strong>Flecta: A few questions only, to help us decide who's the best micro-coach for you.
<strong>Flecta: Rest assured, we protect your privacy at all times.
->HowStressed

===HowStressed
<strong>Flecta: Tell me, are you feeling stressed right now?
    + Very
        <strong>Flecta: Sorry to hear that.
        ~stressLevel=2
        ->HowLong
    + A bit
        <strong>Flecta: Not good.
        ~stressLevel=1
        ->HowLong
    + Not at all
        <strong>Flecter: Good to hear!
        ->AssignFirstBot

===OngoingOrNot
<strong>Flecta: And is this stress ongoing? Or linked to a specific situation?
    +It's ongoing
        <strong>Flecter: I see.
        
        ->HowLong
    +One situation
        <strong>Flecter: Thanks. Just one more question before we start.
        ~stressOngoing=1
        ->ExplainStress

===HowLong
<strong>So for how long have you been stressed?
    +Few months or so
    ~stressLength=1
    +Few Weeks
    ~stressLength=2
    +Few Days
    ~stressLength=3
    +Hard to say
    ~stressLength=4
    - ->ExplainStress

===ExplainStress
Would you mind sharing? Tell me a bit more about your stress?
    +Sure!
    FREE USER INPUT THAT TRIGGERS CATEGORISATION
    +Not now
    <strong>Flecta: That's OK.
    - ->paraphrase
    
    
===paraphrase
<strong>Flecta: Let me see if I get this right. You are feeling {stressLevel==2:very}{stressLevel==1:a bit} stressed right now and {stressOngoing==0:that's been going on for {stressLength==1: a few months}{stressLength==2: a few weeks}{stressLength==3: a few days}}? And you're stressed because of CATEGORY.

    +Sounds about right
        Tianco: Fantastic!
        {userNoBanter==1:
            <strong>Flecta: Do you mind if Tianco joins in again? He's so keen.
            ++All right then
                ~userNoBanter=0
                ->AssignFirstBot
            ++Keep it simple
                ->AssignFirstBot
        }    
    
    +Not really
    <strong>Flecta: Hmmm. That's what you get sometimes with us simple micro-coaches. We learn more every day with your help though!
    <strong>Flecta: Shall we try again?
        ++Good idea
            ->ExplainStress
        
        ++Not now
            ->AssignFirstBot
        
    
    
    