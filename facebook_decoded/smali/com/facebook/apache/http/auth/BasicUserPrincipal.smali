.class public final Lcom/facebook/apache/http/auth/BasicUserPrincipal;
.super Ljava/lang/Object;
.source "BasicUserPrincipal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 69
    if-ne p0, p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    instance-of v1, p1, Lcom/facebook/apache/http/auth/BasicUserPrincipal;

    if-eqz v1, :cond_2

    .line 71
    check-cast p1, Lcom/facebook/apache/http/auth/BasicUserPrincipal;

    .line 72
    iget-object v1, p0, Lcom/facebook/apache/http/auth/BasicUserPrincipal;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/apache/http/auth/BasicUserPrincipal;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/apache/http/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/apache/http/auth/BasicUserPrincipal;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 62
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/facebook/apache/http/auth/BasicUserPrincipal;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/apache/http/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 64
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v1, "[principal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/facebook/apache/http/auth/BasicUserPrincipal;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
