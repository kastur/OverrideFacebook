.class Lcom/facebook/orca/threadview/ThreadViewActivity$2;
.super Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;
.source "ThreadViewActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ThreadViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$2;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;)V
    .locals 2
    .parameter

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$2;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    .line 288
    :cond_1
    return-void
.end method
