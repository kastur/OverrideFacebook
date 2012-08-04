.class public Lcom/facebook/apache/http/impl/auth/NTLMScheme;
.super Lcom/facebook/apache/http/impl/auth/AuthSchemeBase;
.source "NTLMScheme.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/http/impl/auth/NTLMEngine;

.field private b:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/impl/auth/NTLMEngine;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/auth/AuthSchemeBase;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NTLM engine may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->a:Lcom/facebook/apache/http/impl/auth/NTLMEngine;

    .line 72
    sget-object v0, Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;->UNINITIATED:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->b:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->c:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/auth/Credentials;Lcom/facebook/apache/http/HttpRequest;)Lcom/facebook/apache/http/Header;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 115
    :try_start_0
    check-cast p1, Lcom/facebook/apache/http/auth/NTCredentials;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->b:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    sget-object v1, Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->b:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    sget-object v1, Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->a:Lcom/facebook/apache/http/impl/auth/NTLMEngine;

    invoke-virtual {p1}, Lcom/facebook/apache/http/auth/NTCredentials;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/apache/http/auth/NTCredentials;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/impl/auth/NTLMEngine;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->b:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    .line 140
    :goto_0
    new-instance v1, Lcom/facebook/apache/http/util/CharArrayBuffer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 141
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    const-string v2, "Proxy-Authorization"

    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 146
    :goto_1
    const-string v2, ": NTLM "

    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/facebook/apache/http/message/BufferedHeader;

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/message/BufferedHeader;-><init>(Lcom/facebook/apache/http/util/CharArrayBuffer;)V

    return-object v0

    .line 119
    :catch_0
    move-exception v0

    new-instance v0, Lcom/facebook/apache/http/auth/InvalidCredentialsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Credentials cannot be used for NTLM authentication: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->b:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    sget-object v1, Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_2

    .line 130
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->a:Lcom/facebook/apache/http/impl/auth/NTLMEngine;

    invoke-virtual {p1}, Lcom/facebook/apache/http/auth/NTCredentials;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/apache/http/auth/NTCredentials;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/apache/http/auth/NTCredentials;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/apache/http/auth/NTCredentials;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->c:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/facebook/apache/http/impl/auth/NTLMEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->b:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    goto :goto_0

    .line 138
    :cond_2
    new-instance v0, Lcom/facebook/apache/http/auth/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->b:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_3
    const-string v2, "Authorization"

    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "ntlm"

    return-object v0
.end method

.method protected final a(Lcom/facebook/apache/http/util/CharArrayBuffer;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-virtual {p1, p2, p3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->b:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    sget-object v1, Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;->UNINITIATED:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_0

    .line 101
    sget-object v0, Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->b:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    .line 105
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->c:Ljava/lang/String;

    .line 110
    :goto_1
    return-void

    .line 103
    :cond_0
    sget-object v0, Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->b:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    goto :goto_0

    .line 107
    :cond_1
    sget-object v1, Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->b:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    .line 108
    iput-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->b:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    sget-object v1, Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;->b:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    sget-object v1, Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lcom/facebook/apache/http/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
