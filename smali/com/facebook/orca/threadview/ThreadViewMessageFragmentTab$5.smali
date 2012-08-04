.class Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$5;
.super Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;
.source "ThreadViewMessageFragmentTab.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$5;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-direct {p0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$5;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;Lcom/facebook/orca/presence/PresenceState;)V

    .line 225
    return-void
.end method
