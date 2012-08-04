.class public Lcom/facebook/apache/http/auth/NTCredentials;
.super Ljava/lang/Object;
.source "NTCredentials.java"

# interfaces
.implements Lcom/facebook/apache/http/auth/Credentials;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/http/auth/NTUserPrincipal;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# virtual methods
.method public final a()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/apache/http/auth/NTCredentials;->a:Lcom/facebook/apache/http/auth/NTUserPrincipal;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/apache/http/auth/NTCredentials;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/apache/http/auth/NTCredentials;->a:Lcom/facebook/apache/http/auth/NTUserPrincipal;

    invoke-virtual {v0}, Lcom/facebook/apache/http/auth/NTUserPrincipal;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/apache/http/auth/NTCredentials;->a:Lcom/facebook/apache/http/auth/NTUserPrincipal;

    invoke-virtual {v0}, Lcom/facebook/apache/http/auth/NTUserPrincipal;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/apache/http/auth/NTCredentials;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 157
    if-ne p0, p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    instance-of v1, p1, Lcom/facebook/apache/http/auth/NTCredentials;

    if-eqz v1, :cond_2

    .line 159
    check-cast p1, Lcom/facebook/apache/http/auth/NTCredentials;

    .line 160
    iget-object v1, p0, Lcom/facebook/apache/http/auth/NTCredentials;->a:Lcom/facebook/apache/http/auth/NTUserPrincipal;

    iget-object v2, p1, Lcom/facebook/apache/http/auth/NTCredentials;->a:Lcom/facebook/apache/http/auth/NTUserPrincipal;

    invoke-static {v1, v2}, Lcom/facebook/apache/http/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/apache/http/auth/NTCredentials;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/apache/http/auth/NTCredentials;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/apache/http/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 149
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/facebook/apache/http/auth/NTCredentials;->a:Lcom/facebook/apache/http/auth/NTUserPrincipal;

    invoke-static {v0, v1}, Lcom/facebook/apache/http/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/facebook/apache/http/auth/NTCredentials;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/apache/http/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 152
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const-string v1, "[principal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lcom/facebook/apache/http/auth/NTCredentials;->a:Lcom/facebook/apache/http/auth/NTUserPrincipal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "][workstation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lcom/facebook/apache/http/auth/NTCredentials;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
