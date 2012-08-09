.class public Lcom/facebook/katana/service/method/GraphApiMethod;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "GraphApiMethod.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/apache/http/entity/mime/content/ContentBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/facebook/katana/service/method/GraphApiMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/service/method/GraphApiMethod;->a:Ljava/lang/String;

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

    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->f:Ljava/util/Map;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 46
    iget-object v0, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->e:Ljava/util/Map;

    const-string v1, "access_token"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->f:Ljava/util/Map;

    .line 48
    return-void
.end method


# virtual methods
.method protected final a(ZZ)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    if-eqz p2, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/GraphApiMethod;->d()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/facebook/katana/service/method/GraphApiMethod;->a:Ljava/lang/String;

    if-eq v1, v0, :cond_0

    .line 129
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v2, Lcom/facebook/katana/service/method/GraphApiMethod;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 131
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    const-string v1, "We always should have something in the query (e.g., the signature)"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->d:Ljava/lang/String;

    .line 148
    :goto_1
    return-object v0

    .line 137
    :cond_0
    sget-object v0, Lcom/facebook/katana/service/method/GraphApiMethod;->a:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_1
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 148
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->k:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lcom/facebook/katana/net/HttpOperation;

    iget-object v1, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->o:Landroid/content/Context;

    sget-object v2, Lcom/facebook/katana/net/HttpOperation$Method;->GET:Lcom/facebook/katana/net/HttpOperation$Method;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/facebook/katana/service/method/GraphApiMethod;->a(ZZ)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/net/HttpOperation;-><init>(Landroid/content/Context;Lcom/facebook/katana/net/HttpOperation$Method;Ljava/lang/String;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->l:Lcom/facebook/katana/net/HttpOperation;

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->l:Lcom/facebook/katana/net/HttpOperation;

    invoke-virtual {v0}, Lcom/facebook/katana/net/HttpOperation;->start()V

    .line 100
    :cond_0
    :goto_1
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->k:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    new-instance v0, Lcom/facebook/katana/net/HttpOperation;

    iget-object v1, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->o:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/facebook/katana/service/method/GraphApiMethod;->a(ZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->f:Ljava/util/Map;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x4000

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v5, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/net/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->l:Lcom/facebook/katana/net/HttpOperation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    iget-object v1, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v7, v2, v0}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 83
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->k:Ljava/lang/String;

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->e:Ljava/util/Map;

    const-string v1, "method"

    const-string v2, "delete"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v0, Lcom/facebook/katana/net/HttpOperation;

    iget-object v1, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->o:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/facebook/katana/service/method/GraphApiMethod;->a(ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/katana/service/method/GraphApiMethod;->d()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/x-www-form-urlencoded"

    iget-object v5, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/net/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->l:Lcom/facebook/katana/net/HttpOperation;

    goto :goto_0

    .line 91
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown HTTP method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method protected final d()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/katana/service/method/GraphApiMethod;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/facebook/katana/util/URLQueryBuilder;->a(Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
