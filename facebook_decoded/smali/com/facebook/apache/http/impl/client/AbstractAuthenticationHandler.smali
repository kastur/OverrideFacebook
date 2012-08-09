.class public abstract Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;
.super Ljava/lang/Object;
.source "AbstractAuthenticationHandler.java"

# interfaces
.implements Lcom/facebook/apache/http/client/AuthenticationHandler;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "negotiate"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NTLM"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Digest"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Basic"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->a:Lcom/facebook/apache/commons/logging/Log;

    .line 75
    return-void
.end method

.method private static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    sget-object v0, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->b:Ljava/util/List;

    return-object v0
.end method

.method protected static a([Lcom/facebook/apache/http/Header;)Ljava/util/Map;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 80
    new-instance v6, Ljava/util/HashMap;

    array-length v0, p0

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 81
    array-length v7, p0

    move v5, v2

    :goto_0
    if-ge v5, v7, :cond_4

    aget-object v1, p0, v5

    .line 84
    instance-of v0, v1, Lcom/facebook/apache/http/FormattedHeader;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 85
    check-cast v0, Lcom/facebook/apache/http/FormattedHeader;

    invoke-interface {v0}, Lcom/facebook/apache/http/FormattedHeader;->a()Lcom/facebook/apache/http/util/CharArrayBuffer;

    move-result-object v3

    move-object v0, v1

    .line 86
    check-cast v0, Lcom/facebook/apache/http/FormattedHeader;

    invoke-interface {v0}, Lcom/facebook/apache/http/FormattedHeader;->b()I

    move-result v0

    .line 96
    :goto_1
    invoke-virtual {v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {v3, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(I)C

    move-result v4

    invoke-static {v4}, Lcom/facebook/apache/http/protocol/HTTP;->a(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_0
    invoke-interface {v1}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v3

    .line 89
    if-nez v3, :cond_1

    .line 90
    new-instance v0, Lcom/facebook/apache/http/auth/MalformedChallengeException;

    const-string v1, "Header value is null"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    new-instance v0, Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 93
    invoke-virtual {v0, v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    move-object v3, v0

    move v0, v2

    .line 94
    goto :goto_1

    :cond_2
    move v4, v0

    .line 100
    :goto_2
    invoke-virtual {v3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v8

    if-ge v4, v8, :cond_3

    invoke-virtual {v3, v4}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(I)C

    move-result v8

    invoke-static {v8}, Lcom/facebook/apache/http/protocol/HTTP;->a(C)Z

    move-result v8

    if-nez v8, :cond_3

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 104
    :cond_3
    invoke-virtual {v3, v0, v4}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 105
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 107
    :cond_4
    return-object v6
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/auth/AuthScheme;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/apache/http/Header;",
            ">;",
            "Lcom/facebook/apache/http/HttpResponse;",
            "Lcom/facebook/apache/http/protocol/HttpContext;",
            ")",
            "Lcom/facebook/apache/http/auth/AuthScheme;"
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "http.authscheme-registry"

    invoke-interface {p3, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/auth/AuthSchemeRegistry;

    .line 141
    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AuthScheme registry not set in HTTP context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Ljava/util/List;

    move-result-object v1

    .line 146
    if-nez v1, :cond_1

    .line 147
    sget-object v1, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->b:Ljava/util/List;

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v2}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Authentication schemes in the order of preference: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 155
    :cond_2
    const/4 v3, 0x0

    .line 156
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/apache/http/Header;

    .line 159
    if-eqz v2, :cond_5

    .line 160
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v2}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " authentication scheme selected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 164
    :cond_4
    :try_start_0
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpResponse;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/auth/AuthSchemeRegistry;->a(Ljava/lang/String;Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/auth/AuthScheme;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :goto_1
    if-nez v0, :cond_6

    .line 181
    new-instance v0, Lcom/facebook/apache/http/auth/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to respond to any of these challenges: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v2}, Lcom/facebook/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Authentication scheme "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " not supported"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/facebook/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 173
    :cond_5
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v2}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Challenge for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " authentication scheme not available"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 185
    :cond_6
    return-object v0

    :cond_7
    move-object v0, v3

    goto :goto_1
.end method

.method protected a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/apache/http/HttpResponse;",
            "Lcom/facebook/apache/http/protocol/HttpContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
