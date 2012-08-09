.class public abstract Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "AbstractGraphQLApiMethod.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# static fields
.field protected static a:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 58
    invoke-static {p2}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 59
    invoke-static {p4}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Z)V

    .line 60
    iget-object v0, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->e:Ljava/util/Map;

    const-string v1, "access_token"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->e:Ljava/util/Map;

    const-string v1, "q"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-static {p0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    const-string v1, ".before(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    invoke-static {p1}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    const-string v1, ".after(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_1
    if-ltz p2, :cond_2

    .line 161
    const-string v1, ".first(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 128
    sget-object v0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 132
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->a:Ljava/lang/String;

    .line 134
    :cond_0
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 97
    iget-object v0, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->k:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    .line 74
    const-string v1, "method"

    const-string v2, "get"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {v0}, Lcom/facebook/katana/util/URLQueryBuilder;->a(Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    new-instance v0, Lcom/facebook/katana/net/HttpOperation;

    iget-object v1, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->d:Ljava/lang/String;

    const-string v4, "application/x-www-form-urlencoded"

    iget-object v5, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/net/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V

    iput-object v0, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->l:Lcom/facebook/katana/net/HttpOperation;

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->l:Lcom/facebook/katana/net/HttpOperation;

    invoke-virtual {v0}, Lcom/facebook/katana/net/HttpOperation;->start()V

    .line 92
    :cond_0
    :goto_1
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->k:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    new-instance v0, Lcom/facebook/katana/net/HttpOperation;

    iget-object v1, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->o:Landroid/content/Context;

    sget-object v2, Lcom/facebook/katana/net/HttpOperation$Method;->GET:Lcom/facebook/katana/net/HttpOperation$Method;

    invoke-direct {p0}, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/net/HttpOperation;-><init>(Landroid/content/Context;Lcom/facebook/katana/net/HttpOperation$Method;Ljava/lang/String;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V

    iput-object v0, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->l:Lcom/facebook/katana/net/HttpOperation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    sget-object v1, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    iget-object v1, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3, v0}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 83
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported HTTP method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/api/gql/AbstractGraphQLApiMethod;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
