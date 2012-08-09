.class public Lcom/facebook/katana/UsersTabHostActivity;
.super Lcom/facebook/katana/activity/BaseFacebookTabActivity;
.source "UsersTabHostActivity.java"

# interfaces
.implements Lcom/facebook/katana/MyTabHost$OnTabChangeListener;
.implements Lcom/facebook/katana/TabProgressListener;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Landroid/app/Activity;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/UsersTabHostActivity;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0802fc

    const/4 v2, 0x0

    .line 202
    const-string v0, "friends"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f0b01f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 204
    invoke-virtual {p0, v3}, Lcom/facebook/katana/UsersTabHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string v0, "page_search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f0b01ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 207
    invoke-virtual {p0, v3}, Lcom/facebook/katana/UsersTabHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/facebook/katana/UsersTabProgressSource;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/katana/UsersTabProgressSource;

    invoke-interface {v0, p0}, Lcom/facebook/katana/UsersTabProgressSource;->a(Lcom/facebook/katana/TabProgressListener;)V

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->a(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030113

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UsersTabHostActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f0200b0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/UsersTabHostActivity;->a(ILjava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->h()Landroid/widget/TabHost;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/MyTabHost;

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/MyTabHost;->a(Z)V

    .line 61
    const-string v1, "friends"

    const v2, 0x7f0b01fa

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/UsersTabHostActivity;->a(Ljava/lang/String;I)Landroid/widget/RadioButton;

    move-result-object v1

    .line 63
    const-string v2, "friends"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/katana/MyTabHost;->a(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;

    move-result-object v1

    .line 64
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/FriendsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string v3, "within_tab"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const-string v3, "extra_parent_tag"

    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {v1, v2}, Lcom/facebook/katana/MyTabHost$TabSpec;->a(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;

    .line 68
    invoke-virtual {v0, v1}, Lcom/facebook/katana/MyTabHost;->a(Lcom/facebook/katana/MyTabHost$TabSpec;)V

    .line 71
    const-string v1, "page_search"

    const v2, 0x7f0b029c

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/UsersTabHostActivity;->a(Ljava/lang/String;I)Landroid/widget/RadioButton;

    move-result-object v1

    .line 73
    const-string v2, "page_search"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/katana/MyTabHost;->a(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;

    move-result-object v1

    .line 74
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/PageSearchResultsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string v3, "within_tab"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const-string v3, "extra_parent_tag"

    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v1, v2}, Lcom/facebook/katana/MyTabHost$TabSpec;->a(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;

    .line 78
    invoke-virtual {v0, v1}, Lcom/facebook/katana/MyTabHost;->a(Lcom/facebook/katana/MyTabHost$TabSpec;)V

    .line 81
    const v1, 0x7f08004f

    invoke-virtual {p0, v1}, Lcom/facebook/katana/UsersTabHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/facebook/katana/UsersTabHostActivity;->f:Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lcom/facebook/katana/UsersTabHostActivity;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/facebook/katana/UsersTabHostActivity$1;

    invoke-direct {v2, p0}, Lcom/facebook/katana/UsersTabHostActivity$1;-><init>(Lcom/facebook/katana/UsersTabHostActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->d_()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    .line 107
    iget-object v1, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    instance-of v1, v1, Lcom/facebook/katana/UsersTabProgressSource;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    check-cast v1, Lcom/facebook/katana/UsersTabProgressSource;

    invoke-interface {v1, p0}, Lcom/facebook/katana/UsersTabProgressSource;->a(Lcom/facebook/katana/TabProgressListener;)V

    .line 112
    :cond_0
    const-string v2, "friends"

    .line 113
    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.facebook.katana.DefaultTab"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_1

    .line 119
    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/katana/MyTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->d_()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    .line 124
    invoke-direct {p0, v1}, Lcom/facebook/katana/UsersTabHostActivity;->b(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/facebook/katana/UsersTabHostActivity;->o()V

    .line 129
    invoke-virtual {v0, p0}, Lcom/facebook/katana/MyTabHost;->setOnTabChangedListener(Lcom/facebook/katana/MyTabHost$OnTabChangeListener;)V

    .line 131
    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->i()V

    .line 132
    return-void

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/facebook/katana/UsersTabProgressSource;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/katana/UsersTabProgressSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/katana/UsersTabProgressSource;->a(Lcom/facebook/katana/TabProgressListener;)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->d_()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    .line 185
    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/facebook/katana/UsersTabProgressSource;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/katana/UsersTabProgressSource;

    invoke-interface {v0, p0}, Lcom/facebook/katana/UsersTabProgressSource;->a(Lcom/facebook/katana/TabProgressListener;)V

    .line 187
    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/katana/UsersTabProgressSource;

    iget-object v1, p0, Lcom/facebook/katana/UsersTabHostActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/katana/UsersTabProgressSource;->a(Ljava/lang/String;)V

    .line 190
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/katana/UsersTabHostActivity;->b(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public final a_(Z)V
    .locals 2
    .parameter

    .prologue
    .line 214
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UsersTabHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 215
    return-void

    .line 214
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->t:Ljava/lang/String;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/facebook/katana/UsersTabProgressSource;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->e:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/katana/UsersTabProgressSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/katana/UsersTabProgressSource;->a(Lcom/facebook/katana/TabProgressListener;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->onResume()V

    .line 141
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    const-string v0, "fb://findfriends"

    invoke-static {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 172
    return-void
.end method
