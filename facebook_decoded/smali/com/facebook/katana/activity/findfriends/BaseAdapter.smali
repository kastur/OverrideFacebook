.class public abstract Lcom/facebook/katana/activity/findfriends/BaseAdapter;
.super Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;
.source "BaseAdapter.java"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Landroid/content/Context;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Landroid/view/LayoutInflater;

.field protected final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->b:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->d:Landroid/view/LayoutInflater;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->c:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->e:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->f:Ljava/util/List;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->g:Z

    .line 58
    return-void
.end method

.method private a(Lcom/facebook/katana/model/FacebookPhonebookContact;ILandroid/view/View;)Landroid/text/Spanned;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->b(Lcom/facebook/katana/model/FacebookPhonebookContact;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->e:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a(Lcom/facebook/katana/model/FacebookPhonebookContact;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a(Ljava/lang/String;Ljava/lang/String;ZILandroid/view/View;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZILandroid/view/View;)Landroid/text/Spanned;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 307
    if-eqz p3, :cond_0

    .line 308
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 309
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->b:Landroid/content/Context;

    const v3, 0x7f0b039c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 311
    new-instance v2, Lcom/facebook/katana/activity/findfriends/BaseAdapter$2;

    invoke-direct {v2, p0, p4, p5}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$2;-><init>(Lcom/facebook/katana/activity/findfriends/BaseAdapter;ILandroid/view/View;)V

    .line 323
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 325
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v0, v2, v5

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 327
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 184
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 185
    if-lez v0, :cond_0

    .line 186
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 188
    :cond_0
    return-object p0
.end method

.method private b(ILandroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 242
    new-instance v0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$1;-><init>(Lcom/facebook/katana/activity/findfriends/BaseAdapter;ILandroid/view/View;)V

    return-object v0
.end method

.method private c(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;->a()I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract a(Lcom/facebook/katana/model/FacebookPhonebookContact;)J
.end method

.method public final a(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhonebookContact;

    .line 119
    if-nez p4, :cond_2

    .line 120
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->d:Landroid/view/LayoutInflater;

    const v3, 0x7f0300e4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 122
    const/4 v1, 0x1

    .line 125
    :goto_0
    invoke-virtual {p0, p4, v0, v1}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a(Landroid/view/View;Lcom/facebook/katana/model/FacebookPhonebookContact;Z)V

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->c(II)I

    move-result v3

    .line 129
    const v1, 0x7f0802ab

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const v1, 0x7f0802ac

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 133
    invoke-direct {p0, v0, v3, p4}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a(Lcom/facebook/katana/model/FacebookPhonebookContact;ILandroid/view/View;)Landroid/text/Spanned;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 136
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 138
    const v1, 0x7f0802ad

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 140
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-direct {p0, v3, p4}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->b(ILandroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-boolean v3, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->g:Z

    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->e:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a(Lcom/facebook/katana/model/FacebookPhonebookContact;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->g:Z

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    return-object p4

    .line 148
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    .line 100
    if-nez p2, :cond_0

    .line 101
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f03004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 105
    check-cast v0, Landroid/widget/TextView;

    .line 106
    iget-object v2, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public final a(II)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->c(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILandroid/view/View;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0802ad

    const v5, 0x7f0802ac

    .line 254
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhonebookContact;

    .line 257
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a(Lcom/facebook/katana/model/FacebookPhonebookContact;)J

    move-result-wide v1

    .line 258
    iget-object v3, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->e:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    iget-object v3, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->e:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a(Lcom/facebook/katana/model/FacebookPhonebookContact;ILandroid/view/View;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 271
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v3, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->e:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a(Lcom/facebook/katana/model/FacebookPhonebookContact;ILandroid/view/View;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected abstract a(Landroid/view/View;Lcom/facebook/katana/model/FacebookPhonebookContact;Z)V
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 215
    new-instance v0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask;

    invoke-direct {v0, p0, v2}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask;-><init>(Lcom/facebook/katana/activity/findfriends/BaseAdapter;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->h:Landroid/os/AsyncTask;

    .line 216
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->h:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 217
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 203
    iput-boolean p1, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->g:Z

    .line 204
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->i()V

    .line 205
    return-void
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;->b()I

    move-result v0

    return v0
.end method

.method public final b(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/facebook/katana/model/FacebookPhonebookContact;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 289
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPhonebookContact;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    return v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->e:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhonebookContact;

    .line 232
    new-instance v3, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a(Lcom/facebook/katana/model/FacebookPhonebookContact;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_0
    return-object v1
.end method

.method protected abstract h()Ljava/lang/String;
.end method
