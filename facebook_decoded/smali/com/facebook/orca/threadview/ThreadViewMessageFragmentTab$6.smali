.class Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$6;
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
    .line 280
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$6;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$6;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    .line 284
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$6;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    .line 285
    return-void
.end method
