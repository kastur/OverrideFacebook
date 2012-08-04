.class public Lcom/facebook/katana/SyncContactsChangeActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "SyncContactsChangeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;


# instance fields
.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/facebook/katana/binding/AppSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/SyncContactsChangeActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->h:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/SyncContactsChangeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/katana/SyncContactsChangeActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/SyncContactsChangeActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->f:Z

    return p1
.end method

.method private b(I)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0802e2

    const v4, 0x7f0802df

    const v1, 0x7f0802dc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 193
    invoke-virtual {p0, v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-ne p1, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 195
    invoke-virtual {p0, v4}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-ne p1, v4, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 197
    invoke-virtual {p0, v5}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-ne p1, v5, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 199
    iput p1, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->e:I

    .line 200
    return-void

    :cond_0
    move v1, v3

    .line 193
    goto :goto_0

    :cond_1
    move v1, v3

    .line 195
    goto :goto_1

    :cond_2
    move v2, v3

    .line 197
    goto :goto_2
.end method

.method static synthetic b(Lcom/facebook/katana/SyncContactsChangeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/SyncContactsChangeActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/facebook/katana/SyncContactsChangeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->g:Z

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 150
    .line 152
    iget v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->e:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 161
    :goto_0
    iget-object v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->h:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    invoke-static {p0, v2, v1, v0}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 176
    iget-boolean v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->f:Z

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/RemoveRawContactsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 187
    :cond_0
    :goto_1
    return-void

    :pswitch_1
    move v1, v0

    .line 156
    goto :goto_0

    :pswitch_2
    move v3, v1

    move v1, v0

    move v0, v3

    .line 160
    goto :goto_0

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->f:Z

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->h:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x7f0802dc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f0300fe

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->setContentView(I)V

    .line 97
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->h:Lcom/facebook/katana/binding/AppSession;

    .line 99
    const/4 v0, -0x1

    const v1, 0x7f0b0370

    invoke-virtual {p0, v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->a(ILjava/lang/String;)V

    .line 101
    const v0, 0x7f0802db

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f0802de

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0802e1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f0802e5

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    new-instance v0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;

    invoke-direct {v0, p0}, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;-><init>(Lcom/facebook/katana/SyncContactsChangeActivity;)V

    invoke-virtual {v0}, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->c()V

    .line 109
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const v0, 0x7f0b01c9

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0b0370

    const/4 v1, -0x1

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 123
    :sswitch_0
    const v0, 0x7f0802dc

    invoke-direct {p0, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->b(I)V

    .line 124
    invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 129
    :sswitch_1
    const v0, 0x7f0802df

    invoke-direct {p0, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->b(I)V

    .line 130
    invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 135
    :sswitch_2
    const v0, 0x7f0802e2

    invoke-direct {p0, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->b(I)V

    .line 136
    const v0, 0x7f0b01de

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0802db -> :sswitch_0
        0x7f0802de -> :sswitch_1
        0x7f0802e1 -> :sswitch_2
    .end sparse-switch
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/facebook/katana/SyncContactsChangeActivity;->f()V

    .line 115
    invoke-virtual {p0}, Lcom/facebook/katana/SyncContactsChangeActivity;->finish()V

    .line 116
    return-void
.end method
