.class Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;
.super Lcom/facebook/katana/UserTask;
.source "SyncContactsChangeActivity.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/katana/SyncContactsChangeActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/SyncContactsChangeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/katana/UserTask;-><init>(Landroid/os/Handler;)V

    .line 44
    invoke-static {p1}, Lcom/facebook/katana/SyncContactsChangeActivity;->a(Lcom/facebook/katana/SyncContactsChangeActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->a:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    iget-object v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->a(Lcom/facebook/katana/SyncContactsChangeActivity;Z)Z

    .line 53
    iget-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    iget-object v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->b(Lcom/facebook/katana/SyncContactsChangeActivity;Z)Z

    .line 55
    return-void
.end method

.method protected final b()V
    .locals 6

    .prologue
    const v1, 0x7f0802e2

    .line 60
    iget-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    invoke-static {v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->b(Lcom/facebook/katana/SyncContactsChangeActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    invoke-static {v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->c(Lcom/facebook/katana/SyncContactsChangeActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    const v0, 0x7f0802dc

    .line 75
    :goto_1
    iget-object v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    invoke-static {v2, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->a(Lcom/facebook/katana/SyncContactsChangeActivity;I)V

    .line 77
    if-ne v0, v1, :cond_2

    .line 78
    iget-object v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    const v5, 0x7f0b01de

    invoke-virtual {v4, v5}, Lcom/facebook/katana/SyncContactsChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/katana/SyncContactsChangeActivity;->a(ILjava/lang/String;)V

    .line 81
    :cond_2
    if-eq v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    const v1, 0x7f0802e3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    const v2, 0x7f0b0373

    invoke-virtual {v1, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    const v1, 0x7f0802e4

    invoke-virtual {v0, v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->b:Lcom/facebook/katana/SyncContactsChangeActivity;

    const v2, 0x7f0b0374

    invoke-virtual {v1, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    :cond_3
    const v0, 0x7f0802df

    goto :goto_1

    :cond_4
    move v0, v1

    .line 72
    goto :goto_1
.end method
