.class public abstract Lcom/facebook/katana/fragment/BaseFacebookFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFacebookFragment.java"

# interfaces
.implements Lcom/facebook/katana/fragment/FacebookFragment;
.implements Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;


# instance fields
.field private J:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private g(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->d(I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 68
    const-string v1, "Cannot create dialog for %s. Check onCreateDialogFragment(int) method"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->m()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 74
    invoke-static {p1}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->h(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 79
    :cond_0
    const/16 v1, 0x1001

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->a(I)Landroid/support/v4/app/FragmentTransaction;

    .line 80
    invoke-virtual {v0, v2, v3, v5}, Landroid/support/v4/app/DialogFragment;->a(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;Z)I

    .line 81
    return-void
.end method

.method private static h(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 98
    const-string v0, "dialogFragment:tag:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final G()Lcom/facebook/katana/activity/BaseFacebookActivity;
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 30
    instance-of v1, v0, Lcom/facebook/katana/activity/BaseFacebookActivity;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/facebook/katana/activity/BaseFacebookActivity;

    .line 34
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/katana/fragment/BaseFacebookFragment;->J:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->G()Lcom/facebook/katana/activity/BaseFacebookActivity;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->r()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/katana/fragment/BaseFacebookFragment;->J:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/fragment/BaseFacebookFragment;->J:Ljava/lang/String;

    return-object v0

    .line 106
    :cond_1
    const-string v0, "NONE_FACEBOOK_ACTIVITY"

    goto :goto_0
.end method

.method public a(Lcom/facebook/katana/ui/CustomMenuItem;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    return-void
.end method

.method public d(I)Landroid/support/v4/app/DialogFragment;
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e(I)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->g(I)V

    .line 53
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public final f(I)V
    .locals 4
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->m()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 87
    invoke-static {p1}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->h(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 89
    instance-of v2, v0, Landroid/support/v4/app/DialogFragment;

    if-eqz v2, :cond_0

    .line 90
    check-cast v0, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->a()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expect a DialogFragment for tag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Assert;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
