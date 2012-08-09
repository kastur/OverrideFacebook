.class Lcom/facebook/orca/threadview/ThreadTitleHeader$1;
.super Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;
.source "ThreadTitleHeader.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ThreadTitleHeader;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadTitleHeader;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader$1;->a:Lcom/facebook/orca/threadview/ThreadTitleHeader;

    invoke-direct {p0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader$1;->a:Lcom/facebook/orca/threadview/ThreadTitleHeader;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a(Lcom/facebook/orca/threadview/ThreadTitleHeader;Lcom/facebook/orca/presence/PresenceState;)V

    .line 71
    return-void
.end method
