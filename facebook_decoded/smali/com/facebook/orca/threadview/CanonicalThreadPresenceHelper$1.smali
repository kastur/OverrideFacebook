.class Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$1;
.super Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;
.source "CanonicalThreadPresenceHelper.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$1;->a:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$1;->a:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-static {v0, p1, p2}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceState;)V

    .line 59
    return-void
.end method
