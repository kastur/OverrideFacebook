.class public Lcom/facebook/apache/http/auth/AuthState;
.super Ljava/lang/Object;
.source "AuthState.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private a:Lcom/facebook/apache/http/auth/AuthScheme;

.field private b:Lcom/facebook/apache/http/auth/AuthScope;

.field private c:Lcom/facebook/apache/http/auth/Credentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/facebook/apache/http/auth/AuthState;->a:Lcom/facebook/apache/http/auth/AuthScheme;

    .line 64
    iput-object v0, p0, Lcom/facebook/apache/http/auth/AuthState;->b:Lcom/facebook/apache/http/auth/AuthScope;

    .line 65
    iput-object v0, p0, Lcom/facebook/apache/http/auth/AuthState;->c:Lcom/facebook/apache/http/auth/Credentials;

    .line 66
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/auth/AuthScheme;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/facebook/apache/http/auth/AuthState;->a()V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/auth/AuthState;->a:Lcom/facebook/apache/http/auth/AuthScheme;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/apache/http/auth/AuthScope;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/facebook/apache/http/auth/AuthState;->b:Lcom/facebook/apache/http/auth/AuthScope;

    .line 131
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/auth/Credentials;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/facebook/apache/http/auth/AuthState;->c:Lcom/facebook/apache/http/auth/Credentials;

    .line 112
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/apache/http/auth/AuthState;->a:Lcom/facebook/apache/http/auth/AuthScheme;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/facebook/apache/http/auth/AuthScheme;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/apache/http/auth/AuthState;->a:Lcom/facebook/apache/http/auth/AuthScheme;

    return-object v0
.end method

.method public final d()Lcom/facebook/apache/http/auth/Credentials;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/apache/http/auth/AuthState;->c:Lcom/facebook/apache/http/auth/Credentials;

    return-object v0
.end method

.method public final e()Lcom/facebook/apache/http/auth/AuthScope;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/apache/http/auth/AuthState;->b:Lcom/facebook/apache/http/auth/AuthScope;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v0, "auth scope ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v0, p0, Lcom/facebook/apache/http/auth/AuthState;->b:Lcom/facebook/apache/http/auth/AuthScope;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    const-string v0, "]; credentials set ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v0, p0, Lcom/facebook/apache/http/auth/AuthState;->c:Lcom/facebook/apache/http/auth/Credentials;

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
