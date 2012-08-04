.class Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "ProfileTabHostActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/ProfileTabHostActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/ProfileTabHostActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/ProfileTabHostActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;-><init>(Lcom/facebook/katana/ProfileTabHostActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/Exception;JLcom/facebook/katana/model/FacebookUserFull;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Lcom/facebook/katana/ProfileTabHostActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v2}, Lcom/facebook/katana/ProfileTabHostActivity;->b(Lcom/facebook/katana/ProfileTabHostActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->b(Lcom/facebook/katana/ProfileTabHostActivity;)J

    move-result-wide v0

    iget-wide v2, p6, Lcom/facebook/katana/model/FacebookUserFull;->mUserId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p6, Lcom/facebook/katana/model/FacebookUserFull;->mCellPhone:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v0}, Lcom/facebook/katana/util/GrowthUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v0}, Lcom/facebook/katana/util/GrowthUtils;->b(Landroid/content/Context;)V

    .line 117
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->showDialog(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public final a(JZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 134
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Lcom/facebook/katana/ProfileTabHostActivity;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 135
    if-nez p3, :cond_1

    .line 137
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Lcom/facebook/katana/ProfileTabHostActivity;Z)Z

    .line 138
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    iget-object v1, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    const v2, 0x7f0b034c

    invoke-virtual {v1, v2}, Lcom/facebook/katana/ProfileTabHostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->a(ILjava/lang/String;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Lcom/facebook/katana/ProfileTabHostActivity;Z)Z

    .line 142
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 150
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->c(Lcom/facebook/katana/ProfileTabHostActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    iget-object v1, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v1}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Lcom/facebook/katana/ProfileTabHostActivity;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/util/ApplicationUtils;->b(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V

    .line 156
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    const v1, 0x7f0802ef

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->finish()V

    .line 160
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->d(Lcom/facebook/katana/ProfileTabHostActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->d(Lcom/facebook/katana/ProfileTabHostActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->e(Lcom/facebook/katana/ProfileTabHostActivity;)V

    .line 165
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 125
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$ProfileAppSessionListener;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->showDialog(I)V

    .line 128
    :cond_0
    return-void
.end method
