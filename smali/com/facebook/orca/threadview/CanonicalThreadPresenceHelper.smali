.class public Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;
.super Ljava/lang/Object;
.source "CanonicalThreadPresenceHelper.java"


# instance fields
.field private final a:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private final b:Lcom/facebook/orca/presence/PresenceManager;

.field private final c:Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;

.field private d:Z

.field private e:Lcom/facebook/orca/threads/ThreadSummary;

.field private f:Lcom/facebook/orca/threads/ThreadParticipant;

.field private g:Lcom/facebook/orca/users/UserKey;

.field private h:Lcom/facebook/orca/presence/PresenceState;

.field private i:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/threads/ThreadParticipantUtils;Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->h:Lcom/facebook/orca/presence/PresenceState;

    .line 52
    iput-object p1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 53
    iput-object p2, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->b:Lcom/facebook/orca/presence/PresenceManager;

    .line 55
    new-instance v0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$1;-><init>(Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->c:Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceState;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceState;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/users/UserKey;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->g:Lcom/facebook/orca/users/UserKey;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->h:Lcom/facebook/orca/presence/PresenceState;

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->g:Lcom/facebook/orca/users/UserKey;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->b:Lcom/facebook/orca/presence/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->g:Lcom/facebook/orca/users/UserKey;

    iget-object v2, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->c:Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;)V

    .line 157
    :cond_2
    iput-object p1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->g:Lcom/facebook/orca/users/UserKey;

    .line 159
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->g:Lcom/facebook/orca/users/UserKey;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->b:Lcom/facebook/orca/presence/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->g:Lcom/facebook/orca/users/UserKey;

    iget-object v2, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->c:Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;)V

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->b:Lcom/facebook/orca/presence/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->g:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->h:Lcom/facebook/orca/presence/PresenceState;

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->g:Lcom/facebook/orca/users/UserKey;

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->g:Lcom/facebook/orca/users/UserKey;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->h:Lcom/facebook/orca/presence/PresenceState;

    if-eq v0, p2, :cond_0

    .line 176
    iput-object p2, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->h:Lcom/facebook/orca/presence/PresenceState;

    .line 177
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->i:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->i:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;->a(Lcom/facebook/orca/presence/PresenceState;)V

    goto :goto_0
.end method

.method private d()Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->e:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iget-object v1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 130
    iget-boolean v1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->d:Z

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->e:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iget-object v2, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->f:Lcom/facebook/orca/threads/ThreadParticipant;

    .line 135
    iget-object v1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->f:Lcom/facebook/orca/threads/ThreadParticipant;

    if-eqz v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->f:Lcom/facebook/orca/threads/ThreadParticipant;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    .line 139
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/users/UserKey;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/users/UserKey;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->f:Lcom/facebook/orca/threads/ThreadParticipant;

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->e:Lcom/facebook/orca/threads/ThreadSummary;

    .line 81
    invoke-direct {p0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->d()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->f:Lcom/facebook/orca/threads/ThreadParticipant;

    .line 82
    invoke-direct {p0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->e()V

    .line 83
    return-void
.end method

.method public final a(Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->i:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;

    .line 110
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->d:Z

    .line 70
    invoke-direct {p0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->e()V

    .line 71
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->f:Lcom/facebook/orca/threads/ThreadParticipant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/facebook/orca/presence/PresenceState;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->h:Lcom/facebook/orca/presence/PresenceState;

    return-object v0
.end method
