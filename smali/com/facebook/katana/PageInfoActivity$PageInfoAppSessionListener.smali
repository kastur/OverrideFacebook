.class Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;
.super Lcom/facebook/katana/ProfileInfoActivity$InfoAppSessionListener;
.source "PageInfoActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/PageInfoActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/PageInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-direct {p0, p1}, Lcom/facebook/katana/ProfileInfoActivity$InfoAppSessionListener;-><init>(Lcom/facebook/katana/ProfileInfoActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/PageInfoActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;-><init>(Lcom/facebook/katana/PageInfoActivity;)V

    return-void
.end method


# virtual methods
.method public final a(JZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 86
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/PageInfoActivity;->c(Lcom/facebook/katana/PageInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/PageInfoActivity;->d(Lcom/facebook/katana/PageInfoActivity;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 87
    if-nez p3, :cond_1

    .line 88
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/PageInfoActivity;->a(Lcom/facebook/katana/PageInfoActivity;Z)Z

    .line 89
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    iget-object v1, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    const v2, 0x7f0b034c

    invoke-virtual {v1, v2}, Lcom/facebook/katana/PageInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/facebook/katana/PageInfoActivity;->a(ILjava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/PageInfoActivity;->a(Lcom/facebook/katana/PageInfoActivity;Z)Z

    .line 92
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/facebook/katana/PageInfoActivity;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 100
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/PageInfoActivity;->e(Lcom/facebook/katana/PageInfoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/PageInfoActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    iget-object v1, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-static {v1}, Lcom/facebook/katana/PageInfoActivity;->f(Lcom/facebook/katana/PageInfoActivity;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/util/ApplicationUtils;->b(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V

    .line 106
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    const v1, 0x7f0802ef

    invoke-virtual {v0, v1}, Lcom/facebook/katana/PageInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/PageInfoActivity;->finish()V

    .line 110
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/PageInfoActivity;->g(Lcom/facebook/katana/PageInfoActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/PageInfoActivity;->h(Lcom/facebook/katana/PageInfoActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/PageInfoActivity;->i(Lcom/facebook/katana/PageInfoActivity;)V

    .line 115
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JLjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<typeClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "JTtypeClass;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/PageInfoActivity;->a(Lcom/facebook/katana/PageInfoActivity;)J

    move-result-wide v0

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/PageInfoActivity;->b(Z)V

    .line 57
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/PageInfoActivity;->b(Lcom/facebook/katana/PageInfoActivity;)V

    .line 59
    if-eqz p7, :cond_1

    .line 60
    instance-of v0, p7, Lcom/facebook/katana/model/FacebookPageFull;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    check-cast p7, Lcom/facebook/katana/model/FacebookPageFull;

    invoke-static {v0, p7}, Lcom/facebook/katana/PageInfoActivity;->a(Lcom/facebook/katana/PageInfoActivity;Lcom/facebook/katana/model/FacebookPageFull;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    const v1, 0x7f0b0285

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 70
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/PageInfoActivity;->finish()V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    iget-object v1, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    const v2, 0x7f0b0286

    invoke-virtual {v1, v2}, Lcom/facebook/katana/PageInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;->a:Lcom/facebook/katana/PageInfoActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
