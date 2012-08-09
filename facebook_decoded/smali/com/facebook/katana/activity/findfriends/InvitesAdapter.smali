.class public Lcom/facebook/katana/activity/findfriends/InvitesAdapter;
.super Lcom/facebook/katana/activity/findfriends/BaseAdapter;
.source "InvitesAdapter.java"


# instance fields
.field private g:Landroid/text/Spanned;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/text/Spanned;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;",
            "Landroid/text/Spanned;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->a:Ljava/util/List;

    .line 34
    iput-object p3, p0, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->g:Landroid/text/Spanned;

    .line 35
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/util/GrowthUtils;->h(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->h:Z

    .line 37
    invoke-virtual {p0, p2}, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->a(Ljava/util/List;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/katana/model/FacebookPhonebookContact;)J
    .locals 2
    .parameter

    .prologue
    .line 103
    iget-wide v0, p1, Lcom/facebook/katana/model/FacebookPhonebookContact;->recordId:J

    return-wide v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->h:Z

    if-nez v0, :cond_0

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 81
    :goto_0
    return-object p2

    .line 57
    :cond_0
    if-nez p1, :cond_4

    .line 58
    iget-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->i:Z

    if-nez v0, :cond_1

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->i:Z

    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/util/GrowthUtils;->g(Landroid/content/Context;)V

    .line 66
    :cond_1
    if-eqz p2, :cond_2

    instance-of v0, p2, Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f03003c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 70
    :cond_3
    const v0, 0x7f0800fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->g:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 74
    const v0, 0x7f0800c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :cond_4
    if-eqz p2, :cond_5

    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 78
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 81
    :cond_6
    invoke-super {p0, p1, v2, v2}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method protected final a(Landroid/view/View;Lcom/facebook/katana/model/FacebookPhonebookContact;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    const v0, 0x7f080081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    return-void
.end method

.method protected final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->b:Landroid/content/Context;

    const v1, 0x7f0b0439

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->b:Landroid/content/Context;

    const v1, 0x7f0b043f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
