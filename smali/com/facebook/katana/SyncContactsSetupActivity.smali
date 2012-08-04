.class public Lcom/facebook/katana/SyncContactsSetupActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "SyncContactsSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;


# instance fields
.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 36
    return-void
.end method

.method private a(Lcom/facebook/katana/binding/AppSession;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 168
    .line 170
    iget v2, p0, Lcom/facebook/katana/SyncContactsSetupActivity;->f:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 179
    :goto_0
    new-instance v2, Lcom/facebook/katana/SyncContactsSetupActivity$AddAccountUserTask;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/facebook/katana/SyncContactsSetupActivity$AddAccountUserTask;-><init>(Lcom/facebook/katana/SyncContactsSetupActivity;Lcom/facebook/katana/binding/AppSession;ZZ)V

    invoke-virtual {v2}, Lcom/facebook/katana/SyncContactsSetupActivity$AddAccountUserTask;->c()V

    .line 192
    return-void

    :pswitch_1
    move v1, v0

    .line 174
    goto :goto_0

    :pswitch_2
    move v3, v1

    move v1, v0

    move v0, v3

    .line 178
    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x7f0802dc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/facebook/katana/SyncContactsSetupActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/facebook/katana/SyncContactsSetupActivity;->e:Z

    return v0
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

    .line 153
    invoke-virtual {p0, v1}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-ne p1, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 155
    invoke-virtual {p0, v4}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-ne p1, v4, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 157
    invoke-virtual {p0, v5}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-ne p1, v5, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 159
    iput p1, p0, Lcom/facebook/katana/SyncContactsSetupActivity;->f:I

    .line 160
    return-void

    :cond_0
    move v1, v3

    .line 153
    goto :goto_0

    :cond_1
    move v1, v3

    .line 155
    goto :goto_1

    :cond_2
    move v2, v3

    .line 157
    goto :goto_2
.end method

.method private f()V
    .locals 0

    .prologue
    .line 196
    invoke-static {p0}, Lcom/facebook/katana/util/ApplicationUtils;->b(Landroid/content/Context;)V

    .line 197
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f0300ff

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SyncContactsSetupActivity;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/facebook/katana/SyncContactsSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "add_account"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/SyncContactsSetupActivity;->e:Z

    .line 88
    const v0, 0x7f0802df

    invoke-direct {p0, v0}, Lcom/facebook/katana/SyncContactsSetupActivity;->b(I)V

    .line 90
    const v0, 0x7f0802db

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v0, 0x7f0802de

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v0, 0x7f0802e1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const/4 v0, -0x1

    const v1, 0x7f0b0370

    invoke-virtual {p0, v1}, Lcom/facebook/katana/SyncContactsSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/SyncContactsSetupActivity;->a(ILjava/lang/String;)V

    .line 95
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const v0, 0x7f0b01c9

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SyncContactsSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0b0370

    const/4 v1, -0x1

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 125
    :sswitch_0
    const v0, 0x7f0802dc

    invoke-direct {p0, v0}, Lcom/facebook/katana/SyncContactsSetupActivity;->b(I)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/SyncContactsSetupActivity;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 131
    :sswitch_1
    const v0, 0x7f0802df

    invoke-direct {p0, v0}, Lcom/facebook/katana/SyncContactsSetupActivity;->b(I)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/SyncContactsSetupActivity;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 137
    :sswitch_2
    const v0, 0x7f0802e2

    invoke-direct {p0, v0}, Lcom/facebook/katana/SyncContactsSetupActivity;->b(I)V

    .line 138
    const v0, 0x7f0b01de

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SyncContactsSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/SyncContactsSetupActivity;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0802db -> :sswitch_0
        0x7f0802de -> :sswitch_1
        0x7f0802e1 -> :sswitch_2
    .end sparse-switch
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Z)V

    .line 102
    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0, v0}, Lcom/facebook/katana/SyncContactsSetupActivity;->a(Lcom/facebook/katana/binding/AppSession;)V

    .line 110
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/katana/SyncContactsSetupActivity;->e:Z

    if-nez v0, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/facebook/katana/SyncContactsSetupActivity;->f()V

    .line 117
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/katana/SyncContactsSetupActivity;->finish()V

    .line 118
    return-void

    .line 115
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/SyncContactsSetupActivity;->f()V

    goto :goto_0
.end method
