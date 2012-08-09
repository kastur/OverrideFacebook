.class public Lcom/facebook/orca/images/ThreadIconPickerActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "ThreadIconPickerActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Landroid/support/v4/app/FragmentManager;

.field private f:Lcom/facebook/orca/photos/picking/PickMediaOperation;

.field private g:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/ThreadIconPickerActivity;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 3
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->g:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 152
    if-eqz p1, :cond_1

    .line 153
    new-instance v0, Lcom/facebook/orca/attachments/MediaResource;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/attachments/MediaResource$Type;->PHOTO:Lcom/facebook/orca/attachments/MediaResource$Type;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/attachments/MediaResource;-><init>(Landroid/net/Uri;Lcom/facebook/orca/attachments/MediaResource$Type;)V

    .line 155
    :cond_1
    new-instance v1, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->b(Z)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->h()Lcom/facebook/orca/server/ModifyThreadParams;

    move-result-object v0

    .line 161
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 162
    const-string v2, "modifyThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 163
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->g:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "modify_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x1

    .line 118
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;-><init>(Z)V

    .line 119
    invoke-virtual {v0, v2}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Z)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(I)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->b(I)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaParams;->c(I)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaParams;->d(I)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->CAMERA:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->GALLERY:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)Lcom/facebook/orca/photos/picking/PickMediaParams;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->IMAGE_SEARCH:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 127
    iget-boolean v1, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->j:Z

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->REMOVE:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->f:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/photos/picking/PickMediaParams;)V

    .line 131
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 53
    const-class v1, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->e:Landroid/support/v4/app/FragmentManager;

    .line 55
    invoke-virtual {p0}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    const-string v1, "threadId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->i:Ljava/lang/String;

    .line 57
    const-string v1, "hasPictureHash"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->j:Z

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->e:Landroid/support/v4/app/FragmentManager;

    const-string v1, "pickMediaOperation"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/picking/PickMediaOperation;

    iput-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->f:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->f:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-direct {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->f:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    .line 63
    const-string v0, "pickMediaOperation"

    iget-object v1, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->f:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->f:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    new-instance v1, Lcom/facebook/orca/images/ThreadIconPickerActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ThreadIconPickerActivity$1;-><init>(Lcom/facebook/orca/images/ThreadIconPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;)V

    .line 89
    const-string v0, "setPhotoOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->g:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->g:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/images/ThreadIconPickerActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ThreadIconPickerActivity$2;-><init>(Lcom/facebook/orca/images/ThreadIconPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->g:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    sget v2, Lcom/facebook/orca/R$string;->thread_icon_picker_progress:I

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 106
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "thread_icon"

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 142
    const-string v0, "showedDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->h:Z

    .line 143
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onResume()V

    .line 111
    iget-boolean v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->h:Z

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->g()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->h:Z

    .line 115
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    const-string v0, "showedDialog"

    iget-boolean v1, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    return-void
.end method
