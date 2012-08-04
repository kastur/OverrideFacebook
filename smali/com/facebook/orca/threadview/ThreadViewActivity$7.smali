.class Lcom/facebook/orca/threadview/ThreadViewActivity$7;
.super Ljava/lang/Object;
.source "ThreadViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ThreadViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$7;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$7;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->d(Lcom/facebook/orca/threadview/ThreadViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$7;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    .line 1044
    :cond_0
    return-void
.end method
