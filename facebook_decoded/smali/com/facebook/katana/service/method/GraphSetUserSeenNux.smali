.class public Lcom/facebook/katana/service/method/GraphSetUserSeenNux;
.super Lcom/facebook/katana/service/method/GraphApiMethod;
.source "GraphSetUserSeenNux.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/facebook/katana/service/method/GraphSetUserSeenNux;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/features/UserSeenNux$Project;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iget-wide v0, p5, Lcom/facebook/katana/features/UserSeenNux$Project;->projectId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/GraphApiMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "me/seen_nuxes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/features/UserSeenNux$Project;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    const-string v0, "POST"

    invoke-static {p0, p1, v0}, Lcom/facebook/katana/service/method/GraphSetUserSeenNux;->a(Landroid/content/Context;Lcom/facebook/katana/features/UserSeenNux$Project;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/katana/features/UserSeenNux$Project;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x3e8

    .line 33
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v7

    .line 34
    if-nez v7, :cond_0

    .line 40
    :goto_0
    return-object v6

    .line 37
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/katana/features/UserSeenNux;->b(Landroid/content/Context;Lcom/facebook/katana/features/UserSeenNux$Project;)V

    .line 38
    new-instance v0, Lcom/facebook/katana/service/method/GraphSetUserSeenNux;

    invoke-virtual {v7}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v2, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->oAuthToken:Ljava/lang/String;

    invoke-static {p0}, Lcom/facebook/katana/service/method/GraphSetUserSeenNux;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/GraphSetUserSeenNux;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/features/UserSeenNux$Project;)V

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move v4, v8

    move v5, v8

    .line 40
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
