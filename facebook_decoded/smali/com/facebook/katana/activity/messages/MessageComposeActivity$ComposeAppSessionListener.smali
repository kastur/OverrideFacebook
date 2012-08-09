.class Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "MessageComposeActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;-><init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/facebook/katana/model/FacebookProfile;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 513
    if-eqz p2, :cond_0

    .line 514
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-static {v0, p2}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->a(Lcom/facebook/katana/activity/messages/MessageComposeActivity;Lcom/facebook/katana/model/FacebookProfile;)V

    .line 516
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/AppSession;ILjava/lang/Exception;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 498
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-static {v0, p4}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->a(Lcom/facebook/katana/activity/messages/MessageComposeActivity;Lcom/facebook/katana/binding/ProfileImage;)V

    .line 501
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter

    .prologue
    .line 506
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->a(Lcom/facebook/katana/activity/messages/MessageComposeActivity;Lcom/facebook/katana/binding/ProfileImage;)V

    .line 507
    return-void
.end method

.method public final f(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 478
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->removeDialog(I)V

    .line 479
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->a(Lcom/facebook/katana/activity/messages/MessageComposeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->setResult(I)V

    .line 482
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->finish()V

    .line 490
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    const v2, 0x7f0b025d

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
