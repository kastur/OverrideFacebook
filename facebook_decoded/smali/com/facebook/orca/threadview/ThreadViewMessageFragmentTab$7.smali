.class Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$7;
.super Ljava/lang/Object;
.source "ThreadViewMessageFragmentTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$7;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$7;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;Z)V

    .line 760
    return-void
.end method
