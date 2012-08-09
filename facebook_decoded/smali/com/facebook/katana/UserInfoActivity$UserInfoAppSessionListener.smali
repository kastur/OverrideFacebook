.class Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;
.super Lcom/facebook/katana/ProfileInfoActivity$InfoAppSessionListener;
.source "UserInfoActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/UserInfoActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/UserInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->a:Lcom/facebook/katana/UserInfoActivity;

    invoke-direct {p0, p1}, Lcom/facebook/katana/ProfileInfoActivity$InfoAppSessionListener;-><init>(Lcom/facebook/katana/ProfileInfoActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/UserInfoActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;-><init>(Lcom/facebook/katana/UserInfoActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/Exception;JLcom/facebook/katana/model/FacebookUserFull;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->a:Lcom/facebook/katana/UserInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/UserInfoActivity;->a(Lcom/facebook/katana/UserInfoActivity;)J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->a:Lcom/facebook/katana/UserInfoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/UserInfoActivity;->b(Z)V

    .line 61
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->a:Lcom/facebook/katana/UserInfoActivity;

    invoke-static {v0}, Lcom/facebook/katana/UserInfoActivity;->b(Lcom/facebook/katana/UserInfoActivity;)V

    .line 63
    if-eqz p6, :cond_1

    .line 64
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->a:Lcom/facebook/katana/UserInfoActivity;

    invoke-static {v0, p6, p7}, Lcom/facebook/katana/UserInfoActivity;->a(Lcom/facebook/katana/UserInfoActivity;Lcom/facebook/katana/model/FacebookUserFull;Z)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->a:Lcom/facebook/katana/UserInfoActivity;

    const v1, 0x7f0b02e0

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 69
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->a:Lcom/facebook/katana/UserInfoActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/UserInfoActivity;->finish()V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->a:Lcom/facebook/katana/UserInfoActivity;

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->a:Lcom/facebook/katana/UserInfoActivity;

    const v2, 0x7f0b02d4

    invoke-virtual {v1, v2}, Lcom/facebook/katana/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->a:Lcom/facebook/katana/UserInfoActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->a:Lcom/facebook/katana/UserInfoActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/UserInfoActivity;->removeDialog(I)V

    .line 86
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;->a:Lcom/facebook/katana/UserInfoActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/katana/UserInfoActivity;->f:Ljava/lang/String;

    .line 87
    return-void
.end method
