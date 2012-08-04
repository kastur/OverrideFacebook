.class Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;
.super Lcom/facebook/katana/UserTask;
.source "AuthLogin.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Exception;

.field private synthetic e:Lcom/facebook/katana/service/method/AuthLogin;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/service/method/AuthLogin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->e:Lcom/facebook/katana/service/method/AuthLogin;

    .line 114
    sget-object v0, Lcom/facebook/katana/service/method/ServiceOperation;->n:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/facebook/katana/UserTask;-><init>(Landroid/os/Handler;)V

    .line 116
    iput-object p2, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->a:Ljava/lang/String;

    .line 117
    iput p3, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->b:I

    .line 118
    iput-object p4, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->c:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->d:Ljava/lang/Exception;

    .line 120
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 125
    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->e:Lcom/facebook/katana/service/method/AuthLogin;

    iget-object v1, v1, Lcom/facebook/katana/service/method/AuthLogin;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/katana/provider/UserValuesManager;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_0

    .line 131
    invoke-static {v1}, Lcom/facebook/katana/model/FacebookSessionInfo;->a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    .line 133
    iget-object v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    .line 134
    if-eqz v1, :cond_0

    .line 135
    iget-object v2, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 142
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->e:Lcom/facebook/katana/service/method/AuthLogin;

    iget-object v0, v0, Lcom/facebook/katana/service/method/AuthLogin;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/provider/UserValuesManager;->g(Landroid/content/Context;)V

    .line 144
    iget-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->e:Lcom/facebook/katana/service/method/AuthLogin;

    iget-object v0, v0, Lcom/facebook/katana/service/method/AuthLogin;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->b(Landroid/content/Context;)V

    .line 146
    iget-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->e:Lcom/facebook/katana/service/method/AuthLogin;

    iget-object v0, v0, Lcom/facebook/katana/service/method/AuthLogin;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    :cond_1
    return-void

    .line 135
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected final b()V
    .locals 5

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->e:Lcom/facebook/katana/service/method/AuthLogin;

    invoke-static {v0}, Lcom/facebook/katana/service/method/AuthLogin;->a(Lcom/facebook/katana/service/method/AuthLogin;)Lcom/facebook/katana/service/method/ServiceOperationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->e:Lcom/facebook/katana/service/method/AuthLogin;

    iget v2, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->b:I

    iget-object v3, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/katana/service/method/AuthLogin$ClearAccountDataTask;->d:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 154
    return-void
.end method
