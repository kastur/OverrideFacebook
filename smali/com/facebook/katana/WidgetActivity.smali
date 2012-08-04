.class public Lcom/facebook/katana/WidgetActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "WidgetActivity.java"


# instance fields
.field private e:Z

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/WidgetActivity;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/WidgetActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/facebook/katana/WidgetActivity;->g:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 58
    new-instance v0, Lcom/facebook/katana/WidgetActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/WidgetActivity$1;-><init>(Lcom/facebook/katana/WidgetActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/WidgetActivity;->f:Landroid/content/BroadcastReceiver;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    const-string v1, "com.facebook.katana.widget.publish.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/facebook/katana/WidgetActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/WidgetActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 109
    packed-switch p1, :pswitch_data_0

    .line 192
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 111
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/WidgetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 114
    const v2, 0x7f0300f5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 115
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 116
    const v2, 0x7f0b0364

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 119
    const v2, 0x7f08015c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    iget-object v2, p0, Lcom/facebook/katana/WidgetActivity;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/facebook/katana/WidgetActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    const v2, 0x7f0b0363

    invoke-virtual {p0, v2}, Lcom/facebook/katana/WidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/katana/WidgetActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/facebook/katana/WidgetActivity$2;-><init>(Lcom/facebook/katana/WidgetActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    const v0, 0x7f0b01b0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/WidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/facebook/katana/WidgetActivity$3;

    invoke-direct {v2, p0}, Lcom/facebook/katana/WidgetActivity$3;-><init>(Lcom/facebook/katana/WidgetActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    new-instance v0, Lcom/facebook/katana/WidgetActivity$4;

    invoke-direct {v0, p0}, Lcom/facebook/katana/WidgetActivity$4;-><init>(Lcom/facebook/katana/WidgetActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 179
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 183
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 185
    const v1, 0x7f0b035a

    invoke-virtual {p0, v1}, Lcom/facebook/katana/WidgetActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 186
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 187
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onDestroy()V

    .line 99
    iget-object v0, p0, Lcom/facebook/katana/WidgetActivity;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/facebook/katana/WidgetActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/WidgetActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 87
    iget-boolean v0, p0, Lcom/facebook/katana/WidgetActivity;->e:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/WidgetActivity;->e:Z

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/WidgetActivity;->showDialog(I)V

    .line 91
    :cond_0
    return-void
.end method
