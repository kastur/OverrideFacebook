.class public Lcom/facebook/orca/ops/OrcaServiceFragment;
.super Landroid/support/v4/app/Fragment;
.source "OrcaServiceFragment.java"


# instance fields
.field private J:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private K:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

.field private L:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

.field private M:Lcom/facebook/orca/ops/OperationProgressIndicator;

.field private N:Z

.field private O:Ljava/lang/String;

.field private P:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->e()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 199
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 200
    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-direct {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;-><init>()V

    .line 202
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 204
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 206
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceFragment;)Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->K:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/ops/OrcaServiceFragment;)Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->L:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    return-object v0
.end method

.method private c()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->J:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 34
    return-void
.end method

.method public final a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->N:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->J:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->M:Lcom/facebook/orca/ops/OperationProgressIndicator;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->K:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    .line 124
    return-void
.end method

.method public final a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->L:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    .line 142
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->N:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->J:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->O:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->P:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->J:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->J:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->J:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Z)V

    .line 40
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->J:Lcom/facebook/orca/ops/OrcaServiceOperation;

    new-instance v1, Lcom/facebook/orca/ops/OrcaServiceFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/ops/OrcaServiceFragment$1;-><init>(Lcom/facebook/orca/ops/OrcaServiceFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->J:Lcom/facebook/orca/ops/OrcaServiceOperation;

    new-instance v1, Lcom/facebook/orca/ops/OrcaServiceFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/ops/OrcaServiceFragment$2;-><init>(Lcom/facebook/orca/ops/OrcaServiceFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;)V

    .line 63
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->O:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->J:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Landroid/os/Bundle;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->J:Lcom/facebook/orca/ops/OrcaServiceOperation;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->M:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 67
    iput-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->M:Lcom/facebook/orca/ops/OperationProgressIndicator;

    .line 68
    iput-boolean v2, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->N:Z

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->O:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->J:Lcom/facebook/orca/ops/OrcaServiceOperation;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->O:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->P:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    iput-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->O:Ljava/lang/String;

    .line 73
    iput-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->P:Landroid/os/Bundle;

    .line 75
    :cond_1
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->J:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method public final w()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->w()V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->J:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a()V

    .line 81
    iput-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->K:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    .line 82
    iput-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->L:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    .line 83
    return-void
.end method
