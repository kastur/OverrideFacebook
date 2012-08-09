.class public Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;
.super Lcom/facebook/katana/activity/profilelist/ProfileListActivity;
.source "FindFriendsActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Lcom/facebook/katana/activity/findfriends/FriendsAdapter;

.field private n:Lcom/facebook/katana/activity/findfriends/InvitesAdapter;

.field private p:Ljava/util/Map;
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

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhonebookContactUser;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/facebook/katana/binding/ProfileImagesCache;

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->u:Z

    .line 63
    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->v:Z

    .line 64
    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->w:Z

    .line 65
    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->x:Z

    .line 490
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 296
    iget v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->t:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->n:Lcom/facebook/katana/activity/findfriends/InvitesAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->g()V

    .line 304
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->u:Z

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->v:Z

    if-ne v0, v1, :cond_2

    .line 300
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->showDialog(I)V

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->finish()V

    goto :goto_0
.end method

.method private B()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 379
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->p:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$GetPhoneBookTask;

    invoke-direct {v0, p0, v3}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$GetPhoneBookTask;-><init>(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$GetPhoneBookTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->l()V

    goto :goto_0
.end method

.method private C()Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 392
    new-instance v0, Landroid/text/SpannableString;

    const v1, 0x7f0b0442

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)Lcom/facebook/katana/activity/findfriends/FriendsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->f:Lcom/facebook/katana/activity/findfriends/FriendsAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->r:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->q:Ljava/util/Map;

    return-object p1
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/facebook/katana/service/method/FriendsAddFriend;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->u:Z

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->A()V

    .line 254
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)Landroid/text/Spanned;
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->v()Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->p:Ljava/util/Map;

    return-object p1
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 263
    iget-object v3, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->q:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhonebookContact;

    .line 265
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhonebookContact;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p0, v1, v2, v3}, Lcom/facebook/katana/service/method/UsersInvite;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->v:Z

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->A()V

    .line 275
    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->x:Z

    return p1
.end method

.method static synthetic c(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)Lcom/facebook/katana/activity/findfriends/InvitesAdapter;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->n:Lcom/facebook/katana/activity/findfriends/InvitesAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->t:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)Landroid/text/Spanned;
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->w()Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->q:Ljava/util/Map;

    return-object v0
.end method

.method private g(I)Landroid/text/Spanned;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 235
    if-ne p1, v2, :cond_0

    .line 236
    new-instance v0, Landroid/text/SpannableString;

    const v1, 0x7f0b043c

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 239
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    const v1, 0x7f0b043d

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->p:Ljava/util/Map;

    return-object v0
.end method

.method private v()Landroid/text/Spanned;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    new-instance v0, Landroid/text/SpannableString;

    const v1, 0x7f0b039c

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 182
    new-instance v1, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$3;-><init>(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)V

    .line 205
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 208
    iget v1, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->t:I

    if-ne v1, v5, :cond_0

    .line 209
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0440

    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 211
    new-array v2, v6, [Ljava/lang/CharSequence;

    aput-object v1, v2, v4

    aput-object v0, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 216
    :goto_0
    return-object v0

    .line 214
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0441

    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 216
    new-array v2, v6, [Ljava/lang/CharSequence;

    aput-object v1, v2, v4

    aput-object v0, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    goto :goto_0
.end method

.method private w()Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->g(I)Landroid/text/Spanned;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->g(I)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method private x()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 284
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 286
    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 288
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 335
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->a(Landroid/os/Bundle;)V

    .line 336
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->setContentView(I)V

    .line 339
    invoke-static {p0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 341
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->s:Lcom/facebook/katana/binding/ProfileImagesCache;

    .line 343
    const v0, 0x7f0b042a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->b(I)V

    .line 344
    const v0, 0x7f0b042d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->e(I)V

    .line 346
    new-instance v0, Lcom/facebook/katana/activity/findfriends/FriendsAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->s:Lcom/facebook/katana/binding/ProfileImagesCache;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/katana/activity/findfriends/FriendsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/facebook/katana/binding/ProfileImagesCache;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->f:Lcom/facebook/katana/activity/findfriends/FriendsAdapter;

    .line 350
    new-instance v0, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->C()Landroid/text/Spanned;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/text/Spanned;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->n:Lcom/facebook/katana/activity/findfriends/InvitesAdapter;

    .line 353
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->f:Lcom/facebook/katana/activity/findfriends/FriendsAdapter;

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    .line 356
    new-instance v0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$ContactRemoteInfoFetcherListener;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$ContactRemoteInfoFetcherListener;-><init>(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    .line 359
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    .line 360
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->f:Lcom/facebook/katana/activity/findfriends/FriendsAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 361
    invoke-virtual {v0, v3}, Lcom/facebook/katana/ui/SectionedListView;->setItemsCanFocus(Z)V

    .line 362
    return-void
.end method

.method public final f()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->t:I

    .line 80
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->f:Lcom/facebook/katana/activity/findfriends/FriendsAdapter;

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    .line 81
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->f:Lcom/facebook/katana/activity/findfriends/FriendsAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 84
    const v0, 0x7f080104

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b042c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->w()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 91
    new-instance v1, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$1;-><init>(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)V

    .line 102
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    const v2, 0x7f0b043a

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-boolean v1, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->w:Z

    if-eqz v1, :cond_0

    .line 107
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->n:Lcom/facebook/katana/activity/findfriends/InvitesAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const v0, 0x7f0b01de

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->a(ILjava/lang/String;)V

    .line 118
    :goto_1
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->x()V

    .line 119
    return-void

    .line 109
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_1
    const v0, 0x7f0b0263

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->a(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public final g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->t:I

    .line 127
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->d(Z)V

    .line 130
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->n:Lcom/facebook/katana/activity/findfriends/InvitesAdapter;

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    .line 131
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->n:Lcom/facebook/katana/activity/findfriends/InvitesAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 134
    const/4 v0, -0x1

    const v1, 0x7f0b01de

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->a(ILjava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 143
    :cond_0
    const v0, 0x7f080104

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b042b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->w()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 150
    new-instance v1, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$2;-><init>(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)V

    .line 162
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 164
    const v2, 0x7f0b043b

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-boolean v1, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->x:Z

    if-eqz v1, :cond_1

    .line 167
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    :goto_1
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->x()V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    const v0, 0x7f0b042a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final l()V
    .locals 2

    .prologue
    .line 387
    new-instance v0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-direct {v0, p0}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;-><init>(Landroid/content/Context;)V

    .line 388
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->p:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a(Ljava/util/Map;)Ljava/lang/String;

    .line 389
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 397
    packed-switch p1, :pswitch_data_0

    .line 447
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 399
    :pswitch_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 400
    const v1, 0x7f030043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 403
    const v0, 0x7f080114

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 405
    iget-boolean v2, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->u:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->v:Z

    if-ne v2, v3, :cond_1

    .line 406
    const v2, 0x7f0b0430

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 414
    :cond_0
    :goto_1
    new-instance v2, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$4;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$4;-><init>(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)V

    .line 422
    const v0, 0x7f080115

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 424
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f0d001f

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 408
    :cond_1
    iget-boolean v2, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->u:Z

    if-ne v2, v3, :cond_2

    .line 409
    const v2, 0x7f0b042f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 410
    :cond_2
    iget-boolean v2, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->v:Z

    if-ne v2, v3, :cond_0

    .line 411
    const v2, 0x7f0b042e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 433
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0446

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0269

    new-instance v2, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$5;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$5;-><init>(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 369
    invoke-super {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->onResume()V

    .line 371
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->B()V

    .line 372
    return-void
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 311
    iget v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 312
    iget-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->x:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->n:Lcom/facebook/katana/activity/findfriends/InvitesAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->b(Ljava/util/List;)V

    .line 328
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->n:Lcom/facebook/katana/activity/findfriends/InvitesAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->b(Ljava/util/List;)V

    goto :goto_0

    .line 320
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->w:Z

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->f:Lcom/facebook/katana/activity/findfriends/FriendsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/FriendsAdapter;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->a(Ljava/util/List;)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->f:Lcom/facebook/katana/activity/findfriends/FriendsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/FriendsAdapter;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->a(Ljava/util/List;)V

    goto :goto_0
.end method
