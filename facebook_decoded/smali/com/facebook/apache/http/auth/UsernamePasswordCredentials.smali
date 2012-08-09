.class public Lcom/facebook/apache/http/auth/UsernamePasswordCredentials;
.super Ljava/lang/Object;
.source "UsernamePasswordCredentials.java"

# interfaces
.implements Lcom/facebook/apache/http/auth/Credentials;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/http/auth/BasicUserPrincipal;

.field private final b:Ljava/lang/String;


# virtual methods
.method public final a()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/apache/http/auth/UsernamePasswordCredentials;->a:Lcom/facebook/apache/http/auth/BasicUserPrincipal;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/apache/http/auth/UsernamePasswordCredentials;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 106
    if-ne p0, p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    instance-of v1, p1, Lcom/facebook/apache/http/auth/UsernamePasswordCredentials;

    if-eqz v1, :cond_2

    .line 108
    check-cast p1, Lcom/facebook/apache/http/auth/UsernamePasswordCredentials;

    .line 109
    iget-object v1, p0, Lcom/facebook/apache/http/auth/UsernamePasswordCredentials;->a:Lcom/facebook/apache/http/auth/BasicUserPrincipal;

    iget-object v2, p1, Lcom/facebook/apache/http/auth/UsernamePasswordCredentials;->a:Lcom/facebook/apache/http/auth/BasicUserPrincipal;

    invoke-static {v1, v2}, Lcom/facebook/apache/http/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/apache/http/auth/UsernamePasswordCredentials;->a:Lcom/facebook/apache/http/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lcom/facebook/apache/http/auth/BasicUserPrincipal;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/apache/http/auth/UsernamePasswordCredentials;->a:Lcom/facebook/apache/http/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lcom/facebook/apache/http/auth/BasicUserPrincipal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
