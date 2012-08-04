.class public Lcom/facebook/orca/activity/OrcaFragment;
.super Landroid/support/v4/app/Fragment;
.source "OrcaFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method protected static a(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragment;->m()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 39
    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-direct {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;-><init>()V

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/activity/OrcaFragment;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 43
    :cond_0
    return-object v0
.end method

.method protected final a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragment;->m()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 27
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 28
    return-void
.end method

.method protected final d(I)Landroid/view/View;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragment;->t()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
