.class public Lcom/facebook/katana/orca/FbandroidAuthenticationManager;
.super Ljava/lang/Object;
.source "FbandroidAuthenticationManager.java"

# interfaces
.implements Lcom/facebook/orca/auth/OrcaAuthenticationManager;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/facebook/orca/users/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not be called from within fbandroid"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/facebook/orca/users/User;)V
    .locals 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;->b:Lcom/facebook/orca/users/User;

    if-eqz v0, :cond_3

    .line 67
    new-instance v0, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->n()Lcom/facebook/orca/common/util/TriState;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    if-ne v1, v2, :cond_0

    .line 69
    iget-object v1, p0, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;->b:Lcom/facebook/orca/users/User;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->u()Lcom/facebook/orca/common/util/TriState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/common/util/TriState;)Lcom/facebook/orca/users/UserBuilder;

    .line 71
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;->b:Lcom/facebook/orca/users/User;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 74
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;->b:Lcom/facebook/orca/users/User;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;->b:Lcom/facebook/orca/users/User;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Z)V

    .line 78
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;->b:Lcom/facebook/orca/users/User;

    .line 80
    :cond_3
    return-void
.end method

.method public final declared-synchronized b()Lcom/facebook/orca/auth/FacebookCredentials;
    .locals 4

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->g()Lcom/facebook/katana/binding/AppSession$LoginStatus;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_1

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/facebook/orca/auth/FacebookCredentials;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->oAuthToken:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/auth/FacebookCredentials;-><init>(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;->b()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;->h()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should never be called in fbandroid"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;->b:Lcom/facebook/orca/users/User;

    .line 86
    return-void
.end method

.method public final h()Lcom/facebook/orca/users/User;
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->g()Lcom/facebook/katana/binding/AppSession$LoginStatus;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    if-eq v1, v2, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    goto :goto_0
.end method
