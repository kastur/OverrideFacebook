.class Lcom/facebook/katana/service/method/AuthLogin$LoginListener;
.super Ljava/lang/Object;
.source "AuthLogin.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ServiceOperationListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/method/AuthLogin;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/method/AuthLogin;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/katana/service/method/AuthLogin$LoginListener;->a:Lcom/facebook/katana/service/method/AuthLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/method/AuthLogin;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/method/AuthLogin$LoginListener;-><init>(Lcom/facebook/katana/service/method/AuthLogin;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    new-instance v0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;

    iget-object v1, p0, Lcom/facebook/katana/service/method/AuthLogin$LoginListener;->a:Lcom/facebook/katana/service/method/AuthLogin;

    iget-object v2, p0, Lcom/facebook/katana/service/method/AuthLogin$LoginListener;->a:Lcom/facebook/katana/service/method/AuthLogin;

    iget-object v2, v2, Lcom/facebook/katana/service/method/AuthLogin;->e:Ljava/util/Map;

    const-string v3, "email"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;-><init>(Lcom/facebook/katana/service/method/AuthLogin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->c()V

    .line 87
    return-void
.end method

.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    return-void
.end method

.method public final b(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin$LoginListener;->a:Lcom/facebook/katana/service/method/AuthLogin;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/AuthLogin;->h()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    .line 71
    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->machineID:Ljava/lang/String;

    .line 75
    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/facebook/katana/service/method/AuthLogin$LoginListener;->a:Lcom/facebook/katana/service/method/AuthLogin;

    iget-object v1, v1, Lcom/facebook/katana/service/method/AuthLogin;->o:Landroid/content/Context;

    const-string v2, "machine_id"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
