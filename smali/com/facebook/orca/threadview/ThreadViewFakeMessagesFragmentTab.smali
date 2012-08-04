.class public Lcom/facebook/orca/threadview/ThreadViewFakeMessagesFragmentTab;
.super Landroid/support/v4/app/Fragment;
.source "ThreadViewFakeMessagesFragmentTab.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFakeMessagesFragmentTab;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
