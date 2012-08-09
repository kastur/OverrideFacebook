.class public Lcom/facebook/katana/service/method/CodeGeneratorGetSecret;
.super Lcom/facebook/katana/service/method/GraphApiMethod;
.source "CodeGeneratorGetSecret.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private a:Lcom/facebook/katana/model/CodeGeneratorGetSecretResponse;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const-string v3, "POST"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/GraphApiMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/facebook/katana/service/method/CodeGeneratorGetSecret;->e:Ljava/util/Map;

    const-string v1, "machine_id"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v7

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 41
    new-instance v0, Lcom/facebook/katana/service/method/CodeGeneratorGetSecret;

    invoke-virtual {v7}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v2, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->oAuthToken:Ljava/lang/String;

    const-string v3, "loginapprovalskeys"

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/CodeGeneratorGetSecret;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/16 v4, 0x3e9

    const/16 v5, 0x3fc

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 62
    iget-object v2, p0, Lcom/facebook/katana/service/method/CodeGeneratorGetSecret;->a:Lcom/facebook/katana/model/CodeGeneratorGetSecretResponse;

    invoke-virtual {v0, p5, p7, v2}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/Exception;Lcom/facebook/katana/model/CodeGeneratorGetSecretResponse;)V

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-static {p1}, Lcom/facebook/katana/model/CodeGeneratorGetSecretResponse;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/model/CodeGeneratorGetSecretResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/CodeGeneratorGetSecret;->a:Lcom/facebook/katana/model/CodeGeneratorGetSecretResponse;

    .line 71
    return-void
.end method
