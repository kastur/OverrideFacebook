.class public Lcom/facebook/apache/http/auth/NTUserPrincipal;
.super Ljava/lang/Object;
.source "NTUserPrincipal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/apache/http/auth/NTUserPrincipal;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/apache/http/auth/NTUserPrincipal;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 97
    if-ne p0, p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    instance-of v1, p1, Lcom/facebook/apache/http/auth/NTUserPrincipal;

    if-eqz v1, :cond_2

    .line 99
    check-cast p1, Lcom/facebook/apache/http/auth/NTUserPrincipal;

    .line 100
    iget-object v1, p0, Lcom/facebook/apache/http/auth/NTUserPrincipal;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/apache/http/auth/NTUserPrincipal;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/apache/http/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/apache/http/auth/NTUserPrincipal;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/apache/http/auth/NTUserPrincipal;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/apache/http/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/apache/http/auth/NTUserPrincipal;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 89
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/facebook/apache/http/auth/NTUserPrincipal;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/apache/http/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/facebook/apache/http/auth/NTUserPrincipal;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/apache/http/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 92
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/apache/http/auth/NTUserPrincipal;->c:Ljava/lang/String;

    return-object v0
.end method
