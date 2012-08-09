.class Lcom/facebook/orca/threadview/ThreadTitleView$1;
.super Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;
.source "ThreadTitleView.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ThreadTitleView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadTitleView;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadTitleView$1;->a:Lcom/facebook/orca/threadview/ThreadTitleView;

    invoke-direct {p0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView$1;->a:Lcom/facebook/orca/threadview/ThreadTitleView;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadTitleView;->a(Lcom/facebook/orca/threadview/ThreadTitleView;Lcom/facebook/orca/presence/PresenceState;)V

    .line 77
    return-void
.end method
