.class public Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "StepAddFriendsActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Lcom/facebook/katana/binding/AppSession;

.field private g:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;

.field private h:Z

.field private i:I

.field private j:Z

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/view/findfriends/FriendCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/view/findfriends/FriendCandidate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->h:Z

    .line 64
    iput v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->i:I

    .line 65
    iput-boolean v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->j:Z

    .line 66
    iput v2, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->k:F

    .line 67
    iput v2, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->l:F

    .line 68
    iput v2, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->m:F

    .line 69
    iput v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->n:I

    .line 70
    iput v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->o:I

    .line 71
    iput v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->p:I

    .line 542
    return-void
.end method

.method private A()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 509
    invoke-direct {p0, v1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->b(I)V

    .line 510
    new-instance v0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$GetPhoneBookTask;

    invoke-direct {v0, p0, v3}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$GetPhoneBookTask;-><init>(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;B)V

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$GetPhoneBookTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 511
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->q:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->t:Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->r:Ljava/util/Map;

    return-object p1
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 392
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->i:I

    .line 393
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->v()V

    .line 394
    return-void
.end method

.method static synthetic c(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->s()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->t()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->u()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->q:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->u:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->s:Ljava/util/List;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 122
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->setContentView(I)V

    .line 123
    const/4 v0, -0x1

    const v1, 0x7f0b033d

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->a(ILjava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->m()V

    .line 125
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->l()V

    .line 128
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 129
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->k:F

    .line 130
    const/high16 v1, 0x4320

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->l:F

    .line 132
    const/high16 v1, 0x3f80

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->m:F

    .line 136
    iput v2, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->n:I

    .line 139
    iget v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->k:F

    iget v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->m:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->l:F

    div-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->n:I

    .line 144
    iget v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->k:F

    iget v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->m:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->n:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->o:I

    .line 148
    iget v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->k:F

    float-to-int v0, v0

    iget v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->n:I

    iget v2, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->o:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->p:I

    .line 152
    new-instance v0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;-><init>(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->g:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;

    .line 155
    iget v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->i:I

    if-nez v0, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->A()V

    .line 162
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->v()V

    .line 163
    return-void

    .line 157
    :cond_1
    iget v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->i:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->w()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->w()V

    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/findfriends/FriendCandidate;

    .line 190
    invoke-virtual {v0}, Lcom/facebook/katana/view/findfriends/FriendCandidate;->a()V

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 226
    const v0, 0x7f08010a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$1;-><init>(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-void
.end method

.method private s()V
    .locals 6

    .prologue
    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/findfriends/FriendCandidate;

    .line 339
    invoke-virtual {v0}, Lcom/facebook/katana/view/findfriends/FriendCandidate;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    iget-object v0, v0, Lcom/facebook/katana/view/findfriends/FriendCandidate;->a:Lcom/facebook/katana/model/FacebookPhonebookContactUser;

    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookPhonebookContactUser;->userId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    :cond_1
    sget-object v0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->e:Ljava/lang/String;

    const-string v2, "Sending friend requests to %d users."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/facebook/katana/service/method/FriendsAddFriend;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->t:Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;->a()V

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhonebookContact;

    .line 357
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhonebookContact;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    const-string v2, "invitee_credentials"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 363
    const-string v1, "is_part_of_nux"

    iget-boolean v2, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->h:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->startActivity(Landroid/content/Intent;)V

    .line 367
    iget-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->h:Z

    if-nez v0, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->finish()V

    .line 370
    :cond_1
    return-void
.end method

.method private u()V
    .locals 6

    .prologue
    const v5, 0x7f08010a

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 374
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->f()I

    move-result v1

    .line 375
    if-gtz v1, :cond_0

    .line 377
    const v0, 0x7f0b033d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->a(ILjava/lang/String;)V

    .line 378
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0b043a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 380
    iput-boolean v3, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->j:Z

    .line 388
    :goto_0
    return-void

    .line 383
    :cond_0
    const v0, 0x7f0b0263

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->a(ILjava/lang/String;)V

    .line 384
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0b045f

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iput-boolean v4, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->j:Z

    goto :goto_0
.end method

.method private v()V
    .locals 6

    .prologue
    const v5, 0x7f08010b

    const v4, 0x7f080107

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 400
    iget v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->i:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 401
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 402
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 403
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/FacebookProgressCircleView;

    iget v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->i:I

    invoke-virtual {v0, v1}, Lcom/facebook/katana/view/FacebookProgressCircleView;->setProgress(I)V

    .line 409
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 407
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private w()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 412
    const v0, 0x7f080108

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 415
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->x()I

    move-result v1

    .line 418
    if-nez v1, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->t()V

    .line 421
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->finish()V

    .line 430
    :goto_0
    return-void

    .line 423
    :cond_0
    if-ne v1, v3, :cond_2

    .line 424
    const v1, 0x7f0b045c

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->u()V

    goto :goto_0

    .line 425
    :cond_2
    if-le v1, v3, :cond_1

    .line 426
    const v2, 0x7f0b045d

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private x()I
    .locals 5

    .prologue
    .line 435
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->t:Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;

    const v1, 0x7f03003b

    iget-object v2, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->s:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;-><init>(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;ILjava/util/List;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->t:Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->t:Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;

    iget v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->o:I

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;->a(I)V

    .line 444
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 445
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->t:Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 446
    iget v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 447
    iget v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 448
    iget v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->p:I

    invoke-virtual {v0}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->p:I

    invoke-virtual {v0}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 450
    new-instance v1, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$2;-><init>(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 462
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 464
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/view/findfriends/FriendCandidate;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 481
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 484
    invoke-virtual {p1}, Lcom/facebook/katana/view/findfriends/FriendCandidate;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 486
    const/16 v2, 0x78

    if-le v1, v2, :cond_2

    iget-object v1, p1, Lcom/facebook/katana/view/findfriends/FriendCandidate;->a:Lcom/facebook/katana/model/FacebookPhonebookContactUser;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookPhonebookContactUser;->mLargeImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/facebook/katana/view/findfriends/FriendCandidate;->a:Lcom/facebook/katana/model/FacebookPhonebookContactUser;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookPhonebookContactUser;->mLargeImageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p1, Lcom/facebook/katana/view/findfriends/FriendCandidate;->a:Lcom/facebook/katana/model/FacebookPhonebookContactUser;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookPhonebookContactUser;->mLargeImageUrl:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/AppSession;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->u:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->u:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-virtual {p1, v0}, Lcom/facebook/katana/view/findfriends/FriendCandidate;->a(Ljava/lang/String;)V

    .line 501
    :cond_1
    return-object v0

    .line 491
    :cond_2
    iget-object v1, p1, Lcom/facebook/katana/view/findfriends/FriendCandidate;->a:Lcom/facebook/katana/model/FacebookPhonebookContactUser;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookPhonebookContactUser;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/facebook/katana/view/findfriends/FriendCandidate;->a:Lcom/facebook/katana/model/FacebookPhonebookContactUser;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookPhonebookContactUser;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p1, Lcom/facebook/katana/view/findfriends/FriendCandidate;->a:Lcom/facebook/katana/model/FacebookPhonebookContactUser;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookPhonebookContactUser;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/AppSession;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->u:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 92
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 95
    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->u:Ljava/util/HashMap;

    .line 100
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_part_of_nux"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->h:Z

    .line 102
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->i()V

    .line 103
    return-void
.end method

.method public final f()I
    .locals 3

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/findfriends/FriendCandidate;

    .line 208
    invoke-virtual {v0}, Lcom/facebook/katana/view/findfriends/FriendCandidate;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 212
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected final g()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->j()V

    .line 272
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->s()V

    .line 275
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->t()V

    .line 276
    return-void
.end method

.method protected final h()V
    .locals 2

    .prologue
    .line 536
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->b(I)V

    .line 537
    new-instance v0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-direct {v0, p0}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;-><init>(Landroid/content/Context;)V

    .line 538
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->q:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a(Ljava/util/Map;)Ljava/lang/String;

    .line 539
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f0b045b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->i()V

    .line 110
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->g:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->g:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 173
    return-void
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->s()V

    .line 221
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->t()V

    .line 222
    return-void
.end method
